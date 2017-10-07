package net.app.DAO;
import net.app.models.mods.TypeCosmetic;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by times on 22.04.2017.
 */
public interface typeCosmetic extends JpaRepository<TypeCosmetic, Integer> {

    @Override
    Page<TypeCosmetic> findAll(Pageable pageable);



}
