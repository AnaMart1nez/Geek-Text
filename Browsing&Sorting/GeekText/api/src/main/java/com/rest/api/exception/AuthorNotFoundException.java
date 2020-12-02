package com.rest.api.exception;

public class AuthorNotFoundException extends Exception {
    private long author_id;
    public AuthorNotFoundException(long authorId) {
        super(String.format("Author is not found with id : '%s'", authorId));
    }
}

