package com.lobster.tobebraverman.dao;

import com.lobster.tobebraverman.entity.Posts;

import java.util.List;

public interface PostMapper {
    List<Posts> getAll();
    Posts getOne(Long id);
    void insert(Posts post);
    void update(Posts post);
    void delete(Long id);
}