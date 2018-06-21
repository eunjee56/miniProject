package com.fashion.blog.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fashion.blog.service.MemberService;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@Autowired
	private MemberService service;

	@RequestMapping(value = "/login/{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actonMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {
		String viewName = "/login/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();

		if ("login".equalsIgnoreCase(action)) {
			viewName = viewName + action;

		} else if ("signup".equalsIgnoreCase(action)) {
			viewName = viewName + action;
		} else if ("check".equalsIgnoreCase(action)) {
			
			Map resultObject = (Map) service.checkMember(paramMap);
			
			if(resultObject!=null) { //아이디가 존재할 때, 
			String pass =  (String) paramMap.get("PASSWORD"); 		 //jsp에서 입력받은 값
			String password = (String) resultObject.get("PASSWORD"); //db에서 아이디로 가져온 값.
			String id = (String) paramMap.get("MEMBER_ID");
				if (pass.equals(password) ) { // 검색된 비밀번호가 있으면,
					
					viewName = "/home/home";
					resultMap.put("MEMBER_ID", id);
				} else {
					viewName = "/login/loginfail";
				}
				
			} else {			//아이디가 존재하지 않을 때
				viewName = "/login/loginfail";
			}
		
		}
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
	}

}
