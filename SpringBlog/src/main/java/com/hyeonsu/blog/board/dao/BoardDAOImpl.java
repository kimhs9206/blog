package com.hyeonsu.blog.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hyeonsu.blog.board.model.BoardVO;
import com.hyeonsu.blog.common.Pagination;

@Repository
public class BoardDAOImpl implements BoardDAO{
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVO> getBoardList(Pagination pagination) {
		
		return sqlSession.selectList("com.hyeonsu.blog.board.boardMapper.getBoardList",pagination);
	}

	@Override
	public BoardVO getBoardContent(int bid) {
		
		return sqlSession.selectOne("com.hyeonsu.blog.board.boardMapper.getBoardContent",bid);
	}

	@Override
	public int insertBoard(BoardVO boardVO) {
		
		return sqlSession.insert("com.hyeonsu.blog.board.boardMapper.insertBoard",boardVO);
	}

	@Override
	public int updateBoard(BoardVO boardVO) {
		
		return sqlSession.update("com.hyeonsu.blog.board.boardMapper.updateBoard",boardVO);
	}

	@Override
	public int deleteBoard(int bid) {
		
		return sqlSession.delete("com.hyeonsu.blog.board.boardMapper.deleteBoard",bid);
	}

	@Override
	public int updateViewCnt(int bid) {
		
		return sqlSession.update("com.hyeonsu.blog.board.boardMapper.updateViewCnt",bid);
	}

	@Override
	public int getBoardCnt() {
		
		return sqlSession.selectOne("com.hyeonsu.blog.board.boardMapper.getBoardCnt");
	}

}
