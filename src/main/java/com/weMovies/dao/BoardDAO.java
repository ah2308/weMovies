package com.weMovies.dao;

import java.util.List;

import com.weMovies.dto.MovieDTO;

public interface BoardDAO {
	
	public List<MovieDTO> list(MovieDTO movieDTO) throws Exception;
	
}
