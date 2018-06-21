package com.fashion.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fashion.blog.service.Dao.ShareDao;

@Service
public class MenuService {
	
	  @Autowired
	  ShareDao dao;
	  
	  public Object getBagList(Object dataMap) {
		  String sqlMapId = "menu.baglist";
		  Object resultObject = dao.getList(sqlMapId, dataMap);
		  
		  return resultObject;
	  }

	  public Object getClothingList(Object dataMap) {
		  String sqlMapId = "menu.clothinglist";
		  Object resultObject = dao.getList(sqlMapId, dataMap);
		  
		  return resultObject;
	  }

}
