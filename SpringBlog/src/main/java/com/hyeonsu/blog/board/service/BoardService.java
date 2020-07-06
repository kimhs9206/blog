package com.hyeonsu.blog.board.service;

import java.util.List;

import com.hyeonsu.blog.board.model.BoardVO;
import com.hyeonsu.blog.common.Pagination;


public interface BoardService {
	//게시글 목록 조회
	public List<BoardVO> getBoardList(Pagination pagination);
	//게시글 작성
	public void insertBoard(BoardVO boardVO);
	//게시글 상세 조회
	public BoardVO getBoardContent(int bid);
	//게시글 수정
	public void updateBoard(BoardVO boardVO);
	//게시글 삭제
	public void deleteBoard(int bid);
	//게시글 총 개수
	public int getBoardCnt();
}
