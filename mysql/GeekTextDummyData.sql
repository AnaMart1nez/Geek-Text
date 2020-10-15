/** Dummy data for Authors table **/
INSERT INTO `geektextdb`.`authors` (`AuthorID`, `FirstName`, `LastName`, `Biography`) VALUES ('1', 'Paulo', 'Coelho', 'es in 1807, who was engaged to marry a rich woman when three jealous friends falsely accused him of being a');
INSERT INTO `geektextdb`.`authors` (`AuthorID`, `FirstName`, `LastName`, `Biography`) VALUES ('2', 'Alexandre', 'Dumas', 'ies\", Peuchet describes a poisoning in a family. This story, also quoted in the ');
INSERT INTO `geektextdb`.`authors` (`AuthorID`, `FirstName`, `LastName`, `Biography`) VALUES ('3', 'J.K.', 'Rowling', ' resemblance to that of the Faria in the novel. As for Dantès, his fate is quite different ');
INSERT INTO `geektextdb`.`authors` (`AuthorID`, `FirstName`, `LastName`, `Biography`) VALUES ('4', 'Kurt', 'Vonnegut', 'ed this essay in one of the editions from 1846.[6] Peuchet told of a shoemaker, Pierre Picaud, living');
INSERT INTO `geektextdb`.`authors` (`AuthorID`, `FirstName`, `LastName`, `Biography`) VALUES ('5', 'Roald', 'Dahl', 'cques Peuchet, a French police archivist, published in 1838 after the death of the author');

/** Dummy data for Publishers table **/
INSERT INTO `geektextdb`.`publishers` (`PublisherID`, `PublisherName`) VALUES ('1', 'Penguin Classics');
INSERT INTO `geektextdb`.`publishers` (`PublisherID`, `PublisherName`) VALUES ('2', 'HarperOne');
INSERT INTO `geektextdb`.`publishers` (`PublisherID`, `PublisherName`) VALUES ('3', 'Scholastic');
INSERT INTO `geektextdb`.`publishers` (`PublisherID`, `PublisherName`) VALUES ('4', 'Puffin Books');
INSERT INTO `geektextdb`.`publishers` (`PublisherID`, `PublisherName`) VALUES ('5', 'Turtleback Books');

/** Dummy data for Genres table **/
INSERT INTO `geektextdb`.`genres` (`GenreID`, `GenreName`) VALUES ('1', 'Adventure');
INSERT INTO `geektextdb`.`genres` (`GenreID`, `GenreName`) VALUES ('2', 'Fantasy');
INSERT INTO `geektextdb`.`genres` (`GenreID`, `GenreName`) VALUES ('3', 'Science Fiction');

