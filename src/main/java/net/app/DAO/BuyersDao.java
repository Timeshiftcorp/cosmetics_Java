package net.app.DAO;


import net.app.models.mods.Buyers;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BuyersDao extends JpaRepository<Buyers, Integer> {

    Buyers findByFio(String name);
    @Override
    List<Buyers> findAll();




}
