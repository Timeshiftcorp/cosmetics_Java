package net.app.DAO.viewDAO;


import net.app.models.views.Popularcollection;
import net.app.models.views.PurchaseCosts;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface purchaseDao extends JpaRepository<PurchaseCosts, Integer> {
    @Override
    List<PurchaseCosts> findAll();
}
