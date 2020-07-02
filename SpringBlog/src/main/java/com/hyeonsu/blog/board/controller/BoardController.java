package com.hyeonsu.blog.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyeonsu.blog.board.model.BoardVO;
import com.hyeonsu.blog.board.service.BoardService;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	@Inject
	private BoardService boardService;
	
	//게시글 목록 보기
	@RequestMapping(value="/getBoardList",method=RequestMethod.GET)
	public String getBoardList(Model model) {
		model.addAttribute("boardList",boardService.getBoardList());
		return "board/content";
	}
	//게시글 쓰기
	@RequestMapping(value="/boardForm")
	public String boardForm() {
		return "board/boardForm";
	}
	//게시글 쓰기 내용 저장
	//ModelAttribute("BoardVO")BoardVO boardVO
	//화면에서 넘겨주는 값을 BoardVO와 매칭시켜 데이터를 받아오게된다.
	//RedirectAttributes rttr
	//글쓰기 이후 돌아가야할 페이지에 데이터를 전달 
	@RequestMapping(value="/insertBoard",method=RequestMethod.POST)
	public String insertBoard(@ModelAttribute("BoardVO")BoardVO boardVO,RedirectAttributes rttr) {
		boardService.insertBoard(boardVO);
		return "redirect:/board/getBoardList";
		
	}

}
