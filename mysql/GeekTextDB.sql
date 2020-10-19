CREATE DATABASE GeekTextDB;
USE GeekTextDB;

/** Users - Lists users created and 
their account info **/
CREATE TABLE `Users` (
  `UserID` int not null auto_increment,
  `Username` varchar(25) not null,
  `FirstName` varchar(25) not null,
  `MiddleName` varchar(25) null,
  `LastName` varchar(25) not null,
  `Email` varchar(50) not null,
  `Password` varchar(20) not null,
  `Nickname` varchar(25) not null,
  `PrivacySettings` boolean default False not null,
  PRIMARY KEY (`UserID`)
);

/** Home Address - Stores each user Home Address**/
CREATE TABLE `HomeAddress` (
 `UserID` int not null,
  `Street` varchar(50) not null,
  `Apt` varchar(5) null,
  `City` varchar(25) not null,
  `State` varchar(25) not null,
  `ZipCode` varchar(10) not null,
  `Country` varchar(25) not null,
  PRIMARY KEY (`UserID`),
  FOREIGN KEY (`UserID`) references GeekTextDB.Users(`UserID`)
);

/** Shipping Address - Stores various Shipping 
Addresses per user **/
CREATE TABLE `ShippingAddress` (
  `ShippingID` int not null auto_increment,
  `UserID` int not null,
  `Street` varchar(50) not null,
  `Apt` varchar(5) null,
  `City` varchar(25) not null,
  `State` varchar(25) not null,
  `ZipCode` varchar(10) not null,
  `Country` varchar(25) not null,
  PRIMARY KEY (`ShippingID`),
  FOREIGN KEY (`UserID`) REFERENCES GeekTextDB.Users(`UserID`)
);

/** CreditCard - Stores various credit cards 
per user as payment method **/
CREATE TABLE `CreditCards` (
  `CreditCardID` int not null auto_increment,
  `CreditCardNumber` varchar(19) not null,
  `UserID` int not null,
  `CardholderName` varchar(50) not null,
  `ExpirationDate` date not null,
  `CVV` varchar(4) not null,
  PRIMARY KEY (`CreditCardID`),
  FOREIGN KEY (`UserID`) REFERENCES GeekTextDB.Users(`UserID`)
);

/** Publishers - Lists possible book publishers **/
CREATE TABLE `Publishers` (
  `PublisherID` int not null auto_increment,
  `PublisherName` varchar(50) not null,
  PRIMARY KEY (`PublisherID`)
);

/** Genres - Lists possible book genres **/
CREATE TABLE `Genres` (
  `GenreID` int not null auto_increment,
  `GenreName` varchar(50) not null,
  PRIMARY KEY (`GenreID`)
);

/** Authors - Lists authors info **/
CREATE TABLE `Authors` (
  `AuthorID` int not null auto_increment,
  `Name` varchar(50) not null,
  `Biography` varchar(500) null,
  PRIMARY KEY (`AuthorID`)
);

/** Books - Lists all book details and records 
the total sells**/
CREATE TABLE `Books` (
  `BookID` int not null auto_increment,
  `ISBN` varchar(13) not null,
  `Title` varchar(100) not null,
  `Cover` varchar(255) not null,
  `GenreID` int not null,
  `AuthorID` int not null,
  `Price`  decimal(6,2) not null,
  `DatePublished` varchar(10) not null,
  `PublisherID` int not null,
  `Summary` varchar(500) not null,
  `BookSells` int default 0 not null, 
  PRIMARY KEY (`BookID`),
  FOREIGN KEY (`GenreID`) REFERENCES GeekTextDB.Genres(`GenreID`),
  FOREIGN KEY (`AuthorID`) REFERENCES GeekTextDB.Authors(`AuthorID`),
  FOREIGN KEY (`PublisherID`) REFERENCES GeekTextDB.Publishers(`PublisherID`)
);

/** WishList - Holds up to 3 Wishlists per user**/
CREATE TABLE `WishList` (
  `WishListID` int not null auto_increment,
  `UserID` int not null,
  `WishListIndex` int not null,
  `WishListName` varchar(25) null,
  PRIMARY KEY (`WishListID`),
  FOREIGN KEY (`UserID`) REFERENCES GeekTextDB.Users(`UserID`)
);

