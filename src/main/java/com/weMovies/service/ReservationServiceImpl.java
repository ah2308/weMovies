package com.weMovies.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.weMovies.dao.ReservationDAO;
import com.weMovies.dto.ShowingDTO;

@Service("resService")
public class ReservationServiceImpl implements ReservationService{
    
    @Inject
    ReservationDAO rdao;
    
    @Override
    public List<ShowingDTO> showList(ShowingDTO sdto) throws Exception {
        return rdao.showList(sdto);
    }

    @Override
    public List<ShowingDTO> listInfo(String title) throws Exception {
        return rdao.listInfo(title);
    }
}
