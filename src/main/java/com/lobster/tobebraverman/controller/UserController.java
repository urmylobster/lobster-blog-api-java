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

@RestController
@Api(value = "用户信息接口")
public class UserController {

    @Resource
    private UserService userService;

    @GetMapping("/getUser/{id}")
    @ApiOperation(value = "根据用户唯一标识获取用户信息")
    public JsonResult<User> getUserInfo(@PathVariable @ApiParam(value = "用户唯一标识") Long id) {
        User user = new User(8L, "Alex", "123456");
        return new JsonResult<>(user);
    }


    @ApiOperation("测试")
    @RequestMapping("/test")
    public String test() {
        return "沉默王二又帅又丑";
    }

}
