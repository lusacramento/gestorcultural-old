package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.acessType.AccessType;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.jupiter.api.Assertions.*;

public class AccessTest {
    @Autowired
    private Access access;
    @BeforeEach
    void setUp() {
        access = this.createAccess();
    }

    public Access createAccess(){
        return new Access("888", "123", AccessType.PROPONENT);
    }

    @Test
    void getId() {
        assertEquals("888", access.getId());
    }

    @Test
    void getProjectId() {
        assertEquals("123", access.getProjectId());
    }

    @Test
    void getAccessType() {
        assertEquals(AccessType.PROPONENT, access.getAccessType());
    }

    @Test
    void setId() {
        access.setId("777");
        assertEquals("777", access.getId());

    }

    @Test
    void setProjectId() {
        access.setProjectId("456");
        assertEquals("456", access.getProjectId());
    }

    @Test
    void setAccessType() {
        access.setAccessType(AccessType.COLLABORATOR);
        assertEquals(AccessType.COLLABORATOR, access.getAccessType());
    }
}