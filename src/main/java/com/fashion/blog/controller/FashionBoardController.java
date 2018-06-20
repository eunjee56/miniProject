package com.fashion.blog.controller;


import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fashion.blog.service.FashionBoardService;



@Controller
public class FashionBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(FashionBoardController.class);
	
	@Autowired
	FashionBoardService fashionService;

	@RequestMapping(value = "/fashionBoard/{action}",method = {RequestMethod.GET, RequestMethod.POST} )
	public ModelAndView actonMethod(@RequestParam Map<String, Object> paramMap, 
			@PathVariable String action, ModelAndView modelandView) {
		String viewName = "/fashionBoard/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if("fashionBoardList".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultList = (List<Object>) fashionService.getList(paramMap);
			
		} else if ("fashionBoardRead".equalsIgnoreCase(action)) {
			viewName = viewName + action;
		} else if ("fashionBoardEdit".equalsIgnoreCase(action)) {
			viewName = viewName + action;
     	}
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
	}
	
	

}
