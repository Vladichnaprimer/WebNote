package com.galagan.note.service;

import com.galagan.note.dao.UserDao;
import com.galagan.note.dao.UserDaoImpl;
import com.galagan.note.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService, UserDetailsService{

    @Autowired
    private UserDao userDao;

    @Transactional
    public void save(User user) {
        userDao.save(user);
    }

    public void delete(User user){
        userDao.delete(user);
    }

    public User get(User user){
        return userDao.get(user);
    }

    public List<User> getAll(){
        return userDao.getAll();
    }

    public void update(User user){
        userDao.update(user);
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        // ? ??????? ?????? ??????? UserService ???????? User
        User user = new User();
        user.setName("vladich");

        User u = get(user);

        // ????????? ???? ??? ????? ????????????
        Set<GrantedAuthority> roles = new HashSet();
        roles.add(new SimpleGrantedAuthority(user.getName()));

        // ?? ????????? ??????????? ????? ????????? ?????? UserDetails
        // ??????? ???????? ????????? ???????? ????????????? ????? ? ??????
        // ? ??? ????? ????????????????? ????????????
        UserDetails userDetails =
                new org.springframework.security.core.userdetails.User(user.getEmail(),
                        user.getPassword(),
                        roles);

        return userDetails;
    }
}
