package com.weMovies.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.weMovies.dto.MovieDTO;
import com.weMovies.dto.ShowingDTO;
import com.weMovies.service.MovieService;

@Controller
@RequestMapping("/movie/*")
public class MoviesController {

    @Autowired
    private MovieService movieService;
    
    /* /movie/list 라는 주소를 통해 관리자 페이지의 메인화면으로 보내줍니다. 현재 등록된 영화의 리스를 보여주고
     * 영화 리스트에서 DB에서 삭제와 API에서 영화정보 업데이트를 할 수 있도록 버튼을 통해 컨트롤러 맵핑을 설정해주었습니다.
     */
    @RequestMapping("/list")
    public String getList(MovieDTO movieDTO, Model model) throws Exception{
        List<MovieDTO> list = movieService.movieList(movieDTO);
        model.addAttribute("list", list);
        return "admin/admin_index";
    }
    /*
     * 영화 리스트에서 휴지통 아이콘을 누를시 맵핑됩니다.
     * 영화의 title 정보를 받아와 select문을 통해 선택한뒤 
     * 해당하는 영화 정보의 row를 삭제합니다.
     * */
    @RequestMapping("/delete")
    public String delList(HttpServletRequest request) throws Exception {
        String title = request.getParameter("title");
        movieService.delMovie(title);
        return "redirect:/movie/list";
    }
    
    @RequestMapping("/upload")
    public String upload(HttpServletRequest request, ShowingDTO sdto) throws Exception {
        String days = request.getParameter("days");
        String[] day = days.split(" - ");
        String title = request.getParameter("title");
        String genres = request.getParameter("genres");
        String overview = request.getParameter("overview");
        String cinema = request.getParameter("cinema");
        String screen = request.getParameter("screen");
        String showtimes = request.getParameter("showtimes");
        String poster_path = request.getParameter("poster_path");
        String runtime = request.getParameter("runtime");
        ShowingDTO sDTO = new ShowingDTO(title, genres, overview, cinema, screen, day[0], day[1], showtimes, poster_path, runtime);
        movieService.upload(sDTO);
        return "redirect:/movie/list";
    }
    @ResponseBody
    @RequestMapping("/timeCheck")
    public int timeCheck(@RequestParam("start_day") String start_day, @RequestParam("end_day") String end_day, @RequestParam("time") String time, @RequestParam("cinema") String cinema, @RequestParam("screen") String screen) throws Exception {
        ShowingDTO sdto = new ShowingDTO(start_day, end_day, time, cinema, screen);
        int cnt = movieService.timeCheck(sdto);
        return cnt;
    }
}
