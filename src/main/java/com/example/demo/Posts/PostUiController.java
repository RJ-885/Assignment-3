package com.example.demo.Posts;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.ui.Model;

@Controller
public class PostUiController {

    private final PostService postService;

    public PostUiController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/characters/{characterId}")
    public String getPostById(@PathVariable long characterId, Model model) {
        Post character = postService.getPostById(characterId);
        model.addAttribute("post", character);

        return "details";
    }

    @GetMapping("/characters")
    public String getAllPosts(Model model) {
        model.addAttribute("postsList", postService.getAllPosts());
        model.addAttribute("pageTitle", "All Posts");

        return "index";
    }
}
