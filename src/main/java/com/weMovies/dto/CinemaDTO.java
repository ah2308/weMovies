package com.weMovies.dto;

public class CinemaDTO {
    
    private String c_name;
    private int c_theater;
    
    public CinemaDTO() {}
    public CinemaDTO(String c_name, int c_theater) {
        this.c_name = c_name;
        this.c_theater = c_theater;
    }
    public String getC_name() {
        return c_name;
    }
    public void setC_name(String c_name) {
        this.c_name = c_name;
    }
    public int getC_theater() {
        return c_theater;
    }
    public void setC_theater(int c_theater) {
        this.c_theater = c_theater;
    }
    
}
