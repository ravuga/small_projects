package com.eclerx.app;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.net.HttpURLConnection;
import java.net.URL;

@Controller
public class Index {
    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/checkUrl")
    public String checkUrl(@RequestParam String url, Model model){
        String Response;
        try {
            URL inputUrl = new URL(url);
            HttpURLConnection urlConnection = (HttpURLConnection) inputUrl.openConnection();
            if (urlConnection.getResponseCode() == HttpURLConnection.HTTP_OK) {
                Response = "Response from " + inputUrl + " : Status -> OK."; model.addAttribute("message",Response);return "index";
            } else if(urlConnection.getResponseCode() == HttpURLConnection.HTTP_BAD_GATEWAY){
                Response = "Response from " + inputUrl + " Status -> BAD GATEWAY.";model.addAttribute("message",Response);return "index";
            }else if(urlConnection.getResponseCode() == HttpURLConnection.HTTP_BAD_REQUEST) {
                Response = "Response from " + inputUrl + " Status -> BAD REQUEST. "; model.addAttribute("message",Response);return "index";
            }else if(urlConnection.getResponseCode() == HttpURLConnection.HTTP_CLIENT_TIMEOUT){
                Response = "Response from " + inputUrl + " Status -> CLIENT TIMEOUT. "; model.addAttribute("message",Response);return "index";
            }else if(urlConnection.getResponseCode()== HttpURLConnection.HTTP_FORBIDDEN){
                Response = "Response from " +inputUrl+ " Status -> FORBIDDEN"; model.addAttribute("message",Response);return "index";
            }else {
                Response = "Response from " + inputUrl + " : Status -> "+urlConnection.getResponseMessage() + ".";model.addAttribute("message",Response);return "index";

            }
        } catch (Exception E_Msg) {
            Response = "Unknown Host. Please Check the URL."; model.addAttribute("message",Response);return "index";
        }
    }
}
