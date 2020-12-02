/** Dummy data for Authors table **/
INSERT INTO `geektextdb`.`authors` (`author_id`, `name`, `biography`) 
VALUES 
(1, 'Paulo Coelho', 'He wrote song lyrics for Brazilian '),
(2, 'Alexandre Dumas', 'Established himself as one of th'),
(3, 'J. K. Rowling', 'Was born on 31st July 1965 at Yate'),
(4, 'Kurt Vonnegut', 'Born on November 11, 1922, in Indi'),
(5, 'Roald Dahl', 'Was born on 13th September 1916 in a.'),
(6, 'C. S. Lewis', 'Was born in 1898, C.S. Lewis was one'),
(7, 'George R. R. Martin', 'Born in 1948, fantasy writer'),
(8, 'J. R. R. Tolkien', 'John Ronald Reuel Tolkien was.'),
(9, 'Gayle Laakmann McDowell', 'is the founder and CEO '),
(10, 'Paulo Coelho', 'He wrote song lyrics for Brazilian '),
(11, 'Alexandre Dumas', 'Established himself as one of th'),
(12, 'J. K. Rowling', 'Was born on 31st July 1965 at Yate'),
(13, 'Kurt Vonnegut', 'Born on November 11, 1922, in Indi');


/** Dummy data for Books table **/
INSERT INTO `geektextdb`.`books` (`book_id`, `isbn`, `title`, `cover`, `genre_name`, `author_id`, `price`, `date_published`, `publisher_name`, `summary`, `book_sells`) 
VALUES 
(1, '9780140449266', 'The Count of Monte Cristo', 'monte-cristo.jpg', 'Adventure', '2', '14.60', '2003/05/27', 'Penguin Classics', 'Thrown in prison for a crime he has not committed, Edmond Dantes is confined to the', '98'),
(2, '9780061122415', 'The Alchemist', 'the-alchemist.jpg', 'Adventure', '1', '12.99', '1993/04/25', 'HarperOne', 'Paulo Coelho\'s masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who year', '90'),
(3, '9780439708180', 'Harry Potter and the Sorcerer\'s Stone', 'philosopher-stone.jpg', 'Fantasy', '3', '7.95', '1998/09/01', 'Scholastic', 'Harry Potter has been living an ordinary life, constantly abused by his  ', '100'),
(4, '9780439064873', 'Harry Potter and the Chamber of Secrets', 'chamber-of-secrets.jpg', 'Fantasy', '3', '6.99', '2000/09/01', 'Scholastic', 'On Harry Potter\'s twelfth birthday, the Dursley family-Harry\'s uncler.', '105'),
(5, '9780439136365', 'Harry Potter And The Prisoner Of Azkaban', 'prisoner-of-azkaban.jpg', 'Fantasy', '3', '5.99', '2001/10/01', 'Scholastic', 'Harry is back at the Dursleys for the summer holidays, where he sees .', '104'),
(6, '9780439139601', 'Harry Potter And The Goblet Of Fire', 'goblet-of-fire.jpg', 'Fantasy', '3', '6.95', '2002/09/01', 'Scholastic', 'Harry Potter is in his fourth year at Hogwarts. Harry wants to get     be deadly.', '102'),
(7, '9780439358071', 'Harry Potter And The Order Of The Phoenix', 'order-of-the-phoenix.jpg', 'Fantasy', '3', '7.99', '2004/09/01', 'Scholastic', 'Harry is in his fifth year at Hogwarts School as the adventures cams.', '107'),
(8, '9780439785969', 'Harry Potter and the Half-Blood Prince', 'half-blood-prince.jpg', 'Fantasy', '3', '7.50', '2006/07/25', 'Scholastic', 'It is the middle of the summer, but there is an unseasonal mist pressing agai...', '99'),
(9, '9780545139700', 'Harry Potter and authorsauthorsauthorsthe Deathly Hallows', 'deathly-hallows.jpg', 'Fantasy', '3', '8.99', '2009/07/01', 'Scholastic', 'Harry is waiting in Privet Drive. The Order of the Phoenix is coming to escoelf.', '103'),
(10, '9780142410110', 'The Witches', 'the-witches.jpg', 'Fantasy', '5' ,'7.98', '2007/08/16', 'Puffin Books', 'Grandmamma loves to tell about witches. Real witches are the most dangerous of all living creatures on earthf!', '87'),
(11, '9780385333849', 'Slaughterhouse-Five', 'slaughter-house-five.jpg', 'Science Fiction', '4', '13.99', '1999/01/12', 'Turtleback Books', 'Slaughterhouse-Five, an American classic, is one of the world\'s great antiwarost.', '85'),
(12, '9780984782857', 'Cracking the Coding Interview', 'CTCInterview.jpg', 'Education', '9', '25.99', '2015/07/01', 'CareerCup', 'Learn how to uncover the hints and hidden details in a question, discover hs.', '55'),
(13, '9780439861342', 'The Magician\'s Nephew', 'Magicians-Nephew.jpg', 'Fantasy', '6', '7.99', '1999/08/22', 'HarperCollins', 'On a daring quest to save a life, two friends are hurled into another world, where an evi.', '55'),
(14, '9780064471046', 'The Lion, the Witch and the Wardrobe', 'Lion-witch-and-Wardrobe.jpg', 'Fantasy', '6', '8.99', '2002/03/05', 'HarperCollins', 'Four adventurous siblings—Peter, Susan, Edmund, and Lucy Pevensie—step tes.', '155'),
(15, '9780064471060', 'The Horse and His Boy', 'horse-And-his-boy.jpg', 'Fantasy', '6', '8.99', '2002/03/05', 'HarperCollins', 'On a desperate journey, two runaways meet and join forces. Though they are only looking to escapees.', '95'),
(16, '9780064471053', 'Prince Caspian', 'prince-caspian.jpg', 'Fantasy', '6', '8.99', '2002/03/05', 'HarperCollins', 'The Pevensie siblings travel back to Narnia to help a prince denied his rightful throne as he gathers an as.', '85'),
(17, '9780064471077', 'The Voyage of the Dawn Treader', 'dawn-treader.jpg', 'Fantasy', '6', '8.99', '2002/03/05', 'HarperCollins', 'A king and some unexpected companions embark on a voyage that will take them beyond aies.', '75'),
(18, '9780064471091', 'The Silver Chair', 'silver-chair.jpg', 'Fantasy', '6', '8.99', '2002/03/05', 'HarperCollins', 'Through dangers untold and caverns deep and dark, a noble band of friends is sent to rescue a prince s.', '55'),
(19, '9780064409414', 'The Last Battle', 'last-battle.jpg', 'Fantasy', '6', '8.99', '2002/03/05', 'HarperCollins', 'During the last days of Narnia, the land faces its fiercest challenge—not an invader from without buties', '45'),
(20, '9780547928227', 'The Hobbit', 'the-hobbit.jpg', 'Adventure', '8', '14.99', '2012/09/18', 'Allen & Unwin', 'Through dangers untold and caverns deep and dark, a noble band of friendies.', '55'),
(21, '9780547928210', 'The Fellowship of the Ring', 'fellowship-of-the-ring.jpg', 'Adventure', '8', '15.49', '2012/09/18', 'Allen & Unwin', 'In ancient times the Rings of Power were crafted by the Elven-smithse Ring and fose.', '255'),
(22, '9780547928203', 'The Two Towers', 'two-towers.jpg', 'Adventure', '8', '13.99', '2012/09/18', 'Allen & Unwin', 'Frodo and his Companions of the Ring have been beset by danger during their quest to prevent the Rulo.', '55'),
(23, '9780547928197', 'The Return of the King', 'ROTK.jpg', 'Adventure', '8', '16.99', '2012/09/18', 'Allen & Unwin', 'As the Shadow of Mordor grows across the land, the Companions of the Ring have become involveof the om.', '55'),
(24, '9780553573404', 'A Game of Thrones', 'GOT.jpg', 'Fantasy', '7', '9.99', '1997/08/04', 'Random House Publishing Group', 'Winter is coming. Such is the stern motto of House Stark, the northernmost of the fiefdoms that owe alson.', '155');

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