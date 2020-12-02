package com.rest.api.repository;

import com.rest.api.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {
    @Query("from Book b where b.bookSells > 90")
    List<Book> getTopSellers();
}
