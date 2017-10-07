package net.app.DAO;


import net.app.models.views.PurchaseCosts;
import net.app.models.views.ReportProfitToCustomers;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReportDao extends JpaRepository<ReportProfitToCustomers, Integer> {
    @Override
    List<ReportProfitToCustomers> findAll();
}
