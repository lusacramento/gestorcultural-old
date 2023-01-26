package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.acessType;

import lombok.Getter;

@Getter

public enum AccessType {
    PROPONENT("Proponente"),
    COLLABORATOR("Colaborado"),
    READER("Leitor");

    private final String accessType;

    AccessType(String accessType){
        this.accessType = accessType;
    }
}
