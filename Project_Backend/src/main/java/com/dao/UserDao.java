package com.dao;

import java.util.List;


import com.model.User;

public interface UserDao {
	void saveUser(User user);
	 List<User>getAllUsers();
		

}
