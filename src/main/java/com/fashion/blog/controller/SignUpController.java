/*package com.fashion.blog.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SignUpController {

   private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 *//*
	@RequestMapping(value="/member/signUp", method = {RequestMethod.GET,RequestMethod.POST})
	public String login(Locale locale, Model model) {
        logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/member/signUp";
	}
}


import com.fashion.blog.service.SignUpService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SignupController {
	
	private static final Logger logger = LoggerFactory.getLogger(SignupController.class);

	@Autowired
	private SignUpService service;
	
	@RequestMapping(value = "/member/{action}",method = {RequestMethod.GET, RequestMethod.POST} )
	public ModelAndView actonMethod(@RequestParam Map<String, Object> paramMap, 
			@PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "/member/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if("SignUp".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			
		} else if ("SignUpStatus".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap = (Map<String, Object>)service.getObject(paramMap);
		} else if ("SignUpList".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultList = service.getList(viewName, paramMap);
			
		}
		
		
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
	

	}
	
	

}
*/