package com.furniturehub.service;

import com.furniturehub.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
