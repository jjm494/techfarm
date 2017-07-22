package com.itbank.TechFarm.tftube.dao;

import java.util.HashMap;
import java.util.List;


import com.itbank.TechFarm.tftube.dto.LikeVideoDTO;
import com.itbank.TechFarm.tftube.dto.VideoDTO;
import com.itbank.TechFarm.tftube.mybatis.LikeVideoMapper;

public class LikeVideoDAOImpl implements LikeVideoDAO{
	
	@Override
	public int like_insert(LikeVideoDTO dto) {
		return LikeVideoMapper.like_insert(dto);
	}

	@Override
	public int like_delete(int member,int no) {
		return LikeVideoMapper.like_delete(member,no);
	}

	@Override
	public LikeVideoDTO likevideo_list(int member_no, int no) {
		return LikeVideoMapper.likevideo_list(member_no, no);
	}

	
	@Override
	public int unlike_insert(LikeVideoDTO dto) {

		return LikeVideoMapper.unlike_insert(dto);
	}

	@Override
	public int unlike_delete(int member, int no) {

		return LikeVideoMapper.unlike_delete(member, no);
	}

	@Override
	public int likecount(int video_no) {
		return LikeVideoMapper.likecount(video_no);
	}

	@Override
	public int unlikecount(int video_no) {
		return LikeVideoMapper.unlikecount(video_no);
	}
	
	
	
	

	
	
	
	
	
	
	
	
	

	
	

	
	
}
