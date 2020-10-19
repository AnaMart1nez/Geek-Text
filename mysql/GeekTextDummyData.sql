/** Dummy data for Users table **/
INSERT INTO `geektextdb`.`users` (`UserID`, `Username`, `FirstName`, `MiddleName`, `LastName`, `Email`, `Password`, `Nickname`) 
VALUES
(1, 'Volcano1', 'Victor', 'B', 'Owens', 'amail@mail.net', 'P@ssWord', 'Vol1'),
(2, 'Jarvey56', 'John', null, 'Smith', 'Duck2@gmail.com', 'pa$$word', 'Jarv5'),
(3, 'Varlot15', 'Deni', 'T', 'Valyrus', 'OwlyM@hotmail.com', 'P@$sword', 'Var15'),
(4, 'Eowyn02', 'Eric', null, 'Hughes', 'Luxus3@mail.net', 'P@$$W0rD', 'Eow2'),
(5, 'Drake6', 'Drake', 'E', 'Josh', 'Carduni@yahoo.com', 'pAs$w0RD', 'Drk6');

/** Dummy data for Home Address table **/
INSERT INTO `geektextdb`.`HomeAddress` (`UserID`, `Street`, `Apt`, `City`, `State`, `ZipCode`, `Country`)
VALUES
(1, '10732 SW 110 Terrace', null, 'City1', 'State1', 'ZipCode1', 'Country1'),
(2, '15721 NW 88 St', null, 'City2', 'State2', 'ZipCode2', 'Country2'),
(3, '10422 SE 110 Ct','B12', 'City3', 'State3', 'ZipCode3', 'Country3'),
(4, '22131 SW 210 Ln', null, 'City4', 'State4', 'ZipCode4', 'Country4'),
(5, '2415 W 162 Ln', null, 'City', 'State4', 'ZipCode4', 'Country4');

/** Dummy data for Shipping Address table **/
INSERT INTO `geektextdb`.`ShippingAddress` (`ShippingID`, `UserID`, `Street`, `Apt`, `City`, `State`, `ZipCode`, `Country`)
VALUES
(1, 1, '10732 SW 110 Terrace', null, 'City1', 'State1', 'ZipCode1', 'Country1'),
(2, 1, '14500 SW 25 Street', null, 'City2', 'State1', 'ZipCode1', 'Country1'),
(3, 2, '15721 NW 88 St', null, 'City2', 'State2', 'ZipCode2', 'Country2'),
(4, 3, '10422 SE 110 Ct','B12', 'City3', 'State3', 'ZipCode3', 'Country3'),
(5, 4, '22131 SW 210 Ln', null, 'City4', 'State4', 'ZipCode4', 'Country4'),
(6, 5, '10041 SE 117 Ln', null, 'City3', 'State3', 'ZipCode3', 'Country3'),
(7, 5, '26450 N 110 St','A12', 'City4', 'State3', 'ZipCode3', 'Country3');

/** Dummy data for Shipping Address table **/
INSERT INTO `geektextdb`.`creditcards` (`CreditCardID`, `CreditCardNumber`, `UserID`, `CardholderName`, `ExpirationDate`, `CVV`) 
VALUES 
(1, '4554723811645133', '1', 'Victor Owens', '2023-09-24', '726'),
(2, '5147917358214888', '1', 'Victor Owens', '2022-06-16', '386'),
(3, '6011074613727949', '2', 'John Smith', '2024-11-16', '903'),
(4, '5381384597864624', '3', 'Deni Valyrus', '2021-03-07', '285'),
(5, '6011165061986365', '3', 'Deni Valyrus', '2025-12-29', '375'),
(6, '4477775432580028', '3', 'Deni Valyrus', '2023-06-17', '703');

/** Dummy data for Publishers table **/
INSERT INTO `geektextdb`.`publishers` (`PublisherID`, `PublisherName`) 
VALUES 
(1, 'Penguin Classics'),
(2, 'HarperOne'),
(3, 'Scholastic'),
(4, 'Puffin Books'),
(5, 'Turtleback Books');

/** Dummy data for Genres table **/
INSERT INTO `geektextdb`.`genres` (`GenreID`, `GenreName`) 
VALUES 
(1, 'Adventure'),
(2, 'Fantasy'), 
(3, 'Science Fiction');

/** Dummy data for Authors table **/
INSERT INTO `geektextdb`.`authors` (`AuthorID`, `Name`, `Biography`) 
VALUES 
(1, 'Paulo Coelho', 'He wrote song lyrics for Brazilian musicians protesting the country\'s military rule. He was jailed three times for his political activism and subjected to torture in prison.'),
(2, 'Alexandre Dumas', 'Established himself as one of the most popular and prolific authors in France, known for plays and historical adventure novels such as The Three Musketeers and The Count of Monte Cristo. He died on December 5, 1870, in Puys, France '),
(3, 'J.K. Rowling', 'Was born on 31st July 1965 at Yate General Hospital near Bristol, and grew up in Gloucestershire in England and in Chepstow, Gwent, in south-east Wales. Jo wanted to be a writer from an early age. ... She wrote her first book at the age of six – a story about a rabbit, called \'Rabbit\'.'),
(4, 'Kurt Vonnegut', 'Born on November 11, 1922, in Indianapolis, Indiana, Kurt Vonnegut is considered one of the most influential American novelists of the twentieth century. He blended literature with science fiction and humor, the absurd with pointed social commentary.'),
(5, 'Roald Dahl', 'Was born on 13th September 1916 in a Cardiff district called Llandaff. Dahl\'s parents were Norwegian. Nine years after his father had died, his family moved to Kent in England and Roald attended Repton School : he was just 13. ... Dahl started writing in the 1940s.');

