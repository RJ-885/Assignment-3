package com.example.demo.Posts;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "post")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Post {
    
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long characterId;

  @Column(nullable = false)
  private String name;

  @Column(nullable = false, columnDefinition = "TEXT")
  private String description;

  @Column(nullable = false)
  private String role;

  @Column(nullable = false)
  private Double age;

  private String thumbnailUrl;

  public Post(String name, String description, String role, Double age) {
    this.name = name;
    this.description = description;
    this.role = role;
    this.age = age;
  }
}
