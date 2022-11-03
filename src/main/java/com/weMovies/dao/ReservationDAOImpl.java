package com.weMovies.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.weMovies.dto.ShowingDTO;

@Repository("reservationDAO")
public class ReservationDAOImpl implements ReservationDAO{

    @Inject 
    SqlSession sqlSession;
    
    @Override
    public List<ShowingDTO> showList(ShowingDTO sdto) throws Exception {
        return sqlSession.selectList("show.list", sdto);
    }

    @Override
    public List<ShowingDTO> listInfo(String title) throws Exception {
        // TODO Auto-generated method stub
        return sqlSession.selectList("show.listInfo", title);
    }
}