/** Dummy data for Books table **/
INSERT INTO `geektextdb`.`books` (`BookID`, `ISBN`, `Title`, `Cover`, `GenreID`, `AuthorID`, `Price`, `DatePublished`, `PublisherID`, `Summary`, `BookSells`) 
VALUES 
(1, '9780140449266', 'The Count of Monte Cristo', 'Test String', '1', '2', '14.60', '2003/05/27', '1', 'Covers/monte-cristo.jpg', '98'),
(2, '9780061122415', 'The Alchemist', 'Test String 342', '1', '1', '12.99', '1993/04/25', '2', 'Covers/the-alchemist.jpg', '90'),
(3, '9780439708180', 'Harry Potter and the Sorcerer\'s Stone', 'Test string 3456', '2', '3', '7.95', '1998/09/01', '3', 'Covers/philosopher-stone.jpg', '100'),
(4, '9780439064873', 'Harry Potter and the Chamber of Secrets', 'Test string 3864', '2', '3', '6.99', '2000/09/01', '3', 'Covers/chamber-of-secrets.jpg', '105'),
(5, '9780439136365', 'Harry Potter And The Prisoner Of Azkaban', 'Test string 87363', '2', '3', '5.99', '2001/10/01', '3', 'Covers/prisoner-of-azkaban.jpg', '104'),
(6, '9780439139601', 'Harry Potter And The Goblet Of Fire', 'Test string 1947', '2', '3', '6.95', '2002/09/01', '3', 'Covers/goblet-of-fire.jpg', '102'),
(7, '9780439358071', 'Harry Potter And The Order Of The Phoenix', 'Test string 86346', '2', '3', '7.99', '2004/09/01', '3', 'Covers/order-of-the-phoenix.jpg', '107'),
(8, '9780439785969', 'Harry Potter and the Half-Blood Prince', 'Test string 384', '2', '3', '7.50', '2006/07/25', '3', 'Covers/half-blood-prince.jpg', '99'),
(9, '9780545139700', 'Harry Potter and the Deathly Hallows', 'Test string 376444', '2', '3', '8.99', '2009/07/01', '3', 'Covers/deathly-hallows.jpg', '103'),
(10, '9780142410110', 'The Witches', 'Test string 37864', '2', '5' ,'7.98', '2007/08/16', '4', 'Covers/the-witches.jpg', '87'),
(11, '9780385333849', 'Slaughterhouse-Five', 'Test string 34434', '3', '4', '13.99', '1999/01/12', '5', 'Covers/slaughter-house-five.jpg', '85');

INSERT INTO `geektextdb`.`wishlist` (`WishListID`, `UserID`, `WishListIndex`, `WishListName`)
VALUES 
(1, 5, 1,'WishList1'),
(2, 5, 2,'WishList2'),
(3, 4, 1,'WishList1'),
(4, 4, 2,'WishList2'),
(5, 2, 1,'WishList1'),
(6, 2, 2,'WishList2'),
(7, 3, 1 ,'WishList1'),
(8, 3, 2 ,'WishList2'),
(9, 1, 1,'WishList1'),
(10, 1, 2,'WishList2');

INSERT INTO `geektextdb`.`wishlistitems` (`WishListitemID`, `WishListID`, `UserID`, `BookID`)
VALUES 
('1','1','5','1'),
('2','2','5','2'),
('3','3','4','1'),
('4','4','4','2'),
('5','5','3','1'),
('6','6','3','2'),
('7','7','2','1'),
('8','8','2','2'),
('9','9','1','1'),
('10','10','1','2');

/** Dummy data for Shopping Cart table**/
INSERT INTO `geektextdb`.`ShoppingCart` (`ShoppingCartID`, `UserID`, `SubTotal`)
VALUES
(1, 1, 20.17),
(2, 2, 18.34),
(3, 3, 15.43),
(4, 4, 16.64),
(5, 5, 26.52);

/** Dummy data for Shopping Cart Items table**/
INSERT INTO `geektextdb`.`ShoppingCartItems` (`ShoppingCartItemID`, `ShoppingCartID`, `BookID`, `Quantity`, `SaveForLater`)
VALUES 
(1, 1, 1, 2, true),
(2, 2, 2, 1, false),
(3, 3, 3, 1, true),
(4, 4, 4, 3, true),
(5, 5, 5, 1, false);

/** Dummy data for Orders table**/
INSERT INTO `geektextdb`.`orders` (`OrderID`, `UserID`, `ShippingID`, `TotalPrice`, `DateOrdered`, `CreditCardID`) 
VALUES 
(1, 1, 1, 45.17, now(), 1),
(2, 1, 2, 18.94, now(), 2),
(3, 2, 3, 108.27, now(), 3),
(4, 3, 4, 19.27, now() , 4);

/** Dummy data for OrderItems table"**/
INSERT INTO `geektextdb`.`orderitems` (`OrderItemID`, `OrderID`, `BookID`, `Quantity`) 
VALUES 
(1, 1, 1, 3), 
(2, 1, 8, 17),
(3, 2, 3, 8),
(4, 3, 5, 1), 
(5, 3, 9, 1),
(6, 3, 2, 4),
(7, 4, 1, 1);

/** Dummy data for Reviews table**/
INSERT INTO `geektextdb`.`reviews` (`ReviewID`, `UserID`, `OrderID`, `BookID`, `Rating`, `Comments`, `DatePosted`) 
VALUES 
(1, 1, 1, 1, 5, 'good book',  now()),
(2, 1, 2, 3, 3, 'it was an Ok book',  now()),
(3, 2, 3, 5, 1, 'I did not like the book',  now()),
(4, 2, 3, 9, 5, 'it is my favorite book', now()),
(5, 2, 3, 2, 1, 'I did not like the book',  now());