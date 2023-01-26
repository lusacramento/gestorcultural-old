package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.controller.user;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.User;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.Access;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
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
        List<User> userList = new ArrayList<User>();
        List<Access> accessList = new ArrayList<Access>();
        userList.add(new User("123456", "joao@123.com", "654321", false,  accessList));
        return userService.findAll();
    }

    @GetMapping(value = "/{id}")
    public User findById(@PathVariable("id") String id){
        System.out.println("id: " + id);
        List<User> userList = new ArrayList<User>();
        List<Access> accessList = new ArrayList<Access>();
        User user = new User("098765", "artur@321.com", "345678", false,  accessList);
        userList.add(user);
        for (User user1: userList
             ) {
            if (user1.getId()==id){
                user = user1;

            }
        }
        return user;
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
