package net.app.DAO;


import net.app.models.mods.Agency;
import net.app.models.mods.EmplPost;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface empl_postDao extends JpaRepository<EmplPost, Integer> {
    @Override
    List<EmplPost> findAll();
}
