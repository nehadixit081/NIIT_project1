package com.dao;






import org.hibernate.Query;
import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Authorities;
import com.model.Cart;
import com.model.Customer;
import com.model.User;

@Repository
public class CustomerDaoImpl  implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;
	public void registerCustomer(Customer customer) {
	
		User user=customer.getUser();
		user.setEnabled(true);
		String username=user.getUsername();
		
		Authorities authorities=new Authorities();
		authorities.setRole("ROLE USER");
		authorities.setUsername(username);
		
		Session session =sessionFactory.getCurrentSession();
		session.save(authorities);
		
		
		Cart cart=new Cart();
		//to set the value for customer_id in cart table
		cart.setCustomer(customer);
		//to set the value foe cart_id in customer table
		customer.setCart(cart);  //transient [all 5 objects]
		session.save(customer); // 5 insert queries [persistent]
	}
//detached
	public User validateUsername(String username) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User where username=?");
		query.setString(0, username);
		User user=(User)query.uniqueResult();
		//if query.uniqueResult  returns single Object[1 row] ,then username is duplicate
		//if query.uniqueResult returns null value[no rows],then username is unique
		return user;
	}
	public Customer validateEmail(String email) {
		Session session= sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Customer where email =?");
		query.setString(0, email);
		Customer customer=(Customer)query.uniqueResult();
		return customer;
	}
	public Customer getCustomerByUsername(String username) {
		Session session= sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Customer where user.username =?");
		query.setString(0, username);
		Customer customer=(Customer)query.uniqueResult();
		return customer ;
	}
}
