package com.itbank.TechFarm.tftube.mybatis;

import java.io.Reader;
import java.io.IOException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itbank.TechFarm.tftube.dto.ReplyDTO;
import com.itbank.TechFarm.tftube.dto.ReplyFormat;



public class ReplyMapper {
	private static SqlSessionFactory sqlMapper;
	static {
		try {
			String resource = "SqlMapConfig_tftube.xml"; 
			Reader reader = Resources.getResourceAsReader(resource); 
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			throw new RuntimeException("Something bad happened while building the SqlMapClient instance." + e, e);
		}
	}
	
	public static int insertReply(ReplyDTO dto){
		SqlSession session=sqlMapper.openSession();		
		int res=session.insert("insertReply",dto);
		session.commit();
		session.close();
		return res;
	}

  	public static List<ReplyDTO> listReply(){
  		SqlSession session = sqlMapper.openSession();  	
  		List<ReplyDTO> list = session.selectList("replyList");
  		session.close();
  		return list;
  	}
  	
  	public static List<ReplyDTO> replyList_by_video(String video_name){
  		SqlSession session=sqlMapper.openSession();
  		List<ReplyDTO> list=session.selectList("replyList_by_video",video_name);
  		session.close();
  		return list;
  	}
  	
  	public static String getName(){
  		SqlSession session=sqlMapper.openSession();
  		System.out.println("plist:"+session.selectList("getName"));
  		List list=(List)session.selectList("getName");
  		String name=null;
  		if(list.size()==0){}
  		else{name=(String)list.get(0);}
  		session.close();
  		return name;
  	}
  	
  	public static int update_re_step(){
  		SqlSession session=sqlMapper.openSession();
  		int res=session.update("update_re_step");
  		session.commit();
  		session.close();
  		return res;  		
  	}
  	
  	public static int update_re_step_reply(){
  		SqlSession session=sqlMapper.openSession();
  		int res=session.update("update_re_step_reply");
  		session.commit();
  		session.close();
  		return res;  		
  	}
  	
  	public static int delete_reply(int no){
  	SqlSession session=sqlMapper.openSession();
  	int res=session.delete("deletereply",no);
  	session.commit();
  	session.close();
  	return res;  	
  	}
  	
  	public static List<ReplyFormat>getName_by_video(String video_name){
  		SqlSession session=sqlMapper.openSession();
  		List<ReplyFormat> list=session.selectList("getName_by_video",video_name);
  		session.close();
  		return list;
  	}
  	
  	public static int reply_number(String video_name){
  		SqlSession session=sqlMapper.openSession();
  		int num=session.selectOne("reply_number",video_name);
  		session.close();
  		return num;  		
  	}
  	
  	
  	
  	
  	
  	
  	/*
  	public static BoardDBBean getBoard(int num){
  		SqlSession session = sqlMapper.openSession();
  		BoardDBBean dto = (BoardDBBean)session.selectOne("getBoard", num);
  		session.close();
  		return dto;
  	}
  	
  	public static int deleteBoard(int num){
  		SqlSession session = sqlMapper.openSession();
  		int res = session.delete("deleteBoard", num);
  		session.commit();
  		session.close();
  		return res;
  	}
  	
  	public static int insertBoard(BoardDBBean dto){
  		
  		SqlSession session = sqlMapper.openSession();
		if (dto.getNum()==0){
			 
			int res2=session.update("insertBoard2_1");
		}else {
			
			dto.setRe_step(dto.getRe_step() + 1);
			dto.setRe_level(dto.getRe_level() + 1);
			int res2=session.update("insertBoard2_2",dto);
		}	  		
  		int res = session.insert("insertBoard", dto);
  		session.commit();
  		session.close();
  		return res;
  	}
  	
  	public static int updateBoard(BoardDBBean dto){
  		SqlSession session = sqlMapper.openSession();
  		int res = session.update("updateBoard", dto);
  		session.commit();
  		session.close();
  		return res;
  	}
  	
  	public static void readCount(String sql){
  		SqlSession session = sqlMapper.openSession();
  		java.util.HashMap map = new java.util.HashMap();
  		map.put("sql", sql);
  		session.update("readCount", map);
  		session.commit();
  		session.close();
  	}
  	
  	public static boolean isPassword(int num,String passwd){  		
  		SqlSession session = sqlMapper.openSession();  		
  		String password = (String)session.selectOne("isPassword",num);
  		if(password.equals(passwd)){
  			session.close();
			 return true;
		 }else{
			 session.close();
			 return false;
		 }  		
  	}
  	
  	public static int getCount(){
  		SqlSession session = sqlMapper.openSession();  
  		int count=(int)session.selectOne("getCount");
  		session.close();
  		return count;
  	}
  	
  	
  	public static List listBoard2(int start,int end){
  		SqlSession session = sqlMapper.openSession();
  		java.util.HashMap map = new java.util.HashMap();
  		map.put("start", start);
  		map.put("end", end);
  		List list = session.selectList("listBoard",map);  		
  		session.close();
  		return list;  		
  	}*/
  	
  	
  	
  	
}












