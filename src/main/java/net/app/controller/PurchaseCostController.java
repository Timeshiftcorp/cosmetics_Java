package net.app.controller;

import net.app.DAO.viewDAO.BalanceDao;
import net.app.DAO.viewDAO.purchaseDao;
import net.app.models.views.BalanceOfRepresentations;
import net.app.models.views.PurchaseCosts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PurchaseCostController {


    @Autowired
    private purchaseDao PurchaseDao;
    @RequestMapping(value = "/purchase")
    public String balance(Model model)
    {
        model.addAttribute("purchase",PurchaseDao.findAll());
        return "shows/purchase";
    }
    @RequestMapping(value = "/purchase", method = RequestMethod.POST)
    public String balance(@ModelAttribute("purchase") PurchaseCosts purchase, BindingResult bindingResult, Model model) {

        PurchaseDao.save(purchase);
        return "redirect:/purchase";
    }
}
