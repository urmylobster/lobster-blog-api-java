package com.lobster.tobebraverman.controller;

import com.lobster.tobebraverman.dto.PostsParam;
import com.lobster.tobebraverman.entity.JsonResult;
import com.lobster.tobebraverman.entity.Posts;
import com.lobster.tobebraverman.service.PostService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;

@RestController
@RequestMapping("/posts")
@Api(tags = "文章 ")
public class PostController {

    @Resource
    private PostService postService;

    @GetMapping("/list")
    @ApiOperation("获取文章列表")
    public JsonResult<List<Posts>> getPostsList() {
        return new JsonResult<>(postService.getAll());
    }

    @GetMapping("/getById/{id}")
    @ApiOperation("查找指定文章")
    public JsonResult<Posts> getPostById(@PathVariable String id) {
        return new JsonResult<>(postService.getOne(Long.parseLong(id)));
    }

    @PostMapping("/insert")
    @ApiOperation("添加文章")
    public JsonResult<Posts> insert(@Valid @RequestBody  PostsParam postsParam) {
        Posts posts = new Posts();
        posts.setPostTitle(postsParam.getPostTitle());
        posts.setPostAuthor(postsParam.getPostAuthor());
        posts.setPostContent(postsParam.getPostContent());
        postService.insert(posts);
        return new JsonResult<>(posts);
    }

    @GetMapping("/deleteById/{id}")
    @ApiOperation("删除指定文章")
    public JsonResult<String> delete(@PathVariable String id) {
        postService.delete(Long.parseLong(id));
        return new JsonResult<>("删除成功");
    }

    @PostMapping("/update")
    @ApiOperation("更新文章")
    public JsonResult<Posts> update(@Valid PostsParam postsParam) {
        Posts posts = new Posts();
        posts.setPostId(postsParam.getPostsId());
        posts.setPostTitle(postsParam.getPostTitle());
        posts.setPostAuthor(postsParam.getPostAuthor());
        posts.setPostContent(postsParam.getPostContent());
        postService.update(posts);
        return new JsonResult<>(posts);
    }
}
