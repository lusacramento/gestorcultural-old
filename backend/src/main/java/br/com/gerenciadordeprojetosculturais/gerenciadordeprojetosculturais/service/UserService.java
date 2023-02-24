package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.User;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Optional;

public interface UserService {
    List<User> findAll();
    Optional<User> findById(String id);
    User findByName(String name, User user);
    boolean exists(String id);
    boolean existsByEmail(String Email, User user);
    User save(User user) throws UnsupportedEncodingException, NoSuchAlgorithmException;
    User findByIdAndUpdate(User user);
    void findByIdAndRemove(String id);
}
