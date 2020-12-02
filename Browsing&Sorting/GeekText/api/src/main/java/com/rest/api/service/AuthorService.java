package com.rest.api.service;

import com.rest.api.model.Author;
import com.rest.api.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AuthorService {
    @Autowired
    private AuthorRepository authorRepository;

    public void saveAuthor(Author author) {
        authorRepository.save(author);
    }

    public List<Author> getAllActiveAuthors() {
        return authorRepository.findAll();
    }

    public Optional<Author> getAuthorById(Long authorId) {
        return authorRepository.findById(authorId);
    }

}

/*
package com.rest.api.service;

import com.rest.api.model.Author;
import org.springframework.data.domain.Page;

import java.util.List;

public interface AuthorService {
    List<Author> getAllAuthors();
    void saveAuthor(Author author);
    Author getAuthorById(long authorId);
    void deleteAuthorById(long authorId);
    Page<Author> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection);
}

 */