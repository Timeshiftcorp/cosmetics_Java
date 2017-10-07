package net.app.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import net.app.models.mods.Collections;
import java.util.List;

public interface CollectionsDao extends JpaRepository<Collections, Integer> {


    @Override
    List<Collections> findAll();

}
