package com.lobster.tobebraverman.controller;

import com.lobster.tobebraverman.entity.User;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/json")
@Api(tags = "hello")
public class HelloController {

    @GetMapping ("/user")
    public User getUser() {
        return new User(1, "vin", "123456");
    }

    @GetMapping("/list")
    public List<User> getUserList() {
        List<User> userList = new ArrayList<>();
        User user1 = new User(2, "wanger", "123");
        User user2 = new User(3, "wuge", "456");
        userList.add(user1);
        userList.add(user2);
        return userList;
    }

    @GetMapping("/map")
    public Map<String, Object> getMap() {
        Map<String, Object> map = new HashMap<>(3);
        User user = new User(5, "xiaomi", "1214");
        map.put("author", user);
        map.put("blog", "http://example.com");
        map.put("csdn", "csdn");
        map.put("fans", 4153);
        return map;
    }
}
