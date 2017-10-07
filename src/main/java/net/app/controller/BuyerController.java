package net.app.controller;

import net.app.DAO.BuyersDao;
import net.app.models.mods.Buyers;
import net.app.service.BuyerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuyerController {

    @Autowired
    private BuyerService buyerService;

    @Autowired
    private BuyersDao buyersDao;
    @RequestMapping(value = "/buyer")
    public String Buyer(Model model)
    {
        model.addAttribute("buyers",buyerService.findAll());
        model.addAttribute("buyer",new Buyers());
        return "buyer";
    }
    @RequestMapping(value = "/buyer", method = RequestMethod.POST)
    public String Buyer(@ModelAttribute("buyers") Buyers buyers, BindingResult bindingResult, Model model) {

        buyerService.save(buyers);
        Buyers buy =  buyersDao.findAll().get(0);
        buy.setSummDiscount(5000);
        buyerService.save(buy);
        return "redirect:/buyer";
    }
}
