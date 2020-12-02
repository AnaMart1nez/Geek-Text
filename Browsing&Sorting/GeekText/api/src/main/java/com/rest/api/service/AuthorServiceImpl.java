/*
package com.rest.api.service;

import com.rest.api.model.Author;
import com.rest.api.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AuthorServiceImpl implements AuthorService {
    @Autowired
    private AuthorRepository authorRepository;

    @Override
    public List<Author> getAllAuthors() {
        return authorRepository.findAll();
    }

    @Override
    public void saveAuthor(Author author) {
        this.authorRepository.save(author);
    }

    @Override
    public Author getAuthorById(long authorId) {
        Optional<Author> optional = authorRepository.findById(authorId);
        Author author = null;
        if (optional.isPresent()) {
            author = optional.get();
        } else {
            throw new RuntimeException(" Author not found for id :: " + authorId);
        }
        return author;
    }

    @Override
    public void deleteAuthorById(long authorId) {
        this.authorRepository.deleteById(authorId);
    }

    @Override
    public Page<Author> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection) {
        Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortField).ascending() :
                Sort.by(sortField).descending();

        Pageable pageable = PageRequest.of(pageNo - 1, pageSize, sort);
        return this.authorRepository.findAll(pageable);
    }
}
*/
