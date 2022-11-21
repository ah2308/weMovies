package com.weMovies.dao;

import java.util.List;

import com.weMovies.dto.BoardDTO;
import com.weMovies.dto.MovieDTO;
import com.weMovies.dto.ShowingDTO;

public interface BoardDAO {
	
	public List<MovieDTO> movieList(MovieDTO movieDTO) throws Exception;
	public List<BoardDTO> list(BoardDTO bdto) throws Exception;
	public Integer getMaxSeq();
	public int regi(BoardDTO bdto);
	public List<MovieDTO> boardRegi(int id) throws Exception;
	public int boardUpdate(BoardDTO bdto) throws Exception;

}
