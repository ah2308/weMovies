package com.weMovies.service;

import java.util.List;

import javax.inject.Inject;

import com.weMovies.dao.BoardDAO;
import com.weMovies.dto.MovieDTO;

public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO boardDAO;
	
	@Override
	public List<MovieDTO> list(MovieDTO movieDTO) throws Exception {
		return boardDAO.list(movieDTO);
	}

}
