package com.fashion.blog.controller;


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
public class MenuController {
	
	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

	@RequestMapping(value = "/menu/acc",method = RequestMethod.GET)
	public String acc(Locale locale, Model model) {
		   logger.info("Welcome home! The client locale is {}.", locale);
			
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			
			String formattedDate = dateFormat.format(date);
			
			model.addAttribute("serverTime", formattedDate );
			
			return "/menu/acc";

	   }
	@RequestMapping(value = "/menu/bag",method = RequestMethod.GET)
	public String bag(Locale locale, Model model) {
		   logger.info("Welcome home! The client locale is {}.", locale);
			
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			
			String formattedDate = dateFormat.format(date);
			
			model.addAttribute("serverTime", formattedDate );
			
			return "/menu/bag";

	}
	@RequestMapping(value = "/menu/clothing",method = RequestMethod.GET)
	public String clothing(Locale locale, Model model) {
		   logger.info("Welcome home! The client locale is {}.", locale);
			
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			
			String formattedDate = dateFormat.format(date);
			
			model.addAttribute("serverTime", formattedDate );
			
			return "/menu/clothing";

	}
	@RequestMapping(value = "/menu/etc",method = RequestMethod.GET)
	public String etc(Locale locale, Model model) {
	  
		   logger.info("Welcome home! The client locale is {}.", locale);
			
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			
			String formattedDate = dateFormat.format(date);
			
			model.addAttribute("serverTime", formattedDate );
			
			return "/menu/etc";
	}
	@RequestMapping(value = "/menu/shoes",method = RequestMethod.GET)
	public String shoes(Locale locale, Model model) {
	
		   logger.info("Welcome home! The client locale is {}.", locale);
			
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			
			String formattedDate = dateFormat.format(date);
			
			model.addAttribute("serverTime", formattedDate );
			
			return "/menu/shoes";
	}
	

}
