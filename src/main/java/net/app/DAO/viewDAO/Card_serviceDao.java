package net.app.DAO.viewDAO;


import net.app.models.mods.Card;
import net.app.models.mods.CardService;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface Card_serviceDao extends JpaRepository<CardService, Integer> {
    @Override
    List<CardService> findAll();
}
