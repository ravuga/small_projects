package com.example.bookmyseats.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Event {
    @RequestMapping("/event")
    public String eventView(){
        return "events/event";
    }
    @RequestMapping("/event/concert")
    public String eventConcertView(){
        return "events/concert/concert";
    }
    @RequestMapping("/event/movie")
    public String eventMovieView(){
        return "events/movie/movie";
    }
    @RequestMapping("/event/party")
    public String eventPartyView(){
        return "events/party/party";
    }
    @RequestMapping("/event/show")
    public String eventShowsView(){
        return "events/show/show";
    }
}
