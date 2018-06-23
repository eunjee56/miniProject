package com.fashion.blog.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fashion.blog.service.Dao.ShareDao;
import com.fashion.blog.util.CommonUtil;

@Service
public class MemberService {

	@Autowired
	private ShareDao dao;

	@Autowired
	private CommonUtil commonUtil;

	// public Object saveObject(Map<String, Object> dataMap) {
	// String uniqueSequence = commonUtil.getUniqueSequence();
	// System.out.println(uniqueSequence);
	// dataMap.put("SEQ_ID",uniqueSequence);
	//
	// String sqlMapId = "member.insert";
	// Object resultObject = (Integer) dao.saveObject(sqlMapId, dataMap);
	//
	//
	// return resultObject;
	//
	// }
	public void saveObject1(Map<String, Object> dataMap) {
		String uniqueSequence = commonUtil.getUniqueSequence();
		System.out.println(uniqueSequence);
		dataMap.put("SEQ_ID", uniqueSequence);

		String sqlMapId = "member.insert1";
		// Object resultObject = (Integer) dao.saveObject(sqlMapId, dataMap);

		dao.saveObject(sqlMapId, dataMap);

	}
	
	public Object saveObject2(Map<String, Object> dataMap) {

		String sqlMapId = "member.insert2";
		// Object resultObject = (Integer) dao.saveObject(sqlMapId, dataMap);
		Object resultObject =dao.getObject(sqlMapId, dataMap);
		return resultObject;
	}
	
	
	
	public void saveObject3(Map<String, Object> dataMap) {

		String sqlMapId = "member.insert3";
		// Object resultObject = (Integer) dao.saveObject(sqlMapId, dataMap);
		dao.saveObject(sqlMapId, dataMap);
	}

	public Object checkMember(Object dataMap) {
		String sqlMapId = "member.check";
		Object resultObject = dao.findObject(sqlMapId, dataMap);
		return resultObject;
	}

	public Object getList(Object dataMap) {
		String sqlMapId = "member.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}

	public Object getObject(Object dataMap) {
		String sqlMapId = "member.read";
		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	/*
	 * public Object saveObject(Map<String, Object> dataMap) { String uniqueSequence
	 * = (String) dataMap.get("MEMBER_SEQ");
	 * 
	 * if("".equals(uniqueSequence)){ uniqueSequence =
	 * commonUtil.getUniqueSequence(); } dataMap.put("MEMBER_SEQ", uniqueSequence);
	 * dataMap.put("REGISTER_SEQ", "UUID-1111-1111111"); dataMap.put("MODIFIER_SEQ",
	 * "UUID-1111-1111111");
	 * 
	 * String sqlMapId = "member.merge";
	 * 
	 * Object resultKey = dao.saveObject(sqlMapId, dataMap);
	 * 
	 * sqlMapId = "member.read";
	 * 
	 * Object resultObject = dao.getObject(sqlMapId, dataMap);
	 * 
	 * return resultObject; }
	 */

	public Object deleteObject(Object dataMap) {
		// delete child record authority
		String sqlMapId = "authorityRmember.delete";

		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// delete Mother record authority
		sqlMapId = "member.delete";

		resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// get Member List
		sqlMapId = "member.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}
}
