package com.hyeonsu.blog.common;

import lombok.Data;

@Data
public class Pagination {
	private int listSize=10;//초기값으로 목록 개수를 10 셋팅
	private int rangeSize=10;//초기값으로 페이지범위 10 셋팅
	private int page;//현재 목록 페이지
	private int range;//각 페이지 범위 식작번호
	private int listCnt;//전체 개시물의 수
	private int pageCnt;//전체 페이지 범위의 개수
	private int startPage;//각 페이지 범위 시작 번호
	private int startList;
	private int endPage;//각 페이지 범위 마지막 번호
	private boolean prev;//이전페이지
	private boolean next;//다음페이지
	
	public void pageInfo(int page, int range, int listCnt) {
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;

		//전체 페이지 수
		this.pageCnt=(int) Math.ceil((double)listCnt/listSize);
		
		//시작페이지
		this.startPage=(range - 1) * rangeSize +1;
		
		//끝페이지
		this.endPage = range * rangeSize;
		//게시판 시작번호
		this.startList = (page-1)*listSize;
		//이전 버튼 상태
		this.prev = range ==1?false:true;
		//다음 버튼 상태
		this.next = endPage> pageCnt?false:true;
		if(this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next=false;
		}
	}
}
