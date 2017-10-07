package net.app.service;

import net.app.DAO.PicturesDao;
import net.app.models.Pictures;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by times on 22.04.2017.
 * {@link PictureServiceImpl}
 * {@link PictureService}
 */

public class PictureServiceImpl implements PictureService {

    @Autowired
    private PicturesDao picturesDao;


    @Override
    public void save(Pictures pictures) {


        picturesDao.save(pictures);

    }

    @Override
    public Pictures findByName(String picturename) {

        return picturesDao.findByName(picturename);

    }
}
