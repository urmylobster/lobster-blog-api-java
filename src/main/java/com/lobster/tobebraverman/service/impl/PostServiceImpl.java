package com.lobster.tobebraverman.service.impl;

import com.lobster.tobebraverman.dao.PostMapper;
import com.lobster.tobebraverman.entity.Posts;
import com.lobster.tobebraverman.service.PostService;

import javax.annotation.Resource;
import java.util.List;

public class PostServiceImpl implements PostService {

    @Resource
    private PostMapper postMapper;

    @Override
    public List<Posts> getAll() {
        return postMapper.getAll();
    }

    @Override
    public Posts getOne(Long id) {
        return postMapper.getOne(id);
    }

    @Override
    public void insert(Posts post) {
        postMapper.insert(post);
    }

    @Override
    public void update(Posts post) {
        postMapper.update(post);
    }

    @Override
    public void delete(Long id) {
        postMapper.delete(id);
    }
}
