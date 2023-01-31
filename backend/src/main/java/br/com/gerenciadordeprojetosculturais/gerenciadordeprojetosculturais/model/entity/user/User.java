package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.Access;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;
@Getter
@Setter
@Document
@SuppressWarnings({"UnusedReturnValue", "SameParameterValue"})
public class User {
    @Id
    private String id;
    private String name;
    private String email;
    private String pwd;
    private boolean isAdmin;
    private List<Access> accessList;

    public User(String id, String email, String pwd, boolean isAdmin, List<Access> accessList) {
        this.id = id;
        this.email = email;
        this.pwd = pwd;
        this.isAdmin = isAdmin;
        this.accessList = accessList;
    }

    public String getId() {
        return id;
    }

    public String getEmail() {
        return this.email;
    }

    public String getPwd() {
        return this.pwd;
    }

    public boolean getIsAdmin() {
        return this.isAdmin;
    }

    public List<Access> getAccessList() {
        return this.accessList;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setIsAdmin(boolean isAdmin, String hash) {
        // variable tests only development
        String hashSecurity = "abcdef";
        if(hash.equals(hashSecurity))
            this.isAdmin = isAdmin;
    }

    Access addAccess(Access access){
        this.accessList.add(access);
        return access;
    }

    boolean removeAccess(String id){
        int count = 0;
        for (Access access: accessList
             ) {
            if( id.equals(access.getId())) {
                this.accessList.remove(count);
                return true;
            }
            ++count;
        }
        return false;
    }
}
