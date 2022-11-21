package com.weMovies.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.weMovies.dto.BoardDTO;
import com.weMovies.dto.MovieDTO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {

    @Inject
    private SqlSession sqlSession;

    @Override
    public List<MovieDTO> movieList(MovieDTO movieDTO) throws Exception {
        return sqlSession.selectOne("movie.movieList", movieDTO);
    }
    
    @Override
    public List<BoardDTO> list(BoardDTO bdto) throws Exception {  
        return sqlSession.selectList("board.list");
    }
    
    @Override
    public Integer getMaxSeq() {
        return sqlSession.selectOne("board.maxSeq");
    }

    @Override
    public int regi(BoardDTO bdto) {
        return sqlSession.insert("board.regi", bdto);
    }

    @Override
    public List<MovieDTO> boardRegi(int id) throws Exception {
        return sqlSession.selectList("board.boardRegi", id);
    }
 
    @Override
    public int boardUpdate(BoardDTO bdto) throws Exception {
        return sqlSession.update("board.update", bdto);
    }

	@Override
	public int boardDelete(int seq) {
		return sqlSession.delete("board.delete", seq);
	}

    
}
