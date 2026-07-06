package com.example.demo.Posts;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class PostService {
    private final PostRepository postRepository;

    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public List<Post> getAllPosts() {
        return postRepository.findAll();
    }

    public Post getPostById(long characterId) {
        return postRepository.findById(characterId).orElse(null);
    }

    public Post createPost(Post post) {
        return postRepository.save(post);
    }

    public Post updatePost(long characterId, Post updatedPost) {
        Post existingPost = postRepository.findById(characterId).orElse(null);
        if (existingPost != null) {
            existingPost.setName(updatedPost.getName());
            existingPost.setDescription(updatedPost.getDescription());
            return postRepository.save(existingPost);
        }
        return null;
    }

    public boolean deletePost(long characterId) {
        if (postRepository.existsById(characterId)) {
            postRepository.deleteById(characterId);
            return true;
        }
        return false;
    }

    public List<Post> searchPosts(String keyword) {
        return postRepository.findByNameContainingIgnoreCaseOrDescriptionContainingIgnoreCase(keyword, keyword);
    }

    public List<Post> getPostsByRole(String role) {
        return postRepository.findByRoleIgnoreCase(role);
    }
}
