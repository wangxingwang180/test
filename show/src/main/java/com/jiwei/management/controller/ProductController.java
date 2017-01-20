package com.jiwei.management.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiwei.management.model.Product;
import com.jiwei.management.service.ProductService;

@Controller
@RequestMapping("product")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/get" )
	public String get(ModelMap model){
		List<Product> prodects = new ArrayList<Product>();
		prodects = productService.selectByStatus();
		String[] strs = new String[prodects.size()];
		for (int i = 0; i < prodects.size(); i++) {
			strs[i] = prodects.get(i).getInfo();
		}
		model.addAttribute("product",strs);
		return "info";
	}
}
