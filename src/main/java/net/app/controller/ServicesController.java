package net.app.controller;

import net.app.DAO.CardDao;
import net.app.DAO.ServicesDao;
import net.app.models.mods.Card;
import net.app.models.mods.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ServicesController {


    @Autowired
    private ServicesDao servicesDao;
    @RequestMapping(value = "/services")
    public String Buyer(Model model)
    {
        model.addAttribute("services",servicesDao.findAll());
        model.addAttribute("service",new Services());
        return "services";
    }
    @RequestMapping(value = "/services", method = RequestMethod.POST)
    public String Buyer(@ModelAttribute("services") Services services, BindingResult bindingResult, Model model) {

        servicesDao.save(services);
        return "redirect:/services";
    }
}
