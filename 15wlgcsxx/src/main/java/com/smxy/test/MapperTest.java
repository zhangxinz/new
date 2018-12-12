package com.smxy.test;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.smxy.bean.Pictre;
import com.smxy.dao.PictreMapper;
import com.smxy.bean.Pictre;
import com.smxy.dao.PictreMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {
	
	@Autowired
	PictreMapper pictreMapper;
	
	@Autowired
	SqlSession sqlSession;
	
	@Test
	public void testCRUD(){
		
		
		System.out.println(pictreMapper);
		
		
		//3.批量插入多个员工；批量可以知晓批量操作sqlSession
		PictreMapper mapper=sqlSession.getMapper(PictreMapper.class);
		for(int i=0;i<50;i++){
			mapper.insertSelective(new Pictre(null,"2018-11-21 16:51:6666","image/child8.jpeg","child"));
		}
		for(int i=0;i<50;i++){
			mapper.insertSelective(new Pictre(null,"2018-11-21 16:51:7777","image/older10.jpeg","older"));
		}
		for(int i=0;i<50;i++){
			mapper.insertSelective(new Pictre(null,"2018-11-21 16:51:8888","image/thief13.jpeg","thief"));
		}
		for(int i=0;i<50;i++){
			mapper.insertSelective(new Pictre(null,"2018-11-21 16:51:9999","image/fire21.jpeg","fire"));
		}
		System.out.println("批量完成");
		
		
		
	}

}
