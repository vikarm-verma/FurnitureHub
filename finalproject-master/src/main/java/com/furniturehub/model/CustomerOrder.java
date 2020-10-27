package com.furniturehub.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.Valid;

import org.springframework.binding.validation.ValidationContext;





@Entity
public class CustomerOrder implements Serializable{


    private static final long serialVersionUID = -1546649310334411202L;

    @Id
    @GeneratedValue
    private int customerOrderId;

    @OneToOne
    @JoinColumn(name = "cartId")
    @Valid
    private Cart cart;

    @OneToOne
    @JoinColumn(name = "customerId")
    @Valid
    private Customer customer;

    @OneToOne
    @JoinColumn(name = "billingAddressId")
    @Valid
    private BillingAddress billingAddress;

    @OneToOne
    @JoinColumn(name="shippingAddressId")
    @Valid
    private ShippingAddress shippingAddress;

    public int getCustomerOrderId() {
        return customerOrderId;
    }

    public void setCustomerOrderId(int customerOrderId) {
        this.customerOrderId = customerOrderId;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public BillingAddress getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(BillingAddress billingAddress) {
        this.billingAddress = billingAddress;
    }

    public ShippingAddress getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(ShippingAddress shippingAddress) {
        this.shippingAddress = shippingAddress;
    }
    
    public void modelValidation(ValidationContext context) {
    	//MessageContext messages = context.getMessageContext();
    	System.out.println("called method in customer order");
 
    }
    
    
} // The End of Class;
