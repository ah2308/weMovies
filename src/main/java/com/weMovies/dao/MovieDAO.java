package com.weMovies.dao;

import java.util.List;

import com.weMovies.dto.CinemaDTO;
import com.weMovies.dto.MovieDTO;

public interface MovieDAO {
    //1차 데이터 수집
    public void apiLoad(MovieDTO mdto)throws Exception;
    //데이터 목록화해서 어드민화면에 보여줌
    public List<MovieDTO> movieList(MovieDTO movieDTO) throws Exception;
    //title값으로 영화 리스트에서 삭제
    public void delMovie(String title) throws Exception;
    //2차 상세 데이터 수집
    public void mvUpdate(MovieDTO mdto) throws Exception;
    //상영 영화 등록하는 곳에 영화정보 불러와줌
    public List<MovieDTO> mvUpload(int id) throws Exception;
    
    //상영 영화 등록하는 곳에 영화관 정보 불러와줌
    public List<CinemaDTO> cListUp(CinemaDTO cdto) throws Exception;
}
