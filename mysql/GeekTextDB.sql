CREATE DATABASE GeekTextDB;
USE GeekTextDB;

/** CreditCard - Stores various credit cards 
per user as payment method **/
CREATE TABLE `CreditCards` (
  `Credit CardNumber` varchar(19) not null,
  `Username` varchar(25) not null,
  `CardholderName` varchar(50) not null,
  `ExpirationDate` date not null,
  `CVV` varchar(4) not null,
  PRIMARY KEY (`Credit CardNumber`),
  KEY `PK, FK` (`Username`)
);

/** Genres - Lists possible book genres **/
CREATE TABLE `Genres` (
  `GenreID` int not null auto_increment,
  `GenreName` varchar(50) not null,
  PRIMARY KEY (`GenreID`)
);

/** ShoppingCart - Each user has their unique 
shoping cart with the current balance **/
CREATE TABLE `ShoppingCart` (
  `ShoppingCartID` int not null auto_increment,
  `Username` varchar(25) not null,
  `SubTotal` decimal(12,2) not null,
  PRIMARY KEY (`ShoppingCartID`)
);

/** Authors - Lists authors info **/
CREATE TABLE `Authors` (
  `AuthorID` int not null auto_increment,
  `FirstName` varchar(15) not null,
  `MiddleName` varchar(15) not null,
  `LastName` varchar(20) not null,
  `Biography` text null,
  PRIMARY KEY (`AuthorID`)
);

/** Users - Lists users created and 
their account info **/
CREATE TABLE `Users` (
  `Username` varchar(25) not null,
  `FirstName` varchar(15) not null,
  `MiddleName` varchar(15) not null,
  `LastName` varchar(20) not null,
  `Email` varchar(50) not null,
  `Password` varchar(20),
  `Nickname` varchar(25) not null,
  `PrivacySettings` boolean default False,
  PRIMARY KEY (`Username`)
);

/** Publishers - Lists possible book publishers **/
CREATE TABLE `Publishers` (
  `PublisherID` int not null auto_increment,
  `PublisherName` varchar(50) not null,
  PRIMARY KEY (`PublisherID`)
);

/** WrittenBy - Links all Authors with the Books 
they have written **/
CREATE TABLE `WrittenBy` (
  `AuthorID` int not null auto_increment,
  `ISBN` varchar(13) not null,
  KEY `PK, FK` (`AuthorID`, `ISBN`)
);

/** Books - Lists all book details and records 
the total sells**/
CREATE TABLE `Books` (
  `ISBN` varchar(13) not null,
  `Title` varchar(100) not null,
  `Cover` varchar(255) not null,
  `GenreID` int not null,
  `Price`  decimal(6,2) not null,
  `DatePublished` date not null,
  `PublisherID` int not null,
  `Summary` text not null,
  `BookSells` int null, 
  PRIMARY KEY (`ISBN`)
);

/** Shipping Address - Stores various Shipping 
Addresses per user **/
CREATE TABLE `Shipping Address` (
  `Username` varchar(25) not null,
  `ShippingID` int not null auto_increment,
  `Street` varchar(50) not null,
  `Apt` varchar(5) null,
  `City` varchar(25) not null,
  `State` varchar(25) not null,
  `Zip Code` varchar(10) not null,
  `Country` varchar(25) not null,
  PRIMARY KEY (`ShippingID`),
  KEY `PK, FK` (`Username`)
);

/** WishList - Holds up to 3 Wishlists per user**/
CREATE TABLE `WishList` (
  `WishListID` int not null auto_increment,
  `Username` varchar(25) not null,
  `WishListIndex` decimal (1,0) not null default 0,
  `WishListName` varchar(25) not null,
  `DateCreated` timestamp not null,
  PRIMARY KEY (`WishListID`, `WishListIndex`),
  KEY `PK, FK` (`Username`)
);

/** Reviews - Holds the reviews and ratings each user has 
made on a book after an order has taken place**/
CREATE TABLE `Reviews` (
  `Username` varchar(25) not null,
  `OrderID` int not null,
  `ISBN` varchar(13) not null,
  `Rating` decimal (1,0) not null default 0,
  `Comments` text null,
  `DatePosted` timestamp,
  KEY `PK, FK` (`Username`, `OrderID`, `ISBN`)
);

/** WishListItems - Holds which items and the quantity 
added to the user Wishlist **/
CREATE TABLE `WishListItems` (
  `WishListItemID` int not null auto_increment,
  `WishListID` int not null,
  `ISBN` varchar(13) not null,
  PRIMARY KEY (`WishListItemID`)
);

/** Order - Lists all the details of an Order **/
CREATE TABLE `Order` (
  `OrderID` int not null auto_increment,
  `Username` varchar(25) not null,
  `ShippingID` int not null,
  `TotalPrice` decimal(12,2) not null,
  `DateOrdered` timestamp not null,
  `CreditCardNumber` varchar(19) not null,
  PRIMARY KEY (`OrderID`)
);

/** ShoppingCartItems - Holds all the items on a Shopping Cart **/
CREATE TABLE `ShoppingCartItems` (
  `ShoppinCartItemID` int not null auto_increment,
  `ShoppingCartID` int not null,
  `ISBN` varchar(13) not null,
  `Quantity` decimal(5,0),
  `SaveForLater` boolean default false,
  PRIMARY KEY (`ShoppinCartItemID`)
);

/** Reviews - Holds all the items on an Order **/
CREATE TABLE `OrderItems` (
  `OrderItemID` int not null auto_increment,
  `OrderID` int not null,
  `ISBN` varchar(13) not null,
  `Quantity` decimal(5,0),
  PRIMARY KEY (`OrderItemID`)
);

/** Home Address - Stores each user Home Address**/
CREATE TABLE `Home Address` (
 `Username` varchar(25) not null,
  `Street` varchar(50) not null,
  `Apt` varchar(5) null,
  `City` varchar(25) not null,
  `State` varchar(25) not null,
  `Zip Code` varchar(10) not null,
  `Country` varchar(25) not null,
  KEY `PK, FK` (`Username`)
);
