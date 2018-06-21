package com.fashion.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fashion.blog.service.Dao.ShareDao;

@Service
public class FashionBoardService {
	
	  @Autowired
	  ShareDao dao;
	  
	  public Object getList(Object dataMap) {
		  String sqlMapId = "fashionboard.list";
		  Object resultObject = dao.getList(sqlMapId, dataMap);
		  
		  return resultObject;
	  }
	  
	  public Object getObject(Object dataMap) {
		  String sqlMapId = "fashionboard.viewcount";
		  dao.getUpdate(sqlMapId, dataMap);
		  sqlMapId = "fashionboard.read";
		  Object resultObject = dao.getObject(sqlMapId, dataMap);
		  
		  return resultObject;
	  }
	  
	  public Object getCategoryList(Object dataMap) {
		  String sqlMapId = "fashionboard.category";
		  Object resultObject = dao.getList(sqlMapId, dataMap);
		  
		  return resultObject;
	  }
	  
	  public void insert(Object dataMap) {
		  String sqlMapId = "fashionboard.insert";
		  dao.saveObject(sqlMapId, dataMap);
	  }
	  
	  public void update(Object dataMap) {
		  String sqlMapId = "fashionboard.update";
		  dao.getUpdate(sqlMapId, dataMap);
	  }

}
