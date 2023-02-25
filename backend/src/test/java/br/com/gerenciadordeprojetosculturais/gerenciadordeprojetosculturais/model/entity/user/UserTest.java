package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.Access;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.AccessTest;
import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.acessType.AccessType;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class UserTest {

    @Autowired
    private User user;


    private List<Access> accessList;

    @BeforeEach
    void setUp() {
         AccessTest access;
        access = new AccessTest();
        this.accessList = new ArrayList<>();
         user = this.createUser();
         user.setId("123");
       // user.addAccess(new Access("221", "432", AccessType.READER));
       // this.accessList=user.getAccessList();
       // user.setIsAdmin(false, "abcdef");

    }

    User createUser(){
        User user1 = new User();
        user1.setEmail("123@123.com");
        user1.setId("321");
        user1.setPassword("123");
        user1.setHash("456");

        return  user1;
    }

    @Test
    void getId() {
        assertEquals("123", user.getId());
    }

    @Test
    void getEmail() {
        assertEquals("123@123.com", user.getEmail());
    }

    @Test
    void getPassword() {
        assertEquals("123", user.getPassword());
    }

    @Test
    void getHash() {
        assertEquals("456", user.getHash());
    }

    @Test
    void getIsAdmin() {
    //    assertFalse(user.getIsAdmin());
    }

    @Test
    void getAccess() {

        //assertEquals(accessList, user.getAccessList());
    }

    @Test
    void setId() {
        user.setId("321");
        assertEquals("321", user.getId());
    }

    @Test
    void setEmail() {
        user.setEmail("321@321.com");
        assertEquals("321@321.com", user.getEmail());
    }

    @Test
    void setPwd() {
        user.setPassword("321");
        assertEquals("321", user.getPassword());
    }

//    @Test
//    void setAdmin() {
//        user.setIsAdmin(true,"abcdef");
//        assertTrue(user.getIsAdmin());
//    }

//    @Test
//    void addAccess() {
//
//        int lastIndex = user.getAccessList().size() - 1;
//
//        assertEquals("221", user.getAccessList().get(lastIndex).getId());
//        assertEquals("432", user.getAccessList().get(lastIndex).getProjectId());
//        assertEquals(AccessType.READER, user.getAccessList().get(lastIndex).getAccessType());
//    }

/*    @Test
    void removeAccess(){
        boolean isDeleted = user.removeAccess("221");
         assertTrue(isDeleted);
         assertEquals(0, user.getAccessList().size());
    }*/
}