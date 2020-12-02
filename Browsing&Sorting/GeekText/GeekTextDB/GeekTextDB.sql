Drop database if exists geektextdb;
CREATE DATABASE GeekTextDB;
USE GeekTextDB;
/** Authors - Lists authors info **/
CREATE TABLE `authors` (
  `author_id` int not null auto_increment,
  `name` varchar(50) not null,
  `biography` varchar(255) null,
  PRIMARY KEY (`author_id`)
);


/** Books - Lists all book details and records 
the total sells**/
CREATE TABLE `books` (
  `book_id` int not null auto_increment,
  `isbn` varchar(13) not null,
  `title` varchar(100) not null,
  `cover` varchar(255) not null,
  `genre_name` varchar(50) not null,
  `author_id` int not null,
  `price`  decimal(6,2) not null,
  `date_published` varchar(10) not null,
  `publisher_name` varchar(50) not null,
  `summary` varchar(255) not null,
  `book_sells` int default 0 not null, 
  PRIMARY KEY (`book_id`),
  FOREIGN KEY (`author_id`) REFERENCES GeekTextDB.Authors(`author_id`)
);
/** WishList - Holds up to 3 Wishlists per user**/
CREATE TABLE `WishList` (
  `wishListID` int not null auto_increment,
  `UserID` int not null,
  `WishListIndex` int not null,
  `WishListName` varchar(25) not null,
  PRIMARY KEY (`WishListID`)
);

/** WishListItems - Holds which items and the quantity 
added to the user Wishlist **/
CREATE TABLE `WishListItems` (
  `WishListItemID` int not null auto_increment,
  `WishListID` int not null,
  `UserID` int not null,
  `BookID` int not null,
  PRIMARY KEY (`WishListItemID`),
  FOREIGN KEY (`WishListID`) REFERENCES GeekTextDB.WishList(`WishListID`)
);