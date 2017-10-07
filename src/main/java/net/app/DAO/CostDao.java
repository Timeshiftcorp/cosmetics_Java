package net.app.DAO;


import net.app.models.mods.Costs;
import net.app.models.mods.EmplPost;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CostDao extends JpaRepository<Costs, Integer> {
    @Override
    List<Costs> findAll();
}
