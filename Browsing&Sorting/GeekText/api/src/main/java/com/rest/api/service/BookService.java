package com.rest.api.service;

import com.rest.api.model.Book;
import com.rest.api.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public void saveBook(Book book) {
        bookRepository.save(book);
    }

    public List<Book> getAllActiveBooks() {
        return bookRepository.findAll();
    }

    public Optional<Book> getBookById(Long bookId) {
        return bookRepository.findById(bookId);
    }

    public List<Book> getTopSellers() {
        return bookRepository.getTopSellers();
    }
}

/*
public interface BookService {

    List<Book> getAllBooks();
    void saveBook(Book book);
    Book getBookById(long bookId);
    void deleteBookById(long bookId);
    Page<Book> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection);
}

 */
