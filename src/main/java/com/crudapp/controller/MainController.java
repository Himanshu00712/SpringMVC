package com.crudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.crudapp.dao.ProductDao;
import com.crudapp.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping("/")
	public String home(Model m)
	{
		List<Product> products = productDao.getAllProduct();
		m.addAttribute("product", products);
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addProduct(Model m)
	{
		
		m.addAttribute("title", "Add Product");
		
		return "add_product_form";
	}
	
	@RequestMapping(value ="/handel-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request)
	{
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int id, HttpServletRequest request)
	{
		productDao.deleteProduct(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	
	@RequestMapping("/update/{productId}")
	public ModelAndView updateForm(@PathVariable("productId") int id)
	{
		
		ModelAndView modelandview = new ModelAndView();
		System.out.println("update id "+id);
		Product product = productDao.getProduct(id);
		
		modelandview.addObject("product", product);
		//return "update_form";
		modelandview.setViewName("update_form");
		return modelandview;
	}
	
}
