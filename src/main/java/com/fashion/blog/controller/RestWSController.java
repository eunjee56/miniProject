package com.fashion.blog.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fashion.blog.service.FashionBoardService;
import com.fashion.blog.service.SignUpService;

@RestController
public class RestWSController {

	@Autowired
	private SignUpService signupService;
	
	@Autowired
	private FashionBoardService fashionService;

	@RequestMapping(value = "/ws/{action}", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json")
	public Object actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			HttpServletRequest request) {
		Object resultObject = new Object();
		List<Object> resultList = new ArrayList<Object>();

		if ("idcheck".equalsIgnoreCase(action)) {

			String id = (String) paramMap.get("MEMBER_ID");
			Object result = signupService.checkID(paramMap);
			return result;
		}
		
		if ("fashioncategoryList".equalsIgnoreCase(action)) {
			resultList = (List<Object>) fashionService.getCategoryList(paramMap);
			return resultList;
		}

		return resultObject;
	}
}
