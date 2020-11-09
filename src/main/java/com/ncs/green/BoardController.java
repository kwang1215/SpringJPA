package com.ncs.green;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.Bservice;
import vo.BoardVO;

@Controller
public class BoardController {
	@Autowired
	Bservice service;


	@RequestMapping(value = "/blist")
	public ModelAndView blist(HttpServletRequest request, ModelAndView mv) {
		// Service 처리
		List<BoardVO> list = new ArrayList<BoardVO>();
		list = service.selectList();
		if (list != null)
			mv.addObject("Banana", list);
		else
			mv.addObject("message", "~~ 출력할 자료가 없습니다 ~~ ");
		mv.setViewName("board/boardList");
		return mv;
	} // blist
	
	@RequestMapping(value = "/bdetail")
	public ModelAndView bdetail(HttpServletRequest request, ModelAndView mv, BoardVO vo) {
		
		vo = service.selectOne(vo);
		if (vo != null) {
			mv.addObject("Detail", vo);
			mv.setViewName("board/boardDetail");
		} else {
			mv.addObject("message", "~~ 출력할 자료가 없습니다 ~~ ");
			mv.setViewName("redirect:blist");
		}
		return mv;
	} // bdetail

} // BoardController
