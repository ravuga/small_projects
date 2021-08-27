package com.example.bookmyseats.repository.show;

import com.example.bookmyseats.repository.Event;

public class Show implements Event {
    String event_name;
    String event_start_time;
    String event_end_time;
    String event_location;
    String event_price;

    public Show(String event_name, String event_start_time, String event_end_time, String event_location, String event_price) {
        this.event_name = event_name;
        this.event_start_time = event_start_time;
        this.event_end_time = event_end_time;
        this.event_location = event_location;
        this.event_price = event_price;
    }

    public Show() {
        event_name = Event.event_name;
        event_start_time = Event.event_start_time;
        event_end_time = Event.event_end_time;
        event_location = Event.event_location;
        event_price = Event.event_location;
    }

    public String getEvent_name() {
        return event_name;
    }

    public void setEvent_name(String event_name) {
        this.event_name = event_name;
    }

    public String getEvent_start_time() {
        return event_start_time;
    }

    public void setEvent_start_time(String event_start_time) {
        this.event_start_time = event_start_time;
    }

    public String getEvent_end_time() {
        return event_end_time;
    }

    public void setEvent_end_time(String event_end_time) {
        this.event_end_time = event_end_time;
    }

    public String getEvent_location() {
        return event_location;
    }

    public void setEvent_location(String event_location) {
        this.event_location = event_location;
    }

    public String getEvent_price() {
        return event_price;
    }

    public void setEvent_price(String event_price) {
        this.event_price = event_price;
    }
}
