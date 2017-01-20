package com.jiwei.management.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiwei.management.dao.ProductMapper;
import com.jiwei.management.model.Product;

@Service
public class ProductService {

	@Autowired
	private ProductMapper productMapper;
	
	public List<Product> selectByStatus() {
		return productMapper.selectByStatus();
	}
}
