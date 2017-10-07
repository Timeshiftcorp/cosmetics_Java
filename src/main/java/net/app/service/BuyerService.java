package net.app.service;


import net.app.models.mods.Buyers;

import java.util.List;

/**
 * Created by times on 06.10.2017.
 *
 * Service Class for {@link Buyers}
 */
public interface BuyerService {



    void save(Buyers buyers);

    Buyers findByFio(String fio);

    void delete(int id);
    void update (int id,Buyers buyers);

    List<Buyers> findAll();
}
