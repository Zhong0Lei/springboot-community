package com.bee.community.controller.rest;

import io.github.asleepyfish.util.OpenAiUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ChatGPTController {

    @GetMapping({"/ChatGPT", "/ChatGPT.html"})
    public String chatGPTPage() {
        return "other/ChatGPT";
    }

    @GetMapping({"/image", "/image.html"})
    public String chatGPTImagePage() {
        return "other/image";
    }

    @GetMapping({"/test", "/test.html"})
    public String test() {
        return "other/test";
    }

    @PostMapping("/chat")
    @ResponseBody
    public List<String> chatTest(@RequestBody String content) {
        System.out.println("调用了chatGPT聊天接口");
        return OpenAiUtils.createChatCompletion(content, "testUser");
    }

    @PostMapping("/chatImage")
    @ResponseBody
    public List<String> chatImage(@RequestBody String content) {
        System.out.println("调用了chatGPT绘画接口");
        return OpenAiUtils.createImage(content);
    }
}
