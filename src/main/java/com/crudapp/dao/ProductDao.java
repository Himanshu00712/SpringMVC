package com.crudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import com.crudapp.model.Product;

@Component
public class ProductDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);
		
	}

	
	
	public List<Product> getAllProduct()
	{
	List<Product> productList  =  this.hibernateTemplate.loadAll(Product.class);	
		return productList;
	}

	
	
	@Transactional
	public void deleteProduct(int id)
	{
		Product p = this.hibernateTemplate.load(Product.class, id);
		this.hibernateTemplate.delete(p);
	}
	
	
	
	public Product getProduct(int id)
	{
		return this.hibernateTemplate.get(Product.class, id);
		
	}
}


