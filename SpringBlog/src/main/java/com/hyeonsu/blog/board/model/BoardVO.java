package com.hyeonsu.blog.board.model;

import lombok.Data;

@Data
public class BoardVO {
	public int bid;
	public String cate_cd;
	public String title;
	public String content;
	public String tag;
	public int view_cnt;
	public String reg_id;
	public String reg_dt;
	public String edit_dt;
	
}
