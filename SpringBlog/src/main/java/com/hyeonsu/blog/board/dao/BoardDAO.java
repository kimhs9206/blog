package com.hyeonsu.blog.board.dao;

import java.util.List;

import com.hyeonsu.blog.board.model.BoardVO;
import com.hyeonsu.blog.common.Pagination;

public interface BoardDAO {
	//게시글 목록 보기
	public List<BoardVO> getBoardList(Pagination pagination);
	//게시글 상세보기
	public BoardVO getBoardContent(int bid);
	//게시글 추가하기
	public int insertBoard(BoardVO boardVO);
	//게시글 수정
	public int updateBoard(BoardVO boardVO);
	//게시글 삭제
	public int deleteBoard(int bid);
	//죄회수 증가
	public int updateViewCnt(int bid);
	//게시글 개수 확인
	public int getBoardCnt();
}
