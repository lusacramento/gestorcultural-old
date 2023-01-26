package br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access;

import br.com.gerenciadordeprojetosculturais.gerenciadordeprojetosculturais.model.entity.user.access.acessType.AccessType;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Access {
    private String id;
    private String projectId;
    private AccessType accessType;

    public Access(String id, String projectId, AccessType accessType) {
        this.id = id;
        this.projectId = projectId;
        this.accessType = accessType;
    }

}
