package com.weMovies.dao;

import java.util.List;

import com.weMovies.dto.BoardDTO;
import com.weMovies.dto.MovieDTO;
import com.weMovies.dto.ShowingDTO;

public interface BoardDAO {
	
	public List<MovieDTO> list(MovieDTO movieDTO) throws Exception;
	public Integer getMaxSeq();
	public int regi(BoardDTO bdto);
	public void boardRegi(int id) throws Exception;
}
