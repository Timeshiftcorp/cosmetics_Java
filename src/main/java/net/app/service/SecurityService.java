package net.app.service;

/**
 * Created by times on 22.04.2017.
 */
public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);

}
