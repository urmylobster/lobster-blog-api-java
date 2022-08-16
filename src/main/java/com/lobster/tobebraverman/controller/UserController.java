package com.lobster.tobebraverman.controller;

import com.lobster.tobebraverman.entity.JsonResult;
import com.lobster.tobebraverman.entity.User;
import com.lobster.tobebraverman.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;
import java.util.List;

@RestController
@Api(value = "用户信息接口", tags = "用户信息")
public class UserController {

    @Resource
    private UserService userService;

    @GetMapping("/getUser/{id}")
    @ApiOperation(value = "根据用户唯一标识获取用户信息")
    public JsonResult<User> getUserInfo(@PathVariable @ApiParam(value = "用户唯一标识") Integer id) {
        User user = new User(8, "Alex", "123456");
        return new JsonResult<>(user);
    }

    @ApiOperation("测试")
    @GetMapping("/test")
    public String test() {
        return "沉默王二又帅又丑";
    }

    @RequestMapping("/getUser/{id}")
    public JsonResult<User> getUser(@PathVariable Integer id) {
        return new JsonResult<>(userService.getUser(id));
    }

    @RequestMapping("/getUser/{id}/{name}")
    public User getUser(@PathVariable Integer id, @PathVariable String name) {
        return userService.getUser(id, name);
    }

    @RequestMapping("/getall")
    public List<User> getAll() {
        return userService.getAll();
    }

    @RequestMapping("/getUserByName/{name}")
    public User getUserByName(@PathVariable String name) {
        return userService.getUserByName(name);
    }

}
