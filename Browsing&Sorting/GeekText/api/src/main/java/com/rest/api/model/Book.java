package com.rest.api.model;


import javax.persistence.*;

@Entity
@Table(name = "books")
public class Book {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column(name = "book_id")
    private Long bookId;

    @Column(name = "isbn")
    private String isbn;

    @Column (name = "title")
    private String title;

    @Lob
    @Column(name = "cover", length = Integer.MAX_VALUE, nullable = true)
    private byte[] cover;

    @Column(name = "genre_name")
    private String genreName;

    @Column (name = "price")
    private double price;

    @Column (name = "date_published")
    private String datePublished;

    @Column (name = "publisher_name")
    private String publisherName;

    @Column (name = "summary")
    private String summary;

    @Column (name = "book_sells")
    private Long bookSells;

    @ManyToOne
    @JoinColumn(name = "author_id", nullable=false)
    private Author author;

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Book() {}

    public Long getBookId() {
        return bookId;
    }

    public void setBookId(Long bookId) {
        this.bookId = bookId;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public byte[] getCover() {
        return cover;
    }


    public void setCover(byte[] cover) {
        this.cover = cover;
    }

    public String getGenreName() {
        return genreName;
    }

    public void setGenreName(String genreName) {
        this.genreName = genreName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDatePublished() {
        return datePublished;
    }

    public void setDatePublished(String datePublished) {
        this.datePublished = datePublished;
    }

    public String getPublisherName() {
        return publisherName;
    }

    public void setPublisherName(String publisherName) {
        this.publisherName = publisherName;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Long getBookSells() {
        return bookSells;
    }

    public void setBookSells(Long bookSells) {
        this.bookSells = bookSells;
    }

    @Override
    public String toString() {
        return "Book [bookId=" + bookId + ", isbn=" + isbn + ", title=" + title +
                ", cover=" + cover + ", genreName=" + genreName + ", price=" + price +
                ", datePublished=" + datePublished + ", publisherName=" + publisherName +
                ", summary=" + summary + ", bookSells=" + bookSells +"]";
    }
}

/*
package com.rest.api.model;


import javax.persistence.*;

@Entity
@Table(name = "books")
public class Book {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column(name = "book_id")
    private Long bookId;

    @Column(name = "isbn")
    private String isbn;

    @Column (name = "title")
    private String title;

    @Column (name = "cover")
    private String cover;

    @Column(name = "genre_name")
    private String genreName;

    @Column (name = "price")
    private double price;

    @Column (name = "date_published")
    private String datePublished;

    @Column (name = "publisher_name")
    private String publisherName;

    @Column (name = "summary")
    private String summary;

    @Column (name = "book_sells")
    private Long bookSells;

    @ManyToOne
    @JoinColumn(name = "author_id", nullable=false)
    private Author author;

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Book() {
        super();
    }

    public Book(Long bookId, String isbn, String title, String cover, String genreName, double price,
                String datePublished, String publisherName, String summary, Long bookSells) {
        this.bookId = bookId;
        this.isbn = isbn;
        this.title = title;
        this.cover = cover;
        this.genreName = genreName;
        this.price = price;
        this.datePublished = datePublished;
        this.publisherName = publisherName;
        this.summary = summary;
        this.bookSells = bookSells;
    }

    public Long getBookId() {
        return bookId;
    }

    public void setBookId(Long bookId) {
        this.bookId = bookId;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getGenreName() {
        return genreName;
    }

    public void setGenreName(String genreName) {
        this.genreName = genreName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDatePublished() {
        return datePublished;
    }

    public void setDatePublished(String datePublished) {
        this.datePublished = datePublished;
    }

    public String getPublisherName() {
        return publisherName;
    }

    public void setPublisherName(String publisherName) {
        this.publisherName = publisherName;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Long getBookSells() {
        return bookSells;
    }

    public void setBook_sells(Long bookSells) {
        this.bookSells = bookSells;
    }
}

 */