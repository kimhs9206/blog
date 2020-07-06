package com.hyeonsu.blog.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyeonsu.blog.board.model.BoardVO;
import com.hyeonsu.blog.board.service.BoardService;
import com.hyeonsu.blog.common.Pagination;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	@Inject
	private BoardService boardService;
	
	
	//게시글 목록 보기
	@RequestMapping(value="/getBoardList",method=RequestMethod.GET)
	public String getBoardList(
								Model model,
								@RequestParam(required = false, defaultValue="1") int page,
								@RequestParam(required = false, defaultValue="1") int range) {
		//게시글 전체개수
		int listCnt = boardService.getBoardCnt();
		//Pagination 객채 생성
		Pagination pagination = new Pagination();
		pagination.pageInfo(page,range,listCnt);
		
		model.addAttribute("pagination",pagination);
		model.addAttribute("boardList",boardService.getBoardList(pagination));
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
	@RequestMapping(value="/saveBoard",method=RequestMethod.POST)
	public String insertBoard(@ModelAttribute("BoardVO")BoardVO boardVO,@RequestParam("mode")String mode,RedirectAttributes rttr) {
		if(mode.equals("update")) {
			boardService.updateBoard(boardVO);
		}else {
		boardService.insertBoard(boardVO);
		}
		return "redirect:/board/getBoardList";
		
	}
	//게시글 상세보기 페이지
	@RequestMapping(value="/getBoardContent",method=RequestMethod.GET)
	public String getBoardContent(Model model,@RequestParam("bid")int bid) {
		model.addAttribute("boardContent",boardService.getBoardContent(bid));
		return "/board/boardContent";
	}
	//게시글 수정
	@RequestMapping(value="/updateForm",method=RequestMethod.GET)
	public String updateForm(@RequestParam("bid")int bid,@RequestParam("mode") String mode,Model model) {
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		model.addAttribute("mode", mode);
		model.addAttribute("boardVO",new BoardVO());
		
		
		return "/board/boardUpdateForm";
	}
	//게시글 삭제
	@RequestMapping(value="/deleteBoard",method=RequestMethod.GET)
	public String deleteBoard(RedirectAttributes rttr,@RequestParam("bid")int bid) {
		boardService.deleteBoard(bid);
		return "redirect:/board/getBoardList";
	}


}
