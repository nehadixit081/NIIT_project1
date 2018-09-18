package com.dao;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Product;


@Repository(value= "productdao")
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	private  SessionFactory sessionFactory;
	public ProductDaoImpl(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public boolean save(Product product) {
		try
       {
    sessionFactory.getCurrentSession().save(product);
       return true;
       } catch(HibernateException e)
		{
          e.printStackTrace();
       return false;
       }
    }
	
	
	@Transactional
	public boolean update(Product product) {
		try {

			sessionFactory.getCurrentSession().update(product);

			return
			true;

			} catch (Exception e) {

			e.printStackTrace();

			return false;
           }
		
	}
	
	@Transactional
	public List<Product> list() {
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
		}
	
		
	
	
	@Transactional
	public boolean delete(int id) {
		try {

			sessionFactory.getCurrentSession().delete(getProductBYID(id));

			return
			true;

			} catch (Exception e) {


			e.printStackTrace();

			return false;

			}
}
	
	@Transactional
	public boolean delete(Product product) {
		try {

			sessionFactory.getCurrentSession().delete(product);

			return
			true;

			} catch (Exception e) {

			e.printStackTrace();

			return false;
        }
	}
	
	@Transactional
	public Product getProductBYID(int id) {
		return (Product) sessionFactory.getCurrentSession().get(Product.class,id);
	}
	
	@Transactional
	public Product getProductBYNAME(String name) {
		return (Product)sessionFactory.getCurrentSession().createQuery("from Product where name ='"+name+"'").uniqueResult();
	}
	
	@Transactional
	public Product get(String id) {
		String hql ="from Product where id ="+"'"+id+"'";
    	Query query =sessionFactory.getCurrentSession().createQuery(hql);
    	List<Product>list =query.list();
    	if(list == null){
    		return null;
    	}
    	else{
    		return list.get(0);
    	}
	}

	@Transactional
	public List<Product> getAllProducts() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Product");
		List<Product>products=query.list();
		return products;
	}

	
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	