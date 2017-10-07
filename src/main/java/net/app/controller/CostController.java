package net.app.controller;

import net.app.DAO.CardDao;
import net.app.DAO.CostDao;
import net.app.models.mods.Card;
import net.app.models.mods.Costs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CostController {


    @Autowired
    private CostDao costDao;
    @RequestMapping(value = "/costs")
    public String Buyer(Model model)
    {
        model.addAttribute("costs",costDao.findAll());
        return "/costs";
    }
    @RequestMapping(value = "/costs", method = RequestMethod.POST)
    public String Buyer(@ModelAttribute("costs") Costs costs, BindingResult bindingResult, Model model) {

        costDao.save(costs);
        return "redirect:/costs";
    }
}
