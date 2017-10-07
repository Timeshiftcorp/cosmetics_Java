package net.app.DAO.viewDAO;


import net.app.models.views.IncomesOfRepresentativeOffices;
import net.app.models.views.Popularcollection;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PopularDao extends JpaRepository<Popularcollection, Integer> {
    @Override
    List<Popularcollection> findAll();
}
