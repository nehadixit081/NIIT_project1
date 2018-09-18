package com.dao;

import java.util.List;

import com.model.Contact;


public interface ContactDao {
 void saveContact(Contact contact);
	 List<Contact>getAllContacts();
	 
}
