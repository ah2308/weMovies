package com.weMovies.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.weMovies.dto.MovieDTO;

public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public List<MovieDTO> list(MovieDTO movieDTO) throws Exception {
		return sqlSession.selectOne("board.list", movieDTO);
	}

}
