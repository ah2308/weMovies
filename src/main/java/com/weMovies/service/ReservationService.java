package com.weMovies.service;

import java.util.List;

import com.weMovies.dto.ShowingDTO;

public interface ReservationService {

    public List<ShowingDTO> showList(ShowingDTO sdto) throws Exception;

    public List<ShowingDTO> listInfo(String title) throws Exception;
}
