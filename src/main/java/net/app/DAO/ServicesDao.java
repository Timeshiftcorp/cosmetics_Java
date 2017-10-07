package net.app.DAO;


import net.app.models.mods.CardService;
import net.app.models.mods.Services;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ServicesDao extends JpaRepository<Services, Integer> {
    @Override
    List<Services> findAll();
}
