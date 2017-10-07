package net.app.DAO;


import net.app.models.mods.Agency;
import net.app.models.mods.Store;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AgencyDao extends JpaRepository<Agency, Integer> {
    @Override
    List<Agency> findAll();
}
