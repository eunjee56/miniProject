package com.fashion.blog.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fashion.blog.service.FashionBoardService;


@RestController
public class RestWSController {

	@Autowired
	private FashionBoardService fashionService;


	@RequestMapping(value = "/ws/{action}", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json")
	public Object actionMethod(Map<String, Object> paramMap, @PathVariable String action) {
		Object resultObject = new Object();
		List<Object> resultList = new ArrayList<Object>();
		if("fashioncategoryList".equalsIgnoreCase(action)) {
			resultList = (List<Object>) fashionService.getCategoryList(paramMap);
			return resultList;
		} else if ("fashionBoardRead".equalsIgnoreCase(action)) {
		
		}


		return resultObject;
	}
}
