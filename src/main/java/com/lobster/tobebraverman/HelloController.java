package com.lobster.tobebraverman;

import com.lobster.tobebraverman.entity.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/json")
public class HelloController {

    @RequestMapping("/user")
    public User getUser() {
        return new User(1L, "vin", "123456");
    }

    @RequestMapping("/list")
    public List<User> getUserList() {
        List<User> userList = new ArrayList<>();
        User user1 = new User(2L, "wanger", "123");
        User user2 = new User(3L, "wuge", "456");
        userList.add(user1);
        userList.add(user2);
        return userList;
    }

    @RequestMapping("/map")
    public Map<String, Object> getMap() {
        Map<String, Object> map = new HashMap<>(3);
        User user = new User(5L, "xiaomi", "1214");
        map.put("author", user);
        map.put("blog", "http://example.com");
        map.put("csdn", "csdn");
        map.put("fans", 4153);
        return map;
    }
}
