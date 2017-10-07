package net.app.controller;

import net.app.DAO.BuyersDao;
import net.app.DAO.CollectionsDao;
import net.app.models.mods.Buyers;
import net.app.models.mods.Collections;
import net.app.service.BuyerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CollectionsController {


    @Autowired
    private CollectionsDao collectionsDao;
    @RequestMapping(value = {"/","/collections"})
    public String collections(Model model)
    {
        model.addAttribute("collections",collectionsDao.findAll());
        model.addAttribute("collection",new Collections());

        return "collections";
    }
    @RequestMapping(value = {"/","/collections"}, method = RequestMethod.POST)
    public String collections(@ModelAttribute("collections") Collections collections, BindingResult bindingResult, Model model) {

        collectionsDao.save(collections);
        return "redirect:/collections";
    }
}
