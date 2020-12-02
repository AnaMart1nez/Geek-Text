package com.rest.api.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "authors")
public class Author {

    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    @Column (name = "author_id")
    private Long authorId;

    @Column (name = "name")
    private String name;

    @Column (name = "biography")
    private String biography;

    @OneToMany(mappedBy = "author")
    private List<Book> books;

    public Author() {}

    public Long getAuthorId() {
        return authorId;
    }

    public void setAuthorId(Long authorId) {
        this.authorId = authorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    @Override
    public String toString() {
        return "Author [authorId=" + authorId + ", name=" + name + ", biography=" + biography + "]";
    }
}

/*
package com.rest.api.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "authors")
public class Author {

    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    @Column (name = "author_id")
    private Long authorId;

    @Column (name = "name")
    private String name;

    @Column (name = "biography")
    private String biography;

    @OneToMany(mappedBy = "author")
    private List<Book> books;

    public Author() {
        super();
    }

    public Author(Long authorId, String name, String biography) {
        super();
        this.authorId = authorId;
        this.name = name;
        this.biography = biography;
    }

    public Long getAuthorId() {
        return authorId;
    }

    public void setAuthorId(Long authorId) {
        this.authorId = authorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }
}


 */

