CREATE DATABASE GeekTextDB;
USE GeekTextDB;

/** Users - Lists users created and 
their account info **/
CREATE TABLE `Users` (
  `Username` varchar(25) not null,
  `FirstName` varchar(15) not null,
  `MiddleName` varchar(15) null,
  `LastName` varchar(20) not null,
  `Email` varchar(50) not null,
  `Password` varchar(20) not null,
  `Nickname` varchar(25) not null,
  `PrivacySettings` boolean default False not null,
  PRIMARY KEY (`Username`)
);

/** Home Address - Stores each user Home Address**/
CREATE TABLE `Home Address` (
 `Username` varchar(25) not null,
  `Street` varchar(50) not null,
  `Apt` varchar(5) null,
  `City` varchar(25) not null,
  `State` varchar(25) not null,
  `ZipCode` varchar(10) not null,
  `Country` varchar(25) not null,
  PRIMARY KEY (`Username`),
  FOREIGN KEY (`Username`) references GeekTextDB.Users(`Username`)
);

/** Shipping Address - Stores various Shipping 
Addresses per user **/
CREATE TABLE `ShippingAddress` (
  `ShippingID` int not null auto_increment,
  `Username` varchar(25) not null,
  `Street` varchar(50) not null,
  `Apt` varchar(5) null,
  `City` varchar(25) not null,
  `State` varchar(25) not null,
  `ZipCode` varchar(10) not null,
  `Country` varchar(25) not null,
  PRIMARY KEY (`ShippingID`),
  FOREIGN KEY (`Username`) REFERENCES GeekTextDB.Users(`Username`)
);

/** CreditCard - Stores various credit cards 
per user as payment method **/
CREATE TABLE `CreditCards` (
  `CreditCardNumber` varchar(19) not null,
  `Username` varchar(25) not null,
  `CardholderName` varchar(50) not null,
  `ExpirationDate` date not null,
  `CVV` varchar(4) not null,
  PRIMARY KEY (`CreditCardNumber`),
  FOREIGN KEY (`Username`) REFERENCES GeekTextDB.Users(`Username`)
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
  `FirstName` varchar(15) not null,
  `LastName` varchar(20) not null,
  `Biography` varchar(500),
  PRIMARY KEY (`AuthorID`)
);

/** Books - Lists all book details and records 
the total sells**/
CREATE TABLE `Books` (
  `ISBN` varchar(13) not null,
  `Title` varchar(100) not null,
  `Cover` varchar(255) not null,
  `GenreID` int not null,
  `Price`  decimal(6,2) not null,
  `DatePublished` varchar(10) not null,
  `PublisherID` int not null,
  `Summary` varchar(500) not null,
  `BookSells` decimal(3,0) default 0 not null, 
  PRIMARY KEY (`ISBN`),
  FOREIGN KEY (`GenreID`) REFERENCES GeekTextDB.Genres(`GenreID`),
  FOREIGN KEY (`PublisherID`) REFERENCES GeekTextDB.Publishers(`PublisherID`)
);

/** WrittenBy - Links all Authors with the Books 
they have written **/
CREATE TABLE `WrittenBy` (
  `AuthorID` int not null,
  `ISBN` varchar(13) not null,
  PRIMARY KEY (`ISBN`),
  FOREIGN KEY (`AuthorID`) REFERENCES GeekTextDB.Authors(`AuthorID`),
  FOREIGN KEY (`ISBN`) REFERENCES GeekTextDB.Books(`ISBN`)
);

/** WishList - Holds up to 3 Wishlists per user**/
CREATE TABLE `WishList` (
  `WishListID` int not null auto_increment,
  `Username` varchar(25) not null,
  `WishListIndex` int not null,
  `WishListName` varchar(25) not null,
  PRIMARY KEY (`WishListID`),
  FOREIGN KEY (`Username`) REFERENCES GeekTextDB.Users(`Username`)
);




/** WishListItems - Holds which items and the quantity 
added to the user Wishlist **/
CREATE TABLE `WishListItems` (
  `WishListItemID` int not null auto_increment,
  `WishListID` int not null,
  `Username` varchar(25) not null,
  `ISBN` varchar(13) not null,
  PRIMARY KEY (`WishListItemID`),
  FOREIGN KEY (`WishListID`) REFERENCES GeekTextDB.WishList(`WishListID`),
  FOREIGN KEY (`Username`) REFERENCES GeekTextDB.Users(`Username`),
  FOREIGN KEY (`ISBN`) REFERENCES GeekTextDB.Books(`ISBN`)
);

/** ShoppingCart - Each user has their unique 
shoping cart with the current balance **/
CREATE TABLE `ShoppingCart` (
  `ShoppingCartID` int not null auto_increment,
  `Username` varchar(25) not null,
  `SubTotal` decimal(12,2) not null, 
  PRIMARY KEY (`ShoppingCartID`),
  FOREIGN KEY (`Username`) REFERENCES GeekTextDB.Users(`Username`)
);

/** ShoppingCartItems - Holds all the items on a Shopping Cart **/
CREATE TABLE `ShoppingCartItems` (
  `ShoppinCartItemID` int not null auto_increment,
  `ShoppingCartID` int not null,
  `ISBN` varchar(13) not null,
  `Quantity` decimal(3,0) not null default 1,
  `SaveForLater` boolean default false not null,
  PRIMARY KEY (`ShoppinCartItemID`),
  FOREIGN KEY (`ISBN`) references GeekTextDB.Books(`ISBN`),
  FOREIGN KEY (`ShoppingCartID`) references GeekTextDB.ShoppingCart(`ShoppingCartID`)
);

/** Order - Lists all the details of an Order **/
CREATE TABLE `Orders` (
  `OrderID` int not null auto_increment,
  `Username` varchar(25) not null,
  `ShippingID` int not null,
  `TotalPrice` decimal(12,2) not null,
  `DateOrdered` timestamp not null,
  `CreditCardNumber` varchar(19) not null,
  PRIMARY KEY (`OrderID`),
  FOREIGN KEY (`CreditCardNumber`) REFERENCES GeekTextDB.CreditCards(`CreditCardNumber`),
  FOREIGN KEY (`ShippingID`) REFERENCES GeekTextDB.ShippingAddress(`ShippingID`),
  FOREIGN KEY (`Username`) REFERENCES GeekTextDB.Users(`Username`)
);

/** Reviews - Holds all the items on an Order **/
CREATE TABLE `OrderItems` (
  `OrderItemID` int not null auto_increment,
  `OrderID` int not null,
  `ISBN` varchar(13) not null,
  `Quantity` decimal(5,0) not null default 1,
  PRIMARY KEY (`OrderItemID`),
  FOREIGN KEY (`OrderID`) references GeekTextDB.Orders(`OrderID`),
  FOREIGN KEY (`ISBN`) references GeekTextDB.Books(`ISBN`)
);

/** Reviews - Holds the reviews and ratings each user has 
made on a book after an order has taken place**/
CREATE TABLE `Reviews` (
  `Username` varchar(25) not null,
  `OrderID` int not null,
  `ISBN` varchar(13) not null,
  `Rating` int not null,
  `Comments` varchar(255) null,
  `DatePosted` timestamp not null,
  PRIMARY KEY(`Username`, `OrderID`, `ISBN`),
  FOREIGN KEY (`Username`) REFERENCES GeekTextDB.Users(`Username`),
  FOREIGN KEY (`OrderID`) REFERENCES GeekTextDB.Orders(`OrderID`),
  FOREIGN KEY (`ISBN`) REFERENCES GeekTextDB.Books(`ISBN`)
);