package com.hyeonsu.blog.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hyeonsu.blog.board.dao.BoardDAO;
import com.hyeonsu.blog.board.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDAO;
	
	public List<BoardVO> getBoardList(){
		return boardDAO.getBoardList();
	}

	@Override
	public void insertBoard(BoardVO boardVO) {
		boardDAO.insertBoard(boardVO);
	}

	@Override
	public BoardVO getBoardContent(int bid) {
		boardDAO.updateViewCnt(bid);
		return boardDAO.getBoardContent(bid);
	}
}
