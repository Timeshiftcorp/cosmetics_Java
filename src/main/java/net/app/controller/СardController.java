package net.app.controller;

import net.app.DAO.CardDao;
import net.app.DAO.viewDAO.AgencyCostDao;
import net.app.models.mods.Card;
import net.app.models.views.Agencycosts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class СardController {


    @Autowired
    private CardDao cardDao;
    @RequestMapping(value = "/card")
    public String Buyer(Model model)
    {
        model.addAttribute("card",cardDao.findAll());
        return "shows/card";
    }
    @RequestMapping(value = "/card", method = RequestMethod.POST)
    public String Buyer(@ModelAttribute("card") Card card, BindingResult bindingResult, Model model) {

        cardDao.save(card);
        return "redirect:/card";
    }
}
