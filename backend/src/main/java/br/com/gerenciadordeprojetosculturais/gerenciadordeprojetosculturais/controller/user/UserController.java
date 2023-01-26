package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.controller.user;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.User;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.Access;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin(origins = "http://localhost:8080")
@RestController
@RequestMapping("/api/usuarios")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public List<User> findAll(){
        return this.userService.findAll();
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<User> findById(@PathVariable("id") String id){
        return this.userService.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public User save(@RequestBody User user){
        System.out.println("bang");
        return this.userService.save(user);
    }

    @PutMapping
    public User findByIdAndUpdate(@RequestBody User user){
        return user;
    }

    @DeleteMapping("/{id}")
    public boolean findByIdAndRemove(@PathVariable("id") String id){
        return true;
    }
}
