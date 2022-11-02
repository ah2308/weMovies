package com.weMovies.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.weMovies.dto.BoardDTO;
import com.weMovies.dto.MovieDTO;


public interface BoardService {
    
    public List<MovieDTO> list(MovieDTO movieDTO) throws Exception;
    public int regi(BoardDTO bdto) throws Exception;
    public void boardRegi(int id) throws Exception;
}
