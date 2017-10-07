package net.app.DAO.viewDAO;


import net.app.models.mods.Agency;
import net.app.models.views.Agencycosts;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AgencyCostDao extends JpaRepository<Agencycosts, Integer> {
    @Override
    List<Agencycosts> findAll();
}
