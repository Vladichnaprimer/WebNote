package com.galagan.note.domain;


import org.hibernate.annotations.ForeignKey;
import org.hibernate.annotations.Type;
import org.springframework.context.annotation.Scope;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import java.util.*;

@Entity
@Table
@Component
@Transactional
public class User  {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String name;

    @Column
    private String email;


    @Column
    private String password;

    @Column
    @OneToMany(mappedBy = "userId")
    private List<Note> noteList;

    @Column(name = "id_role")
    @Enumerated
    private UserRole idRole = UserRole.ROLE_USER;

    public User() {
    }

    public User(Long id) {
        this.id = id;
    }

    public User(String name) {
        this.name = name;
    }

    public UserRole getIdRole() {
        return idRole;
    }

    public void setIdRole(UserRole idRole) {
        this.idRole = idRole;
    }

    public List<Note> getNoteList() {
        return noteList;
    }

    public void setNoteList(List<Note> noteList) {
        this.noteList = noteList;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
