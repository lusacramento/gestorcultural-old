package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.repository;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.User;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface UserRepository extends MongoRepository<User, String> {
    User queryFirstByName(String name, User user);
}
