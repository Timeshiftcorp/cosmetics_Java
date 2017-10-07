package net.app.DAO.viewDAO;


import net.app.models.views.ReportProfitToCustomers;
import net.app.models.views.ServiceCard;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface Service_CardDao extends JpaRepository<ServiceCard, Integer> {
    @Override
    List<ServiceCard> findAll();
}
