package com.dao;

import java.util.List;


import com.model.Product;


public interface ProductDao {
	public List<Product>list();

	 List<Product>getAllProducts();
	public boolean save(Product product);
	public boolean update(Product product);
	public boolean delete(int id);
	public boolean delete (Product product);
	public Product get(String id);
	public Product getProductBYID(int id);
	public Product getProductBYNAME(String name);

	
	

	
	
}
	