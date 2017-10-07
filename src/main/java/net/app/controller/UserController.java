package net.app.controller;

import net.app.DAO.PicturesDao;
import net.app.DAO.typeCosmetic;
import net.app.models.Pictures;
import net.app.models.mods.TypeCosmetic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by times on 22.04.2017.
 */
@Controller
public class UserController {


    @Autowired
    private PicturesDao pict;

    @Autowired
    private typeCosmetic cosmetic;


//    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
//    public String welcome(Model model) {
//
//        model.addAttribute("picture", new Pictures());
//        List<Pictures> p = pict.findAll();
//
//        model.addAttribute("pictures", p);
//
//
//        return "welcome";
//    }

    @RequestMapping(value = {"/types"}, method = RequestMethod.GET)
    public String types(Model model) {

        model.addAttribute("cosmetic", new TypeCosmetic());
        List<TypeCosmetic> p = cosmetic.findAll( );

        model.addAttribute("cosmetic", p);


        return "types";
    }


    @RequestMapping(value = "/welcome/buy", method = RequestMethod.POST)
    public @ResponseBody
    String Welcome(@RequestParam Long id,@RequestParam int count) {
        Pictures pp = pict.findOne(id);
        pict.delete(id);
        pp.setCount(pp.getCount()-1);
        pict.save(pp);

        return "redirect:/welcome";
    }

    @RequestMapping(value = "/welcome/delete", method = RequestMethod.POST)
    public @ResponseBody
    String delete(@RequestParam Long id) {
        pict.delete(id);

        return "redirect:/welcome";
    }


    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model) {
        return "admin";
    }

    @RequestMapping(value = "/admin/save", method = RequestMethod.POST, produces = "text/html;")
    public @ResponseBody
    String getAjax(@RequestParam String Name, @RequestParam byte[] img, @RequestParam String count, @RequestParam String description, @RequestParam String price) throws UnsupportedEncodingException, SQLException {


        Pictures picture = new Pictures();
        picture.setCount(Integer.parseInt(count));
        picture.setDescription(description);
        picture.setImage(img);
        picture.setName(Name);
        picture.setPrice(Integer.parseInt(price));
        pict.save(picture);
        return "order";
    }


}
