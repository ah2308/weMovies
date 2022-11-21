package com.weMovies.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.weMovies.dto.ShowingDTO;
import com.weMovies.service.ReservationService;

@Controller
@RequestMapping("/ticket/*")
public class ReservationController {
    
    @Inject 
    private ReservationService resService;

    @RequestMapping(value="/res", method = RequestMethod.GET)
    public String ticketView(ShowingDTO sdto, Model model) throws Exception {
        List<ShowingDTO> list = resService.showList(sdto);
        model.addAttribute("list", list);
        return "ticket/ticket";
    }
    
    @RequestMapping(value="/ressub", method = RequestMethod.POST)
    public String ticketView2(@RequestParam("title") String title, Model model) throws Exception{
        System.out.println("title : " + title);
        List<ShowingDTO> listInfo = resService.listInfo(title);
        model.addAttribute("info", listInfo);
        return "ticket/ticket";
    }
}
