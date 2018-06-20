package com.fashion.blog.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class RestWSController {

	@Autowired
	private FashionBoardController fashionService;


	@RequestMapping(value = "/ws/{action}", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json")
	public Object actionMethod(Map<String, Object> paramMap, @PathVariable String action) {
		Object resultObject = new Object();
		if("fashionBoardList".equalsIgnoreCase(action)) {
			
		
			
		} else if ("fashionBoardRead".equalsIgnoreCase(action)) {
		
		} else if ("fashionBoardEdit".equalsIgnoreCase(action)) {
			
     	}


		return resultObject;
	}
}
