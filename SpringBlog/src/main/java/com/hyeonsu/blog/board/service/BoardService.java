package com.hyeonsu.blog.board.service;

import java.util.List;

import com.hyeonsu.blog.board.model.BoardVO;


public interface BoardService {
	//게시글 목록 조회
	public List<BoardVO> getBoardList();
	//게시글 작성
	public void insertBoard(BoardVO boardVO);
	
}