/** Dummy data for Books table **/
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780140449266', 'The Count of Monte Cristo', 'Test String', '1', '14.60', '2003/05/27', '1', 'Test string 123', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780061122415', 'The Alchemist', 'Test String 342', '1', '12.99', '1993/04/25', '2', 'Test String 0545', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780439708180', 'Harry Potter and the Sorcerer\'s Stone', 'Test string 3456', '2', '7.95', '1998/09/01', '3', 'Test string 94485', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780439064873', 'Harry Potter and the Chamber of Secrets', 'Test string 3864', '2', '6.99', '2000/09/01', '3', 'Test string 37464', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780439136365', 'Harry Potter And The Prisoner Of Azkaban', 'Test string 87363', '2', '5.99', '2001/10/01', '3', 'Test String', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780439139601', 'Harry Potter And The Goblet Of Fire', 'Test string 1947', '2', '6.95', '2002/09/01', '3', 'Test string 90364', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780439358071', 'Harry Potter And The Order Of The Phoenix', 'Test string 86346', '2', '7.99', '2004/09/01', '3', 'Test string 7548', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780439785969', 'Harry Potter and the Half-Blood Prince', 'Test string 384', '2', '7.50', '2006/07/25', '3', 'Test string 6353', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780545139700', 'Harry Potter and the Deathly Hallows', 'Test string 376444', '2', '8.99', '2009/07/01', '3', 'Test String 342432', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780142410110', 'The Witches', 'Test string 37864', '2', '7.98', '2007/08/16', '4', 'Test string 33421', '0');
INSERT INTO `geektextdb`.`books` (`ISBN`, `Title`, `Cover`, `GenreID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) VALUES ('9780385333849', 'Slaughterhouse-Five', 'Test string 34434', '3', '13.99', '1999/01/12', '5', 'Test String', '0');

/** Dummy data for Users table **/
INSERT INTO `geektextdb`.`users` (`Username`, `FirstName`, `MiddleName`, `LastName`, `Email`, `Password`, `Nickname`) VALUES ('Volcano1', 'Victor', 'B', 'Owens', 'amail@mail.net', 'P@ssWord', 'Vol1');
INSERT INTO `geektextdb`.`users` (`Username`, `FirstName`, `MiddleName`, `LastName`, `Email`, `Password`, `Nickname`) VALUES ('Jarvey56', 'John', 'W', 'Smith', 'Duck2@gmail.com', 'pa$$word', 'Jarv5');
INSERT INTO `geektextdb`.`users` (`Username`, `FirstName`, `MiddleName`, `LastName`, `Email`, `Password`, `Nickname`) VALUES ('Varlot15', 'Deni', 'T', 'Valyrus', 'OwlyM@hotmail.com', 'P@$sword', 'Var15');
INSERT INTO `geektextdb`.`users` (`Username`, `FirstName`, `MiddleName`, `LastName`, `Email`, `Password`, `Nickname`) VALUES ('Eowyn02', 'Eric', 'T', 'Hughes', 'Luxus3@mail.net', 'P@$$W0rD', 'Eow2');
INSERT INTO `geektextdb`.`users` (`Username`, `FirstName`, `MiddleName`, `LastName`, `Email`, `Password`, `Nickname`) VALUES ('Drake6', 'Drake', 'E', 'Josh', 'Carduni@yahoo.com', 'pAs$w0RD', 'Drk6');

/** Dummy data for Home Address table**/
INSERT INTO `geektextdb`.`Home Address` (`Username`, `Street`, `Apt`, `City`, `State`, `ZipCode`, `Country`)
VALUES
('Volcano1', '10732 SW 110 Terrace', null, 'City1', 'State1', 'ZipCode1', 'Country1'),
('Jarvey56', '15721 NW 88 St', null, 'City2', 'State2', 'ZipCode2', 'Country2'),
('Varlot15', '10422 SE 110 Ct','B12', 'City3', 'State3', 'ZipCode3', 'Country3'),
('Eowyn02', '22131 SW 210 Ln', null, 'City4', 'State4', 'ZipCode4', 'Country4'),
('Drake6', '2415 W 162 Ln', null, 'City', 'State4', 'ZipCode4', 'Country4');

/** Dummy data for Shipping Address table**/
INSERT INTO `geektextdb`.`ShippingAddress` (`ShippingID`, `Username`, `Street`, `Apt`, `City`, `State`, `ZipCode`, `Country`)
VALUES
(1, 'Volcano1', '10732 SW 110 Terrace', null, 'City1', 'State1', 'ZipCode1', 'Country1'),
(2, 'Volcano1', '14500 SW 25 Street', null, 'City2', 'State1', 'ZipCode1', 'Country1'),
(3, 'Jarvey56', '15721 NW 88 St', null, 'City2', 'State2', 'ZipCode2', 'Country2'),
(4, 'Varlot15', '10422 SE 110 Ct','B12', 'City3', 'State3', 'ZipCode3', 'Country3'),
(5, 'Eowyn02', '22131 SW 210 Ln', null, 'City4', 'State4', 'ZipCode4', 'Country4'),
(6, 'Drake6', '10041 SE 117 Ln', null, 'City3', 'State3', 'ZipCode3', 'Country3'),
(7, 'Drake6', '26450 N 110 St','A12', 'City4', 'State3', 'ZipCode3', 'Country3');