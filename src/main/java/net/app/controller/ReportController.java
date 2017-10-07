package net.app.controller;

import net.app.DAO.CardDao;
import net.app.DAO.ReportDao;
import net.app.models.mods.Card;
import net.app.models.views.ReportProfitToCustomers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReportController {


    @Autowired
    private ReportDao reportDao;
    @RequestMapping(value = "/report")
    public String Buyer(Model model)
    {
        model.addAttribute("report",reportDao.findAll());
        return "shows/report";
    }
    @RequestMapping(value = "/report", method = RequestMethod.POST)
    public String Buyer(@ModelAttribute("report") ReportProfitToCustomers report, BindingResult bindingResult, Model model) {

        reportDao.save(report);
        return "redirect:/report";
    }
}
