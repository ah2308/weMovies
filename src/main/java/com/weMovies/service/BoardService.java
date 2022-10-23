package com.weMovies.service;

import java.util.List;

import com.weMovies.dto.MovieDTO;

public interface BoardService {
	public List<MovieDTO> list(MovieDTO movieDTO) throws Exception;
}
