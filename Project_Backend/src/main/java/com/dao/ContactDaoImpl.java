package com.dao;

import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Contact;

@Repository
public class ContactDaoImpl implements ContactDao {
	@Autowired
	private SessionFactory sessionFactory;
	public  ContactDaoImpl(){
		System.out.println("ContactDaoImpl object is created");
	}
	@Transactional
	public void saveContact(Contact contact) {
Session session=sessionFactory.getCurrentSession();
		
		
		session.save(contact);
		
	}
	@Transactional
	public List<Contact> getAllContacts() {
		Session session=sessionFactory.getCurrentSession();
    	Query query=session.createQuery("from Contact");
    	List<Contact>contacts=query.list();
    	return contacts;
	}
}