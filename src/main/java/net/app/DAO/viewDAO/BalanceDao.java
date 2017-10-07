package net.app.DAO.viewDAO;


import net.app.models.views.BalanceOfRepresentations;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BalanceDao extends JpaRepository<BalanceOfRepresentations,Integer> {
    @Override
    List<BalanceOfRepresentations> findAll();
}
