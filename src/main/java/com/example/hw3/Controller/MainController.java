package com.example.hw3.Controller;

import com.example.hw3.Models.InventoryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class MainController {
    @Autowired
    InventoryRepo in;

    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mnv = new ModelAndView("index");
        mnv.addObject("Inventorylist", in.findAll());

        return mnv;
    }
}
