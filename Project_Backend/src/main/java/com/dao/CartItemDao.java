package com.dao;

import com.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	void removeCartItem(int cartItemId);
	public void removeAllCartItem(int cartId);
	void removeAllCartItems(int cartId);

}
