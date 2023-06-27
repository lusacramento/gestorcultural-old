package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.controller.user;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.User;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
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

    @GetMapping(value="/emailcadastrado/{email}")
    public Boolean findByEmail(@PathVariable("email") String email){
        User user = new User();
        user.setEmail(email);
        return this.userService.existsByEmail(email, user);
    }
    @PostMapping(value="/authentication")
    public String authentication(@RequestBody User user) throws UnsupportedEncodingException, NoSuchAlgorithmException {
            return this.userService.authentication(user);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public User save(@RequestBody User user) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        return this.userService.save(user);
    }

    @PutMapping("/{id}")
    public ResponseEntity<User> findByIdAndUpdate(@PathVariable String id, @RequestBody User user){
        user.setId(id);
        this.userService.findByIdAndUpdate(user);
        return ResponseEntity.ok(user);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> findByIdAndRemove(@PathVariable("id") String id){
       this.userService.findByIdAndRemove(id);
       return ResponseEntity.noContent().build();
    }

}
