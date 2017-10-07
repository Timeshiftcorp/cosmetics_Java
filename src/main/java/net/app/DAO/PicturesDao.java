package net.app.DAO;

import net.app.models.Pictures;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by times on 22.04.2017.
 */
public interface PicturesDao extends JpaRepository<Pictures, Long> {

    Pictures findByName(String name);


    @Override
    List<Pictures> findAll() ;


}
