package com.rest.api.controller;

import com.rest.api.model.Author;
import com.rest.api.model.Book;
import com.rest.api.repository.AuthorRepository;
import com.rest.api.service.AuthorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

@Controller
public class AuthorController {

    @Value("${uploadDir}")
    private String uploadFolder;

    @Autowired
    private AuthorService authorService;

    @Autowired
    private AuthorRepository authorRepository;

    private final Logger log = LoggerFactory.getLogger(this.getClass());

    @GetMapping(value = {"/author", "/author/home"})
    public String addAuthorPage() {
        return "authorindex";
    }

    @PostMapping("/author/saveAuthorDetails")
    public @ResponseBody
    ResponseEntity<?> createAuthor(@RequestParam("name") String name, @RequestParam("biography") String biography,
                                   Model model, HttpServletRequest request) {
        try {
            String[] names = name.split(",");
            String[] biographies = biography.split(",");
            log.info("Name: " + names[0]);
            log.info("biography: " + biographies[0]);

            Author author = new Author();
            author.setName(names[0]);
            author.setBiography(biographies[0]);
            authorService.saveAuthor(author);
            log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
            return new ResponseEntity<>("Author Saved", HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            log.info("Exception: " + e);
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }


    @GetMapping("/author/authorDetails")
    String showAuthorDetails(@RequestParam("authorId") Long authorId, Optional<Author> author, Model model) {
        try {
            log.info("authorId :: " + authorId);
            if (authorId != 0) {
                author = authorService.getAuthorById(authorId);

                log.info("authors :: " + author);
                if (author.isPresent()) {
                    model.addAttribute("authorId", author.get().getAuthorId());
                    model.addAttribute("name", author.get().getName());
                    model.addAttribute("biography", author.get().getBiography());
                    return "authordetails";
                }
                return "redirect:/author/home";
            }
            return "redirect:/author/home";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/author/home";
        }
    }

    @GetMapping("/author/show")
    String show(Model map) {
        List<Author> authors = authorService.getAllActiveAuthors();
        map.addAttribute("authors", authors);
        return "authors";
    }

    // get book by author id
    @GetMapping("/author/{authorId}/book")
    public String getBooksByAuthor (@PathVariable("authorId") Long authorId, Model model) {
        List<Book> books = (List<Book>) authorRepository.getBooksByAuthor(authorId);
        model.addAttribute("authors", books);
        return "author_book_id";
    }
}

/*
@Controller
@RequestMapping("/author")
public class AuthorController {
    @Autowired
    private AuthorService authorService;

    @Autowired
    private AuthorRepository authorRepository;

    // display list of employees
    @GetMapping("/list")
    public String viewHomePage(Model model) {
        return findPaginated(1, "name", "asc", model);
    }

    @GetMapping("/showNewAuthorForm")
    public String showNewAuthorForm(Model model) {
        // create model attribute to bind form data
        Author author = new Author();
        model.addAttribute("author", author);
        return "new_author";
    }

    @PostMapping("/saveAuthor")
    public String saveAuthor(@ModelAttribute("author") Author author) {
        // save employee to database
        authorService.saveAuthor(author);
        return "redirect:/author/list";
    }

    @GetMapping("/showUpdateAuthorForm/{authorId}")
    public String showUpdateAuthorForm(@PathVariable ( value = "authorId") long authorId, Model model) {

        // get author from the service
        Author author = authorService.getAuthorById(authorId);

        // set author as a model attribute to pre-populate the form
        model.addAttribute("author", author);
        return "update_author";
    }

    @GetMapping("/deleteAuthor/{authorId}")
    public String deleteAuthor(@PathVariable (value = "authorId") long authorId) {

        // call delete author method
        this.authorService.deleteAuthorById(authorId);
        return "redirect:/author/list";
    }

    @GetMapping("/page/{pageNo}")
    public String findPaginated(@PathVariable (value = "pageNo") int pageNo,
                                @RequestParam("sortField") String sortField,
                                @RequestParam("sortDir") String sortDir,
                                Model model) {
        int pageSize = 5;

        Page<Author> page = authorService.findPaginated(pageNo, pageSize, sortField, sortDir);
        List<Author> listAuthors= page.getContent();

        model.addAttribute("currentPage", pageNo);
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("totalItems", page.getTotalElements());

        model.addAttribute("sortField", sortField);
        model.addAttribute("sortDir", sortDir);
        model.addAttribute("reverseSortDir", sortDir.equals("asc") ? "desc" : "asc");

        model.addAttribute("listAuthors", listAuthors);
        return "author_index";
    }


    // get book by author id
   @GetMapping("/{authorId}/book")
    public String getBooksByAuthor (@PathVariable("authorId") Long authorId, Model model) {
        List<Book> books = (List<Book>) authorRepository.getBooksByAuthor(authorId);
        model.addAttribute("authors", books);
        return "author_book_id";
    }
}
 */