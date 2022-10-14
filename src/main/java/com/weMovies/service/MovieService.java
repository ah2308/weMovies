package com.weMovies.service;

import java.util.List;

import com.weMovies.dto.CinemaDTO;
import com.weMovies.dto.MovieDTO;
import com.weMovies.dto.ShowingDTO;

public interface MovieService {
    
    // api에서 데이터값을 1차 추출
    public void apiLoad(MovieDTO mdto)throws Exception;
    
    public List<MovieDTO> movieList(MovieDTO movieDTO) throws Exception;
    
    public void delMovie(String title) throws Exception;
    
    public void mvUpdate(MovieDTO mdto) throws Exception;
    
    public List<MovieDTO> mvUpload(int id) throws Exception;
    
    public List<CinemaDTO> cListUp(CinemaDTO cdto) throws Exception;
    
    public void upload(ShowingDTO sdto) throws Exception;
    
    public int timeCheck(ShowingDTO sdto) throws Exception;
}
