package com.fashion.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fashion.blog.service.Dao.ShareDao;

@Service
public class MenuService {
	
	  @Autowired
	  ShareDao dao;
	  
	  public Object getList(Object dataMap) {
		  String sqlMapId = "menu.list";
		  Object resultObject = dao.getList(sqlMapId, dataMap);
		  
		  return resultObject;
	  }
}


