package com.weMovies.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.weMovies.dao.BoardDAO;
import com.weMovies.dto.BoardDTO;
import com.weMovies.dto.MovieDTO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO boardDAO;
	
	@Override
	public List<MovieDTO> list(MovieDTO movieDTO) throws Exception {
		return boardDAO.list(movieDTO);
	}
	
	@Override
	public void boardRegi(int id) throws Exception {
        boardDAO.boardRegi(id);
    }
	
	@Override
    public int regi(BoardDTO bdto) throws Exception {
        
        if (boardDAO.getMaxSeq() == null) { // 게시글이 존재하지 않을 때
            bdto.setSeq(1); // SEQ는 1
        } else { // 게시글이 존재할 때
            bdto.setSeq(boardDAO.getMaxSeq() + 1); // 최대값에 +1
        }
        
        return boardDAO.regi(bdto);
    }
}
