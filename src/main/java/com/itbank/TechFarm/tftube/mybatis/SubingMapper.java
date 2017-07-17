package com.itbank.TechFarm.tftube.mybatis;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itbank.TechFarm.tftube.dto.SubingDTO;

public class SubingMapper {
	
	private static SqlSessionFactory sqlMapper;
	static {
		try {
			String resource = "com/itbank/TechFarm/SqlMapConfig_tftube.xml"; 
			Reader reader = Resources.getResourceAsReader(resource); 
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			throw new RuntimeException("Something bad happened while building the SqlMapClient instance." + e, e);
		}
	}	
	    public static int insertSubing(SubingDTO sidto){
		SqlSession session=sqlMapper.openSession();
		int res=session.insert("insertSubing",sidto);	
		session.commit();
		session.close();
		return res;		
	}
	    
	    public static List<SubingDTO> get_subing_member(int member_no){
			SqlSession session=sqlMapper.openSession();
			List<SubingDTO> subingdto=session.selectOne("get_subing_member",member_no);
			session.close();
			return subingdto;			
		}
	    
	    public static int deleteSubing(int subing_member_no){
	    	SqlSession session=sqlMapper.openSession();
			int res=session.insert("deleteSubing",subing_member_no);	
			session.commit();
			session.close();
			return res;
	    	
	    }
	    
	   
	    
	    
	

}
