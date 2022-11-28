package com.weMovies.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.weMovies.dto.BoardDTO;
import com.weMovies.dto.MovieDTO;
import com.weMovies.service.BoardService;
import com.weMovies.service.MovieService;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	private MovieService movieService;

	@Inject
	private BoardService boardService;

	@RequestMapping(value = "/boardList")
	public String list(Locale locale, Model model, MovieDTO movieDTO) throws Exception {
		List<MovieDTO> list = movieService.movieList(movieDTO);
		model.addAttribute("list", list);
		return "board/boardList";
	}

	@RequestMapping(value = "/regiView", method = RequestMethod.POST)
	public String boardRegi(Locale locale, Model model, HttpServletRequest request, BoardDTO bdto) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		List<MovieDTO> list = boardService.boardRegi(id);
		List<BoardDTO> list2 = boardService.list(bdto);
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		return "board/regi";
	}

	@ResponseBody
	@RequestMapping(value = "/regi", method = RequestMethod.POST)
	public String regi(Locale locale, Model model, HttpServletRequest request, BoardDTO bdto) throws Exception {
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");

		bdto.setReg_date(format.format(date));

		if (boardService.regi(bdto) == 1) {
			System.out.println("컨트롤러");
			return "/boardList";
		} else {
			return "N";
		}
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String boardUpdateView(BoardDTO bdto, Model model, ServletRequest request) throws Exception {
		List<BoardDTO> list2 = boardService.list(bdto);
		model.addAttribute("list2", list2);
		return "board/update";
	}

	@RequestMapping(value = "/boardUpdate", method = RequestMethod.POST)
	public String boardUpdate(Locale locale, Model model, ServletRequest request, HttpSession session)
			throws Exception {
		String name = (String) session.getAttribute("mid");
		String content = request.getParameter("content");
		int seq = Integer.parseInt(request.getParameter("seq"));
		BoardDTO bdto = new BoardDTO(name, seq, content);
		System.out.println("세션 이름 : " + name + " seq 번호 : " + seq + " content 내용 : " + content);
		boardService.boardUpdate(bdto);
		return "redirect:/board/boardList";
	}

	@RequestMapping(value = "/boardDelete", method = RequestMethod.POST)
	public String boardDelete(Locale lcale, Model model, ServletRequest request, HttpSession session) throws Exception {
		int seq = Integer.parseInt(request.getParameter("seq"));
		System.out.println(" seq 번호 : " + seq);
		boardService.boardDelete(seq);
		return "redirect:/board/boardList";
	}
}