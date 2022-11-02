package com.weMovies.dao;

import java.util.List;

import com.weMovies.dto.ShowingDTO;

public interface ReservationDAO {

    public List<ShowingDTO> showList(ShowingDTO sdto) throws Exception;
    
    public List<ShowingDTO> listInfo(String title) throws Exception;
}
