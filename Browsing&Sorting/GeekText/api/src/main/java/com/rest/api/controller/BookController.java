package com.rest.api.controller;

import com.rest.api.model.Author;
import com.rest.api.model.Book;
import com.rest.api.repository.BookRepository;
import com.rest.api.service.BookService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

@Controller
public class BookController {

    @Value("${uploadDir}")
    private String uploadFolder;

    @Autowired
    private BookService bookService;

    @Autowired
    private BookRepository bookRepository;

    private final Logger log = LoggerFactory.getLogger(this.getClass());

    @GetMapping(value = {"/book", "/book/home"})
    public String addBookPage() {
        return "bookindex";
    }

    @PostMapping("/book/saveBookDetails")
    public @ResponseBody
    ResponseEntity<?> createBook(@RequestParam("isbn") String isbn, @RequestParam("title") String title,
                                 final @RequestParam("cover") MultipartFile cover, @RequestParam("genreName") String genreName,
                                 @RequestParam("price") double price, @RequestParam("datePublished") String datePublished,
                                 @RequestParam("publisherName") String publisherName, @RequestParam("summary") String summary,
                                 @RequestParam("bookSells") Long bookSells, @RequestParam("authorId") Author authorId,
                                 Model model, HttpServletRequest request) {
        try {
            String[] isbns = isbn.split(",");
            String[] titles = title.split(",");
            String[] genreNames = genreName.split(",");
            String[] datesPublished = datePublished.split(",");
            String[] publishersName = publisherName.split(",");
            String[] summaries = summary.split(",");

            log.info("Isbn:" + isbns[0]);
            log.info("Title" + titles[0]);
            log.info("GenreName" + genreNames[0]);
            log.info("Price" + price);
            log.info("DatePublished" + datesPublished[0]);
            log.info("PublisherName" + publishersName[0]);
            log.info("Summary" + summaries[0]);
            log.info("BookSells" + bookSells);
            log.info("Author ID" + authorId);

            Book book = new Book();
            book.setIsbn(isbns[0]);
            book.setTitle(titles[0]);
            book.setGenreName(genreNames[0]);
            book.setPrice(price);
            book.setDatePublished(datesPublished[0]);
            book.setPublisherName(publishersName[0]);
            book.setSummary(summaries[0]);
            book.setBookSells(bookSells);
            book.setAuthor(authorId);
            bookService.saveBook(book);

            log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
            return new ResponseEntity<>("Book Saved", HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            log.info("Exception: " + e);
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }


    @GetMapping("/book/bookDetails")
    String showBookDetails(@RequestParam("bookId") Long bookId, Optional<Book> book, Model model) {
        try {
            log.info("bookId :: " + bookId);
            if (bookId != 0) {
                book = bookService.getBookById(bookId);

                log.info("books :: " + book);
                if (book.isPresent()) {
                    model.addAttribute("bookId", book.get().getBookId());
                    model.addAttribute("isbn", book.get().getIsbn());
                    model.addAttribute("title", book.get().getTitle());
                    model.addAttribute("cover", book.get().getCover());
                    model.addAttribute("genreName", book.get().getGenreName());
                    model.addAttribute("price", book.get().getPrice());
                    model.addAttribute("datePublished", book.get().getDatePublished());
                    model.addAttribute("publisherName", book.get().getPublisherName());
                    model.addAttribute("summary", book.get().getSummary());
                    model.addAttribute("bookSells", book.get().getBookSells());
                    model.addAttribute("authorId", book.get().getAuthor().getAuthorId());

                    return "bookdetails";
                }
                return "redirect:/book/home";
            }
            return "redirect:/book/home";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/book/home";
        }
    }

    @GetMapping("/book/show")
    String show(Model map) {
        List<Book> books = bookService.getAllActiveBooks();
        map.addAttribute("books", books);
        return "books";
    }

    @GetMapping("/book/topsellers")
    String getTopSellers(Model map) {
        List<Book> books = bookService.getTopSellers();
        map.addAttribute("books", books);
        return "book_top_sellers";
    }

}

/*
@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    private BookService bookService;

    @Autowired
    private BookRepository bookRepository;

    // display list of employees
    @GetMapping("/list")
    public String viewHomePage(Model model) {
        return findPaginated(1, "title", "asc", model);
    }

    @GetMapping("/showNewBookForm")
    public String showNewBookForm(Model model) {
        // create model attribute to bind form data
        Book book = new Book();
        model.addAttribute("book", book);
        return "new_book";
    }

    @PostMapping("/saveBook")
    public String saveBook(@ModelAttribute("book") Book book) {
        // save Book to database
        bookService.saveBook(book);
        return "redirect:/book/list";
    }

    @GetMapping("/showUpdateBookForm/{bookId}")
    public String showUpdateBookForm(@PathVariable ( value = "bookId") long bookId, Model model) {

        // get author from the service
        Book book = bookService.getBookById(bookId);

        // set employee as a model attribute to pre-populate the form
        model.addAttribute("book", book);
        return "update_book";
    }

    @GetMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable (value = "bookId") long bookId) {

        // call delete book method
        this.bookService.deleteBookById(bookId);
        return "redirect:/book/list";
    }

    @GetMapping("/page/{pageNo}")
    public String findPaginated(@PathVariable (value = "pageNo") int pageNo,
                                @RequestParam("sortField") String sortField,
                                @RequestParam("sortDir") String sortDir,
                                Model model) {
        int pageSize = 5;

        Page<Book> page = bookService.findPaginated(pageNo, pageSize, sortField, sortDir);
        List<Book> listBooks= page.getContent();

        model.addAttribute("currentPage", pageNo);
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("totalItems", page.getTotalElements());

        model.addAttribute("sortField", sortField);
        model.addAttribute("sortDir", sortDir);
        model.addAttribute("reverseSortDir", sortDir.equals("asc") ? "desc" : "asc");

        model.addAttribute("listBooks", listBooks);
        return "book_index";
    }
}

 */