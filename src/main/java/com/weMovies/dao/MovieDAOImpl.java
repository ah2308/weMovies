package com.weMovies.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.weMovies.dto.CinemaDTO;
import com.weMovies.dto.MovieDTO;
import com.weMovies.dto.ShowingDTO;

@Repository("movieDAO")
public class MovieDAOImpl implements MovieDAO{
    
    private int cnt;
    @Inject
    SqlSession sqlSession;

    @Override
    public void apiLoad(MovieDTO mdto) throws Exception {
        sqlSession.insert("movie.apiLoad", mdto);     
    }

    @Override
    public List<MovieDTO> movieList(MovieDTO movieDTO) throws Exception {
        // TODO Auto-generated method stub
        return sqlSession.selectList("movieList", movieDTO);
    }

    @Override
    public void delMovie(String title) throws Exception {
        // TODO Auto-generated method stub
        sqlSession.delete("movie.delMovie", title);
    }

    @Override
    public void mvUpdate(MovieDTO mdto) throws Exception {
        sqlSession.update("movie.movieDetail", mdto);
    }

    @Override
    public List<MovieDTO> mvUpload(int id) throws Exception {
        // TODO Auto-generated method stub
        return sqlSession.selectList("movie.movieUpload", id);
    }

    @Override
    public List<CinemaDTO> cListUp(CinemaDTO cdto) throws Exception {
        // TODO Auto-generated method stub
        return sqlSession.selectList("cinema.list", cdto);
    }

    @Override
    public void upload(ShowingDTO sdto) throws Exception {
        sqlSession.insert("show.upload", sdto);
    }

    @Override
    public int timeCheck(ShowingDTO sdto) throws Exception {
        int cnt = sqlSession.selectOne("show.timeCheck", sdto);
        return cnt;
    }
}