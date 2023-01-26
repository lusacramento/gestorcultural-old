package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service.impl;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.User;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.repository.UserRepository;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class UserServiceImpl implements UserService {
    
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public List<User> findAll() {
        return this.userRepository.findAll();
    }

    @Override
    public Optional<User> findById(String id) {
        return this.userRepository.findById(id);
    }

    @Override
    public User findByName(String name, User user) {
        return this.userRepository.queryFirstByName(name, user);
    }

    @Override
    public boolean exists(String id) {
        return this.userRepository.existsById(id);
    }

    @Override
    public User save(User user) {
        return this.userRepository.save(user);
    }

    @Override
    public User findByIdAndUpdate(User user) {
        if(this.userRepository.existsById(user.getId()))
        return this.userRepository.save(user);
        return null;
    }

    @Override
    public boolean findByIdAndRemove(String id) {
        try {
                    this.userRepository.deleteById(id);
                    return true;
        } catch (Exception ex){
            return false;
        }
    }
}
