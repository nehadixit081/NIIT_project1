package com.dao;

import com.model.Customer;
import com.model.User;

public interface CustomerDao {
	
	void registerCustomer(Customer customer);
	User validateUsername(String username);
	Customer validateEmail(String email);
	Customer getCustomerByUsername(String username);

}
