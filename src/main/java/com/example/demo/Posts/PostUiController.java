package com.example.demo.Posts;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

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
    public String getCharacterById(@PathVariable long characterId, Model model) {
        Post character = postService.getPostById(characterId);
        model.addAttribute("post", character);

        return "details";
    }

    @GetMapping("/characters")
    public String getAllCharacters(Model model) {
        model.addAttribute("postsList", postService.getAllPosts());
        model.addAttribute("pageTitle", "All Posts");

        return "index";
    }

    @GetMapping("/characters/new")
    public String createCharacterForm(Model model) {
        model.addAttribute("post", new Post());
        model.addAttribute("pageTitle", "Create New Post");

        return "new-character-form";
    }

    @PostMapping("/characters/save")
    public String createCharacter(Post post, MultipartFile thumbnailFile) {
        Post createdPost = postService.createPost(post);
        if (createdPost != null) {
            if (thumbnailFile != null && !thumbnailFile.isEmpty()) {
                postService.saveThumbnail(createdPost, thumbnailFile);
            }
            return "redirect:/characters/" + createdPost.getCharacterId();
        }
        return "redirect:/charcters/new?error=true";
    }

    @GetMapping("/characters/delete/{characterId}")
    public String deleteCharacter(@PathVariable Long characterId) {
        boolean isDeleted = postService.deletePost(characterId);
        if (isDeleted) {
            return "redirect:/characters";
        }
        return "redirect:/characters/new?error=true";
    }

    @GetMapping("/characters/updateForm/{characterId}")
    public Object updateCharacter(@PathVariable Long characterId, Model model) {
        Post character = postService.getPostById(characterId);
        model.addAttribute("character", character);
        model.addAttribute("title", "Update Character: " + characterId);
        return "new-character-form";
    }

    @PostMapping("/characters/update/{characterId}")
    public String updateCharacter(@PathVariable Long characterId, Post updatedChar, MultipartFile thumbnailFile) {
        Post post = postService.updatePost(characterId, updatedChar);
        if (post != null) {
            if (thumbnailFile != null && !thumbnailFile.isEmpty()) {
                postService.saveThumbnail(post, thumbnailFile);
            }
            return "redirect:/posts/" + post.getCharacterId();
        }
        return "redirect:/posts/" + characterId + "?error=true";
    }

}
