package com.fashion.blog.service.Dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	 public Object getObject(Object dataMap) {
		   Map<String, Object> resultObject = new HashMap<String, Object>();
		   resultObject.put("MEMBER_ID", ((HashMap<String,Object>)dataMap).get("MEMBER_ID"));
		   resultObject.put("NAME", ((HashMap<String,Object>)dataMap).get("NAME"));
		   resultObject.put("CELLPHONE", ((HashMap<String,Object>)dataMap).get("CELLPHONE"));
		   resultObject.put("EMAIL", ((HashMap<String,Object>)dataMap).get("EMAIL"));
		   
		   return resultObject;
    }
	 
	 public List<Object> getList(Object dataMap) {
		 List<Object> resultObject = new ArrayList<Object>();
		 Map<String, Object> data01 = new HashMap<String, Object>();
			data01.put("MEMBER_ID", "103029301202");
			data01.put("NAME", "name 01");
			data01.put("CELLPHONE", "001-2930-2938");		
			data01.put("EMAIL", "Anders@gmail.com");	
			resultObject.add(data01);
			return resultObject;
	 }
}

