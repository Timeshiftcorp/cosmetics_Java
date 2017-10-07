package net.app.DAO;


import net.app.models.mods.Buyers;
import net.app.models.mods.Store;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StoreDao extends JpaRepository<Store, Integer> {
    @Override
    List<Store> findAll();
}
