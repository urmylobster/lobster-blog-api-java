package com.lobster.tobebraverman.dao;

import com.lobster.tobebraverman.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface UserMapper {

    @Select("SELECT * FROM user")
    List<User> getAll();

    @Select("SELECT * FROM user WHERE id = #{id}")
    User getOne(Integer id);

    @Select("select * from user where id = #{id}")
    @Results({
            @Result(property = "username", column = "username"),
            @Result(property = "password", column = "password")
    })
    User getUser(Integer id);

    @Select("select * from user where id = #{id} and username=#{name}")
    User getUserByIdAndName(Integer id, String name);

    @Insert("INSERT INTO user(name,password,age) VALUES(#{name}, #{password}, #{age})")
    void insert(User user);

    @Update("UPDATE user SET name=#{name},password=#{password},age=#{age} WHERE id =#{id}")
    void update(User user);

    @Delete("DELETE FROM user WHERE id =#{id}")
    void delete(Integer id);

    /**
     * 使用xml方式
     */
    User getUserByName(String username);

}
