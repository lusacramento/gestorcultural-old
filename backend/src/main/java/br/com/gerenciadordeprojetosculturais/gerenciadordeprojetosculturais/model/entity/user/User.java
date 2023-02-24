package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.Access;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.ArrayList;
import java.util.List;
@Getter
@Setter
@Document

public class User {
    @Id
    private String id;
    private String name;
    private String email;
    private String password;
    private String hash;
   private boolean isAdmin;
   private boolean agree;
   private boolean isValidity;
 //   private List<Access> accessList;



}
