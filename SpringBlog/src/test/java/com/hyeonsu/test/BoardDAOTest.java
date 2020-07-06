package com.hyeonsu.test;

import java.util.List;

import javax.inject.Inject;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyeonsu.blog.board.dao.BoardDAO;
import com.hyeonsu.blog.board.model.BoardVO;
import com.hyeonsu.blog.common.Pagination;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring/dataSource-context.xml","classpath:spring/root-context.xml"})
public class BoardDAOTest {
	private static final Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	@Inject
	private BoardDAO boardDAO;
	//게시글 목록보기 테스트
	@Ignore
	public void getBoardList(Pagination pagination) {
		
		List<BoardVO> boardList = boardDAO.getBoardList(pagination);
		
		logger.info("\n BoardList \n");
		
		if(boardList.size()>0) {
			for(BoardVO list: boardList) {
				logger.info(list.title);
			}
		}else {
			logger.info("데이터가 없습니다.");
		}
	}
	//게시글 상세보기 테스트
	@Ignore
	public void getBoardContent() {
		BoardVO boardVO = boardDAO.getBoardContent(1);
		logger.info("\n BoardContent \n");
		if(boardVO !=null) {
			logger.info("글번호"+boardVO.getBid());
			logger.info("글제목"+boardVO.getTitle());
			logger.info("글내용"+boardVO.getContent());
			logger.info("글태그"+boardVO.getTag());
			logger.info("죄회수"+boardVO.getView_cnt());
			logger.info("작성일"+boardVO.getReg_dt());
			logger.info("작성자"+boardVO.getReg_id());
			logger.info("수정일"+boardVO.getEdit_dt());
		}else {
			logger.info("데이터가 없습니다!");
		}
	}
	//게시글 등록 테스트
	@Test
	public void insertBoard() {
		for(int i =0;i<=1000;i++) {
		BoardVO boardVO = new BoardVO();
		boardVO.setCate_cd("Java");
		boardVO.setContent("Java 카테고리 안에 들어가 있는 게시물의 내용");
		boardVO.setTitle("Java카테고리 안의 게시물 제목");
		boardVO.setTag("#Java #Spring #태그");
		boardVO.setReg_id("등록자");
		
		int result = boardDAO.insertBoard(boardVO);
		logger.info("\n InsertBoard "+result+"\n");
		if(result == 1) {
			logger.info("데이터 입력 성공!");
		}else {
			logger.info("데이터 입력 실패!");
		}
		}
	}
	@Ignore
	public void deleteBoard() {
		
		int result = boardDAO.deleteBoard(1);
		logger.info("\n deleteBoard" + result +"\n");
		if(result==1) {
			logger.info("데이터 삭제 성공!");
		}else {
			logger.info("데이터 삭제 실패!");
		}
	}
	@Ignore
	public void updateBoard() {
		
		BoardVO boardVO = new BoardVO();
		boardVO.setBid(2);
		boardVO.setTitle("수정된 제목");
		boardVO.setContent("수정된제목");
		boardVO.setCate_cd("수정된 카테고리");
		boardVO.setReg_id("수정된 아이디");
		boardVO.setTag("#수정된 태그");
		
		int result = boardDAO.updateBoard(boardVO);
		logger.info("\n updateBoard" + result +"\n");
		if(result==1) {
			logger.info("데이터 수정 성공!");
		}else {
			logger.info("데이터 수정 실패!");
		}
	}
	@Ignore
	public void updateViewCnt() {
		int result = boardDAO.updateViewCnt(2);
		logger.info("\n updateViewCnt" + result +"\n");
		if(result==1) {
			logger.info("조회수 증가 성공!");
		}else {
			logger.info("조회수 증가 실패!");
		}
	}
}
