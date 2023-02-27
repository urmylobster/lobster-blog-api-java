package com.lobster.tobebraverman.service;

import com.lobster.tobebraverman.entity.Posts;

import java.util.List;

public interface PostService {

    List<Posts> getAll();
    Posts getOne(Long id);
    void insert(Posts post);
    void update(Posts post);
    void delete(Long id);
    void deletePermanent(Long id);
    List<Posts> searchByTitle(String title);
}
