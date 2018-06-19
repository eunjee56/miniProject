package com.fashion.blog.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fashion.blog.service.Dao.MemberDao;
import com.fashion.blog.service.Dao.ReadDao;

@Service
public class ReadService {
	
  @Autowired
  private ReadDao dao;
  
  public Object getObject(Object dataMap) {
	   String sqlMapId = "BoradRead.read";
       Object resultObject=dao.getObject(sqlMapId,dataMap);
       return resultObject;
   }
//   
//   public List<Object> getList(Object dataMap){
//       List<Object> resultObject= dao.getList(dataMap);
//	   return resultObject;
//   }
//   

}
