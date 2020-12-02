package com.rest.api.exception;

public class BookNotFoundException extends Exception{
    private long book_id;
    public BookNotFoundException(long bookId) {
        super(String.format("Book is not found with id : '%s'", bookId));
    }
}
