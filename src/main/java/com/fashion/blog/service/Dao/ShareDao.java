package com.fashion.blog.service.Dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShareDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Object getList(String sqlMapId, Object dataMap) {
		Object result = sqlSession.selectList(sqlMapId, dataMap);

		return result;
	}

	public void saveObject(String sqlMapId, Object dataMap) {
		sqlSession.insert((String) sqlMapId, dataMap);
	}

	public Object findObject(String sqlMapId, Object dataMap) {

		Object resultData = sqlSession.selectOne((String) sqlMapId, dataMap);
		return resultData;
	}


	public Object getObject(String sqlMapId, Object dataMap) {
		/* sqlMapId = "authority.read"; */
		Object result = sqlSession.selectOne(sqlMapId, dataMap);
		return result;
	}

	public Object getAuthority(String sqlMapId, Object dataList) {
		sqlMapId = "member.getAuthority";
		Object resultList = sqlSession.selectList(sqlMapId, dataList);
		return resultList;
	}

	public Object deleteObject(String sqlMapId, Object dataMap) {

		Integer result = sqlSession.delete(sqlMapId, dataMap);
		return result;
	}

	public void getUpdate(String sqlMapId, Object dataMap) {
		sqlSession.update(sqlMapId,dataMap);
	}
	/*
	 * public Object getAuthority(String sqlMapId, Object dataMap) { Object result =
	 * sqlSession.selectOne(sqlMapId, dataMap); return result; }
	 */
}
