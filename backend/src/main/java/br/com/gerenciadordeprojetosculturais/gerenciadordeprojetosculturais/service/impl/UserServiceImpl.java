package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service.impl;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.exception.NotFoundException;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.User;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.repository.UserRepository;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service.UserService;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service.Utils;
import org.bson.types.ObjectId;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Optional;

@Service
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
    public boolean existsByEmail(String email, User user) {
        User response = this.userRepository.queryFirstByEmail(email, user);
        if (response != null)
            return true;
        return false;
    }

    @Override
    @Transactional
    public User save(@NotNull User user) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        user.setPassword(Utils.generateHash(user.getPassword()));
        user.setHash(Utils.generateHash(new ObjectId().toString()));
        if(existsByEmail(user.getEmail(), user)){
            throw new NotFoundException("Já existe usuário cadastrado com este email!");
        }
        return this.userRepository.save(user);
    }

    @Override
    @Transactional
    public User findByIdAndUpdate(User user) {
        if(!this.userRepository.existsById(user.getId()))
            throw new NotFoundException("Usuário não encontrado!");
        return this.userRepository.save(user);
    }

    @Override
    @Transactional
    public void findByIdAndRemove(String id) {
            if(!this.exists(id))
                throw new NotFoundException("Usuário não encontrado!");
            this.userRepository.deleteById(id);

    }
}
