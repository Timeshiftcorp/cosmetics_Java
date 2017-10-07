package net.app.controller;

import net.app.DAO.viewDAO.AgencyCostDao;
import net.app.models.mods.Buyers;
import net.app.models.views.Agencycosts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AgencyCostController {


    @Autowired
    private AgencyCostDao agencyCostDao;
    @RequestMapping(value = "/agencycost")
    public String Buyer(Model model)
    {
        model.addAttribute("agencycost",agencyCostDao.findAll());
        return "shows/agencycost";
    }
    @RequestMapping(value = "/agencycost", method = RequestMethod.POST)
    public String Buyer(@ModelAttribute("agencyDao") Agencycosts agency, BindingResult bindingResult, Model model) {

        agencyCostDao.save(agency);
        return "redirect:/agencycost";
    }
}
