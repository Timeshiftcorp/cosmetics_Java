package net.app.service;


import net.app.models.User;

/**
 * Created by times on 22.04.2017.
 *
 * Service Class for {@link net.app.models.User}
 */
public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
