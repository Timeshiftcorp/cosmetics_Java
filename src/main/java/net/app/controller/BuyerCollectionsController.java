package net.app.controller;

import net.app.DAO.viewDAO.BalanceDao;
import net.app.DAO.viewDAO.BuyerCollectionsDao;
import net.app.DAO.viewDAO.purchaseDao;
import net.app.models.views.BalanceOfRepresentations;
import net.app.models.views.Buyerscollections;
import net.app.models.views.PurchaseCosts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuyerCollectionsController {


    @Autowired
    private BuyerCollectionsDao collectionsDao;
    @RequestMapping(value = "/buyerscollections")
    public String balance(Model model)
    {
        model.addAttribute("buyerscollections",collectionsDao.findAll());
        return "shows/buyerscollections";
    }
    @RequestMapping(value = "/buyerscollections", method = RequestMethod.POST)
    public String balance(@ModelAttribute("buyerscollections") Buyerscollections buyerscollections, BindingResult bindingResult, Model model) {

        collectionsDao.save(buyerscollections);
        return "redirect:/buyerscollections";
    }
}
