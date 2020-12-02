package com.rest.api.repository;

import com.rest.api.model.Author;
import com.rest.api.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AuthorRepository extends JpaRepository<Author, Long> {
    @Query("select books from Author a where a.authorId = ?1")
    List<Book> getBooksByAuthor(Long authorId);
}

/*
@Repository
public interface AuthorRepository extends JpaRepository<Author, Long> {
    @Query("select books from Author a where a.authorId = ?1")
    List<Book> getBooksByAuthor(Long authorId);
}
 */
