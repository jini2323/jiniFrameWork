package kr.co.laura.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PointDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	
}
