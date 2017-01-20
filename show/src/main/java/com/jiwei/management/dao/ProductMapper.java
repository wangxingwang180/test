package com.jiwei.management.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jiwei.management.model.Product;

@Repository
public interface ProductMapper {
	public List<Product> selectByStatus();
}
