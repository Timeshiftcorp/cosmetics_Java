package net.app.service;

import net.app.DAO.BuyersDao;
import net.app.models.User;
import net.app.models.mods.Buyers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by times on 06.10.2017.
 * Implemetation {@link BuyerService}
 */
@Service
public class BuyerServiceImpl implements BuyerService {


    @Autowired
    private BuyersDao buyersDao;

    @Override
    public void save(Buyers buyers) {

        buyersDao.save(buyers);
    }

    @Override
    public Buyers findByFio(String fio) {
        return buyersDao.findByFio(fio);
    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void update(int id, Buyers buyers) {

    }

    @Override
    public List<Buyers> findAll() {
        return buyersDao.findAll();
    }


}
