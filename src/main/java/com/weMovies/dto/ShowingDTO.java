package com.weMovies.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ShowingDTO {
    private String title;
    private String genres;
    private String overview;
    private String cinema;
    private String screen;
    private String start_day;
    private String end_day;
    private String showtime;

    public ShowingDTO() {
    }

    public ShowingDTO(String title, String showtime) {
        this.title = title;
        this.showtime = showtime;
    }

    public ShowingDTO(String title, String start_day, String end_day, String time, String cinema, String screen) {
        this.title = title;
        this.start_day = start_day;
        this.end_day = end_day;
        this.showtime = time;
        this.cinema = cinema;
        this.screen = screen;
    }

    public ShowingDTO(String start_day, String end_day, String time, String cinema, String screen) {
        this.start_day = start_day;
        this.end_day = end_day;
        this.showtime = time;
        this.cinema = cinema;
        this.screen = screen;
    }

    public ShowingDTO(String title, String genres, String overview, String cinema, String screen, String start_day,
            String end_day, String showtime) {
        this.title = title;
        this.genres = genres;
        this.overview = overview;
        this.cinema = cinema;
        this.screen = screen;
        this.start_day = start_day;
        this.end_day = end_day;
        this.showtime = showtime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenres() {
        return genres;
    }

    public void setGenres(String genres) {
        this.genres = genres;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public String getCinema() {
        return cinema;
    }

    public void setCinema(String cinema) {
        this.cinema = cinema;
    }

    public String getScreen() {
        return screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }

    public String getStart_day() {
        return start_day;
    }

    public void setStart_day(String start_day) {
        this.start_day = start_day;
    }

    public String getEnd_day() {
        return end_day;
    }

    public void setEnd_day(String end_day) {
        this.end_day = end_day;
    }

    public String getShowtime() {
        return showtime;
    }

    public void setShowtime(String showtime) {
        this.showtime = showtime;
    }

    @Override
    public String toString() {
        return "ShowingDTO [title=" + title + ", genres=" + genres + ", overview=" + overview + ", cinema=" + cinema
                + ", screen=" + screen + ", start_day=" + start_day + ", end_day=" + end_day + ", showtime=" + showtime
                + "]";
    }

}
