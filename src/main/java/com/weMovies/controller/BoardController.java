package com.weMovies.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.weMovies.dto.MovieDTO;
import com.weMovies.service.MovieService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	@Autowired
    private MovieService movieService;
	
	/*
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(Locale locale, Model model) throws Exception {
		return "board/list";
	}*/
	
	@RequestMapping("list")
    public String getList(MovieDTO movieDTO, Model model) throws Exception{
        List<MovieDTO> list = movieService.movieList(movieDTO);
        model.addAttribute("list", list);
        return "board/list";
    }
}