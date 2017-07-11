package com.itbank.TechFarm.tftube.dao;

import java.util.List;

import com.itbank.TechFarm.tftube.dto.ReplyDTO;





public interface ReplyDAO {
	public List replyList();		
	public int insertReply(ReplyDTO dto);
	public List<ReplyDTO> replyList_by_video(String video_name);
	public String getName();
	public int update_re_step();
	public int update_re_step_reply();
	

	
}
