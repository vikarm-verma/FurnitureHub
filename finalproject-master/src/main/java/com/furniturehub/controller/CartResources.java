package com.furniturehub.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.furniturehub.model.Cart;
import com.furniturehub.model.CartItem;
import com.furniturehub.model.Customer;
import com.furniturehub.model.Product;
import com.furniturehub.service.CartItemService;
import com.furniturehub.service.CartService;
import com.furniturehub.service.CustomerService;
import com.furniturehub.service.ProductService;

//this controller is responsible for whole working procedure of cart

@Controller
@RequestMapping("/rest/cart")
public class CartResources {

	@Autowired
	private CartService cartService;

	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private ProductService productService;

	@RequestMapping("/{cartId}")
	public @ResponseBody Cart getCartById(@PathVariable(value = "cartId") int cartId) {
		return cartService.getCartById(cartId);
	}

	@RequestMapping(value = "/add/{productId}", method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addItem(@PathVariable(value = "productId") int productId, @AuthenticationPrincipal User activeUser) {
		Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
		Cart cart = customer.getCart();
		Product product = productService.getProductById(productId);
		List<CartItem> cartItems = cart.getCartItems();

		/*
		 * here matching productid of cart with actual product id and accordingly adding
		 * quantity by one at the same time decreasing quantity from stock by one which
		 * is reflecting in product table
		 */

		for (int i = 0; i < cartItems.size(); i++) {
			if (product.getProductId() == cartItems.get(i).getProduct().getProductId()) {
				CartItem cartItem = cartItems.get(i);
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				product.setUnitInStock(product.getUnitInStock() - 1);
				cartItem.setTotalPrice(product.getProductPrice() * cartItem.getQuantity());
				productService.addProduct(product);
				cartItemService.addCartItem(cartItem);

				return;
			}
		}

		/* when first time product will add to cart this chunk will invoke */
		CartItem cartItem = new CartItem();
		cartItem.setProduct(product);
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(product.getProductPrice() * cartItem.getQuantity());
		product.setUnitInStock(product.getUnitInStock() - 1);
		productService.addProduct(product);
		cartItem.setCart(cart);
		cartItemService.addCartItem(cartItem);
	}

	/*
	 * this will remove items from cart according to user requirement, at the same
	 * time unit will get increased by 1 in product list unit in stock
	 */
	@RequestMapping(value = "/remove/{productId}", method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeItem(@PathVariable(value = "productId") int productId) {
		Product product = productService.getProductById(productId);
		CartItem cartItem = cartItemService.getCartItemByProductId(productId);
		product.setUnitInStock(product.getUnitInStock() + cartItem.getQuantity());
		productService.addProduct(product);
		cartItemService.removeCartItem(cartItem);
	}

	/*
	 * this will clear whole cart in one go ,while clearing it will revert back all
	 * product quantities to their respective product
	 */
	@RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void clearCart(@PathVariable(value = "cartId") int cartId) {
		System.out.println("in clear cart method");
		Cart cart = cartService.getCartById(cartId);

		List<CartItem> i = cart.getCartItems();
		Iterator<CartItem> itr = i.iterator();
		while (itr.hasNext()) {
			CartItem c = itr.next();

			Product product = productService.getProductById(c.getProduct().getProductId());
			product.setUnitInStock(product.getUnitInStock() + c.getQuantity());
			productService.addProduct(product);
			System.out.println(c.toString());
		}
		cartItemService.removeAllCartItems(cart);
		System.out.println("cart items removed");
	}

	/* if any bad request comes from client side */
	@ExceptionHandler(IllegalArgumentException.class)
	@ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload")
	public void handleClientErrors(Exception ex) {
	}

	@ExceptionHandler(Exception.class)
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error")
	public void handleServerErrors(Exception ex) {

	}

}
