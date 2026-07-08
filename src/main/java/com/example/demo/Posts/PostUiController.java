package com.example.demo.Posts;

import org.springframework.stereotype.Controller;

@Controller
public class PostUiController {
    
    private final PostService postService;

    public PostUiController(PostService postService) {
        this.postService = postService;
    }

    
}
