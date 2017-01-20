package com.jiwei.management.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jiwei.management.handler.EhCacheServiceHandler;
import com.jiwei.management.model.SomeInfo;
import com.jiwei.management.model.User;
import com.jiwei.management.service.UserService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserService userService;
	
	@Autowired
	private EhCacheServiceHandler ehCacheServiceHandler;

	@RequestMapping( value = "showHightChart")
	public String showHightChart(String page) {
		
		return page;
	}
	
	@RequestMapping("/showUser")
	public String toIndex(HttpServletRequest request,Model model){
		int userId = Integer.parseInt(request.getParameter("id")); 
		User user = this.userService.getUserById(userId);
		ehCacheServiceHandler.putCache("myCache", 5);
		model.addAttribute("user", user);
		return "showUser";
	}
	
	@RequestMapping("/getCache")
	public String getCache(Model model) {
		model.addAttribute("cache",ehCacheServiceHandler.getCache("myCache"));
		return "showCache";
	}
	
	@RequestMapping("/getCache2")
	@ResponseBody
	public String getCache2(Model model) {
		String string;
		try {
			string = ehCacheServiceHandler.getCache("myCache").toString();
		} catch (Exception e) {
			string = "过期";
		}
		return string;
	}
	
	@RequestMapping(value = "/test")
	public String test(HttpServletRequest request, SomeInfo someInfo, ModelMap model) {
		System.out.println(someInfo.getStatus()+"  "+ request.getParameter("status"));
		
		Map<String, String> map = new TreeMap<String, String>();
		map.put("1", "足球");
		map.put("3", "篮球");
		map.put("2","乒乓球");
		someInfo.setSfMap(map);
//		someInfo.setStatus(2);
		model.addAttribute("map",someInfo);
		return "sf";
	}
	
	@RequestMapping(value="jilian.do")
	public String goJiLian(ModelMap model) {
//		Map< String, String> map = new HashMap<String, String>();
//		map.put("1101", "福建");
//		map.put("1102", "浙江");
//		map.put("1103", "北京");
//		map.put("1104", "广东");
		List<String> list = new ArrayList<String>();
		list.add("福建");
		list.add("浙江");
		list.add("北京");
		list.add("广东");
//		model.addAttribute("province",map.values());
		model.addAttribute("province",list);
		return "jilian";
	}
	
	@RequestMapping(value="changeCity")
	public @ResponseBody void changeCity(String pro,ModelMap model, HttpServletResponse response){
//		Map<String, String> map = new HashMap<String, String>();
		List<String> list = new ArrayList<String>();
		if("福建".equals(pro)) {
//			map.put("2101", "厦门");
//			map.put("2102", "福州");
			list.add("厦门");
			list.add("福州");
		} else if ("浙江".equals(pro)) {
//			map.put("3101", "金华");
//			map.put("3102", "温州");
			list.add("金华");
			list.add("温州");
		} else if ("北京".equals(pro)) {
//			map.put("4101", "北京");
//			map.put("4102", "朝阳");
			list.add("北京");
			list.add("朝阳");
		} else if ("广东".equals(pro)) {
//			map.put("5101", "广州");
//			map.put("5102", "深圳");
			list.add("广州");
			list.add("深圳");
		}
//		model.addAttribute("city",map.values());
//		String str = JSONArray.fromObject(map.values()).toString();
		String str = JSONArray.fromObject(list).toString();
		try {
			response.setContentType("text/html;charset=utf-8;");
			response.getWriter().write(str);
		} catch (IOException e) {
			System.out.println("发送请求出错");
		} 
		System.out.println(list);
	}
	
	@RequestMapping(value="submitInfo")
	public @ResponseBody String submitInfo(ModelMap model, String pro, String city, HttpServletResponse response) {
//		System.out.println(pro + "省" + city + "市");
		String s = pro + "省" + city + "市";
//		String str = JSONObject.fromObject(s).toString();
//		try {
//			response.setContentType("text/html;charset=utf-8;");
//			response.getWriter().write(str);
//		} catch (IOException e) {
//			System.out.println("发送请求出错");
//		} 
		return s;
	}
	
	@RequestMapping(value = "tijiao")
	public @ResponseBody String tijiao(HttpServletRequest request) {
		String name = request.getParameter("name");
		System.out.println("获取用户名：" + name);
		return name;
	}
}
