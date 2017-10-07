package net.app.DAO.viewDAO;


import net.app.models.views.Buyerscollections;
import net.app.models.views.IncomesOfRepresentativeOffices;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IncomesDao extends JpaRepository<IncomesOfRepresentativeOffices, Integer> {
    @Override
    List<IncomesOfRepresentativeOffices> findAll();
}
