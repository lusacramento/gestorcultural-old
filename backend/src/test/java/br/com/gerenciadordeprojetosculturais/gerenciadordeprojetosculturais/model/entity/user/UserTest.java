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
        this.accessList.add(access.createAccess());
         user = this.createUser();

    }

    User createUser(){

        return  new User("123", "123@123.com", "123", false, accessList);
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
    void getPwd() {
        assertEquals("123", user.getPwd());
    }

    @Test
    void getIsAdmin() {
        assertFalse(user.getIsAdmin());
    }

    @Test
    void getAccess() {
        assertEquals(accessList, user.getAccessList());
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
        user.setPwd("321");
        assertEquals("321", user.getPwd());
    }

    @Test
    void setAdmin() {
        user.setIsAdmin(true,"abcdef");
        assertTrue(user.getIsAdmin());
    }

    @Test
    void addAccess() {
        user.addAccess(new Access("221", "432", AccessType.READER));
        int lastIndex = user.getAccessList().size() - 1;

        assertEquals("221", user.getAccessList().get(lastIndex).getId());
        assertEquals("432", user.getAccessList().get(lastIndex).getProjectId());
        assertEquals(AccessType.READER, user.getAccessList().get(lastIndex).getAccessType());
    }

    @Test
    void removeAccess(){
        user.addAccess(new Access("221", "432", AccessType.READER));
        boolean isDeleted = user.removeAccess("221");
         assertTrue(isDeleted);
         assertEquals(1, user.getAccessList().size());


    }
}