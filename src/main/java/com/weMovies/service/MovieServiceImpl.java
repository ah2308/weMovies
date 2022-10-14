package com.weMovies.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.weMovies.dao.MovieDAO;
import com.weMovies.dto.CinemaDTO;
import com.weMovies.dto.MovieDTO;
import com.weMovies.dto.ShowingDTO;

@Service("movieService")
public class MovieServiceImpl implements MovieService {
    
    @Inject
    MovieDAO mdao;

    @Override
    public void apiLoad(MovieDTO mdto) throws Exception {
        mdao.apiLoad(mdto);
    }

    @Override
    public List<MovieDTO> movieList(MovieDTO movieDTO) throws Exception {
        // TODO Auto-generated method stub
        return mdao.movieList(movieDTO);
    }

    @Override
    public void delMovie(String title) throws Exception {
        // TODO Auto-generated method stub
        mdao.delMovie(title);
    }

    @Override
    public void mvUpdate(MovieDTO mdto) throws Exception {
        // TODO Auto-generated method stub
        mdao.mvUpdate(mdto);
    }

    @Override
    public List<MovieDTO> mvUpload(int id) throws Exception {
        // TODO Auto-generated method stub
        return mdao.mvUpload(id);
    }

    @Override
    public List<CinemaDTO> cListUp(CinemaDTO cdto) throws Exception {
        // TODO Auto-generated method stub
        return mdao.cListUp(cdto);
    }

    @Override
    public void upload(ShowingDTO sdto) throws Exception {
        // TODO Auto-generated method stub
        mdao.upload(sdto);
    }

    @Override
    public int timeCheck(ShowingDTO sdto) throws Exception {
        System.out.println("서비스 단계에서 timeCheck() 리턴값 체크 : " + mdao.timeCheck(sdto));
        int cnt = mdao.timeCheck(sdto);
        return cnt;
    }
}
