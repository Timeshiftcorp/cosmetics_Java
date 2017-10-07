package net.app.DAO;


import net.app.models.mods.Card;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CardDao extends JpaRepository<Card, Integer> {
    @Override
    List<Card> findAll();
}
