package net.app.service;

import net.app.models.Pictures;

/**
 * Created by times on 22.04.2017.
 *
 * {@link net.app.models.Pictures}
 */
public interface PictureService  {

    void save(Pictures user);

    Pictures findByName(String pictureName);

}
