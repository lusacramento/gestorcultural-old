package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.User;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public interface UserService {
    List<User> findAll();
    Optional<User> findById(String id);
    User findByName(String name, User user);
    boolean exists(String id);
    User save(User user);
    User findByIdAndUpdate(User user);
    void findByIdAndRemove(String id);
}
