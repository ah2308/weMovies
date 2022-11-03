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
    public List<MovieDTO> list(MovieDTO movieDTO) throws Exception {
        return sqlSession.selectOne("board.list", movieDTO);
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
}
