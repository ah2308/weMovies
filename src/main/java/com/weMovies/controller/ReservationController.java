package com.weMovies.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
    @Inject 
    private ReservationService resService;

    @RequestMapping("/resinfo")
    public String infotest(ShowingDTO sdto, Model model, HttpServletRequest request) throws Exception {
        String title = request.getParameter("title");
        System.out.println(title);
        List<ShowingDTO> info = resService.listInfo(title);
        model.addAttribute("info", info);
        model.addAttribute("title", title);
        return "/ticket/ticket";
    }
}
