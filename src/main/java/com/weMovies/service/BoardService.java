package com.weMovies.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.weMovies.dto.BoardDTO;
import com.weMovies.dto.MovieDTO;


public interface BoardService {
    
    public List<MovieDTO> movieList(MovieDTO movieDTO) throws Exception;
    public List<BoardDTO> list (BoardDTO bdto)throws Exception;
    public int regi(BoardDTO bdto) throws Exception;
    public List<MovieDTO> boardRegi(int id) throws Exception;
    public int boardUpdate(BoardDTO bdto) throws Exception;
    public int boardDelete(int seq) throws Exception;
}
