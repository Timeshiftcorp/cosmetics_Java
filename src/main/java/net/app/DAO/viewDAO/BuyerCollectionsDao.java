package net.app.DAO.viewDAO;


import net.app.models.views.BalanceOfRepresentations;
import net.app.models.views.Buyerscollections;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BuyerCollectionsDao extends JpaRepository<Buyerscollections, Integer> {
    @Override
    List<Buyerscollections> findAll();
}
