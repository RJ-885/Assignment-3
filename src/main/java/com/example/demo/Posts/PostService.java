package com.example.demo.Posts;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class PostService {
    private final PostRepository postRepository;

    private static final String UPLOAD_DIR = "src/main/static/";

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
            existingPost.setRole(updatedPost.getRole());
            existingPost.setAge(updatedPost.getAge());
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

    public void saveThumbnail(Post post, MultipartFile thumbnailFile) {
        String originalFileName = thumbnailFile.getOriginalFilename();
        try {
            String fileExtension = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
            String fileName = "post_" + post.getCharacterId() + "." + fileExtension;
            Path filePath = Paths.get(UPLOAD_DIR + fileName);
            InputStream inputStream = thumbnailFile.getInputStream();

            Files.createDirectories(Paths.get(UPLOAD_DIR));
            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);

            post.setThumbnailUrl(fileName);
            postRepository.save(post);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
