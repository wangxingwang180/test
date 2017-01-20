package com.jiwei.management.model;

import java.util.Map;

public class SomeInfo {

	private int status;
	private String name;
	private Map<String,String> sfMap;
	public Map<String, String> getSfMap() {
		return sfMap;
	}
	public void setSfMap(Map<String, String> sfMap) {
		this.sfMap = sfMap;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