/** WishListItems - Holds which items and the quantity 
added to the user Wishlist **/
CREATE TABLE `WishListItems` (
  `WishListItemID` int not null auto_increment,
  `WishListID` int not null,
  `UserID` int not null,
  `BookID` int not null,
  PRIMARY KEY (`WishListItemID`),
  FOREIGN KEY (`WishListID`) REFERENCES GeekTextDB.WishList(`WishListID`),
  FOREIGN KEY (`UserID`) REFERENCES GeekTextDB.Users(`UserID`),
  FOREIGN KEY (`BookID`) REFERENCES GeekTextDB.Books(`BookID`)
);

/** ShoppingCart - Each user has their unique 
shoping cart with the current balance **/
CREATE TABLE `ShoppingCart` (
  `ShoppingCartID` int not null auto_increment,
  `UserID` int not null,
  `SubTotal` decimal(12,2) not null, 
  PRIMARY KEY (`ShoppingCartID`),
  FOREIGN KEY (`UserID`) REFERENCES GeekTextDB.Users(`UserID`)
);

/** ShoppingCartItems - Holds all the items on a Shopping Cart **/
CREATE TABLE `ShoppingCartItems` (
  `ShoppingCartItemID` int not null auto_increment,
  `ShoppingCartID` int not null,
  `BookID` int not null,
  `Quantity` decimal(3,0) not null default 1,
  `SaveForLater` boolean default false not null,
  PRIMARY KEY (`ShoppingCartItemID`),
  FOREIGN KEY (`BookID`) references GeekTextDB.Books(`BookID`),
  FOREIGN KEY (`ShoppingCartID`) references GeekTextDB.ShoppingCart(`ShoppingCartID`)
);

/** Order - Lists all the details of an Order **/
CREATE TABLE `Orders` (
  `OrderID` int not null auto_increment,
  `UserID` int not null,
  `ShippingID` int not null,
  `TotalPrice` decimal(12,2) not null,
  `DateOrdered` timestamp not null,
  `CreditCardID` int not null,
  PRIMARY KEY (`OrderID`),
  FOREIGN KEY (`CreditCardID`) REFERENCES GeekTextDB.CreditCards(`CreditCardID`),
  FOREIGN KEY (`ShippingID`) REFERENCES GeekTextDB.ShippingAddress(`ShippingID`),
  FOREIGN KEY (`UserID`) REFERENCES GeekTextDB.Users(`UserID`)
);

/** Reviews - Holds all the items on an Order **/
CREATE TABLE `OrderItems` (
  `OrderItemID` int not null auto_increment,
  `OrderID` int not null,
  `BookID` int not null,
  `Quantity` decimal(5,0) not null default 1,
  PRIMARY KEY (`OrderItemID`),
  FOREIGN KEY (`OrderID`) references GeekTextDB.Orders(`OrderID`),
  FOREIGN KEY (`BookID`) references GeekTextDB.Books(`BookID`)
);

/** Reviews - Holds the reviews and ratings each user has 
made on a book after an order has taken place**/
CREATE TABLE `Reviews` (
  `ReviewID` int not null auto_increment,
  `UserID` int not null,
  `OrderID` int not null,
  `BookID` int not null,
  `Rating` int not null,
  `Comments` varchar(255) null,
  `DatePosted` timestamp not null,
  PRIMARY KEY(`ReviewID`),
  FOREIGN KEY (`UserID`) REFERENCES GeekTextDB.Users(`UserID`),
  FOREIGN KEY (`OrderID`) REFERENCES GeekTextDB.Orders(`OrderID`),
  FOREIGN KEY (`BookID`) REFERENCES GeekTextDB.Books(`BookID`)
);

/** WrittenBy View - Display the association of books with their respective authors**/
CREATE VIEW `WrittenBy` AS
SELECT `Name`, `Title`
FROM `Books`, `Authors`
WHERE `Books`.`AuthorID` = `Authors`.`AuthorID`;

/** TopSellers View - Display a list of books that meet certain criteria on book sells and rating**/
CREATE VIEW `TopSellers` AS
SELECT `Title`, `Cover`, `ISBN`, `Rating`
FROM `Books`
INNER JOIN `Reviews` ON `Books`.`BookID` = `Reviews`.`BookID`
WHERE `Rating` > 3.5 AND `BookSells` > 90;

/** BrowseAndSortBy View - Display a list of books with their respetive specific Information**/
CREATE VIEW `BrowseAndSortBy` AS
SELECT `Title`, `Cover`, `Name`,`GenreName`, `DatePublished`, `Price`, `Rating`
FROM `Books`, `Genres`, `Authors`, `Reviews`
WHERE `Books`.`GenreID` = `Genres`.`GenreID`
AND `Books`.`AuthorID` = `Authors`.`AuthorID`
AND `Books`.`BookID` = `Reviews`.`BookID`
