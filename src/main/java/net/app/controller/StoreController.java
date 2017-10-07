package net.app.controller;

import net.app.DAO.CardDao;
import net.app.DAO.StoreDao;
import net.app.models.mods.Card;
import net.app.models.mods.Store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {


    @Autowired
    private StoreDao storeDao;
    @RequestMapping(value = "/store")
    public String Buyer(Model model)
    {
        model.addAttribute("store",storeDao.findAll());
        model.addAttribute("stor",new Store());
        return "store";
    }
    @RequestMapping(value = "/store", method = RequestMethod.POST)
    public String Buyer(@ModelAttribute("store") Store store, BindingResult bindingResult, Model model) {

        storeDao.save(store);
        return "redirect:/store";
    }
}
