package org.example.domain;

/**
 * @author Danilo
 */
public class UsuarioBuilder {

    private Usuario usuario = new Usuario();
    private Role role = new Role();

    public static UsuarioBuilder novoUsuarioBuilder() {
        return new UsuarioBuilder();
    }

    public UsuarioBuilder email(String email) {
        usuario.setEmail(email);
        return this;
    }

    public UsuarioBuilder senha(String senha) {
        usuario.setSenha(senha);
        return this;
    }

    public UsuarioBuilder id(int id) {
        usuario.setId(id);
        return this;
    }

    public UsuarioBuilder role(Role role) {
        this.role.setId(role.getId());
        return this;
    }

    public Usuario constroi() {
        usuario.setRole(this.role);
        return usuario;
    }

}
