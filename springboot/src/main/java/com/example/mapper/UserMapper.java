package com.example.mapper;


import com.example.entity.User;
import net.sf.jsqlparser.util.validation.metadata.NamedObject;

import java.util.List;

public interface UserMapper {

    List<User> selectAll(String name);

    void deleteById(Integer id);

    void insert(User user);

    User selectByUsername(String username);

    void updateById(User user);

    User selectById(Integer id);
}
