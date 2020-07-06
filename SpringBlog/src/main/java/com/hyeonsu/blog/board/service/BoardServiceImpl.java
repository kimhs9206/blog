package com.hyeonsu.blog.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyeonsu.blog.board.dao.BoardDAO;
import com.hyeonsu.blog.board.model.BoardVO;
import com.hyeonsu.blog.common.Pagination;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDAO;
	
	public List<BoardVO> getBoardList(Pagination pagination){
		return boardDAO.getBoardList(pagination);
	}
	
	@Override
	public void insertBoard(BoardVO boardVO) {
		boardDAO.insertBoard(boardVO);
	}
	
	@Transactional
	@Override
	public BoardVO getBoardContent(int bid) {
		boardDAO.updateViewCnt(bid);
		return boardDAO.getBoardContent(bid);
	}

	@Override
	public void updateBoard(BoardVO boardVO) {
		boardDAO.updateBoard(boardVO);		
	}

	@Override
	public void deleteBoard(int bid) {
		boardDAO.deleteBoard(bid);
		
	}

	@Override
	public int getBoardCnt() {
		return boardDAO.getBoardCnt();
	}
}
