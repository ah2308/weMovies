package com.weMovies.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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
    
    /*
     * @RequestMapping(value = "list", method = RequestMethod.GET)
     * public String list(Locale locale, Model model) throws Exception {
     * return "board/list";
     * }
     */

    @RequestMapping(value = "/boardList", method = RequestMethod.GET)
    public String getList(MovieDTO movieDTO, Model model) throws Exception {
        List<MovieDTO> list = movieService.movieList(movieDTO);
        model.addAttribute("list", list);
        return "board/boardList";
    }

    @RequestMapping(value = "/regiView", method = RequestMethod.POST)
    public String boardRegi(Locale locale, Model model, HttpServletRequest request) throws Exception {
        int id = Integer.parseInt(request.getParameter("id"));
        List<MovieDTO> list = boardService.boardRegi(id);
        //boardService.boardRegi(id);
        model.addAttribute("list", list);
        return "board/regi";
    }

    @ResponseBody
    @RequestMapping(value = "/regi", method = RequestMethod.POST)
    public String regi(Locale locale, Model model, HttpServletRequest request) throws Exception {

        Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");

        BoardDTO bdto = new BoardDTO();
        bdto.setName(request.getParameter("name"));
        bdto.setContent(request.getParameter("content"));
        bdto.setSubject(request.getParameter("subject"));
        bdto.setReg_date(format.format(date));

        if (boardService.regi(bdto) == 1) {
            System.out.println("컨트롤러");
            return "/boardList";
        } else {
            return "N";
        }
    }

}