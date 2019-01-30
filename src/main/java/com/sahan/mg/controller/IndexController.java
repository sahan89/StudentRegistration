package com.sahan.mg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by sahan on 2019-01-29.
 */
@Controller
@RequestMapping(value = "/")
public class IndexController {

    public ModelAndView loadIndexPage() {
        ModelAndView model = new ModelAndView("index");
        return model;
    }
}
