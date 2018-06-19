package com.fashion.blog.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fashion.blog.service.Dao.MemberDao;

@Service
public class SignUpService {
	
  @Autowired
  private MemberDao dao;
  
  public Object getObject(Object dataMap) {
	  
       Object resultObject=dao.getObject(dataMap);
       return resultObject;
   }
   
   public List<Object> getList(Object dataMap){
       List<Object> resultObject= dao.getList(dataMap);
	   return resultObject;
   }
   

}
