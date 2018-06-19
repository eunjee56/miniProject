package com.fashion.blog.service.Dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReadDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	public Object getList(String sqlMapId,Object dataMap) {
		Object result = sqlSession.selectList(sqlMapId, dataMap);
		return result;
	}
	
	public Object getObject(String sqlMapId,Object dataMap) {
		Object result = sqlSession.selectOne(sqlMapId, dataMap);
		return result;
	}
}

