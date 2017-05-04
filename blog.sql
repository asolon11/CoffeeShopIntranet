-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2017 at 05:57 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(24) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Uncategorized'),
(2, 'PHP'),
(3, 'Random Stuff'),
(8, 'My Face'),
(9, 'MY CUPER COFEE');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(6) NOT NULL,
  `cat_id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `date_posted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `title`, `contents`, `date_posted`) VALUES
(1, 1, 'First post!', 'This is Awesome!', '2017-04-30 21:17:40'),
(2, 1, 'Second post!', 'This is Awesomer!', '2017-04-30 21:17:46'),
(3, 1, 'Third Post!', 'This is Awesomest!!!', '2017-04-30 21:18:27'),
(6, 3, 'The Old Man and the Sea (Deadpool\'s Version)', 'The Old Man and the Sea is the story of a fight between an elderly, accomplished fisherman, Santiago, and a really big fish. Like... HUGE. The story opens with Santiago suffering eighty-four days without catching a fish because he\'s the unluckiest son-of-a-bitch on planet earth. Honestly, if you were in a boat for eighty-four days, it\'d be hard to NOT catch a fish... even by accident. Santiago was so unlucky that his apprentice, Manolin, was forbidden by his Ma and Pa to fish with him. But as The Fresh Prince used to say, \'Parents Just Don\'t Understand\'. So the boy visits Santiago\'s shack anyway. Ignoring the inherent risks of unsupervised playtime with an elderly man who talks to himself, Manolin helps out, moving Santiago\'s fishing gear, making food and talking about baseball. Especially Joe DiMaggio; who used to bump fuzzies with Marilyn Monroe. The next day, Santiago tells Manolin that he\'s going way out into the Gulf Stream. WAY OUT north of Cuba. Lady luck is returning! On the eighty-fifth day of his crappy luck, Santiago drops his lines, and by noon, gets a bite from what feels like a big ass fish. He\'s sure it\'s a winner. He fights and fights and fights but can\'t pull the monster in. Santiago\'s leaky old boat is pulled by the fish for two days and nights as he holds on for dear life. Even though he\'s bloody and beat, Santiago begins to appreciate this mighty adversary. He starts calling him "brother" or maybe even, "bro." It\'s sort of a love story if you really think about it. And like most romantic comedies, the reader pictures a delightful outfit changing montage, followed by the inevitable interspecies wedding. But on the third day, Santiago is freakin\' EXHAUSTED, and decides he just wants the fish to do what he says and not always swim wherever it wants. So he stabs it. With a fucking harpoon. It\'s a mess. Super gross. Blood everywhere. Because, like many men his age, Santiago has difficulty expressing his emotions and fears with words - instead giving in to base desires - and imposing his gigantically terrible positions on any given subject through unblinking violence. Typical. Anyway, he straps the marlin to the side of his skiff and hits the road home, ready to act like a total show off to everyone and probably gouge people on the price. But guess what? Pretty soon sharks begin to attack the bleeding marlin\'s carcass, because we all know, life is a tragic opera and just when you think you\'ve finally found something good and true, sharks come along and rip it all to fucking shreds while dry-humping your dignity with their crazy-weird shark dicks. Sure, Santiago tries killing a few of them, but drops his harpoon because his hands are just as old as he is. By nighttime, the sharks have pretty much eaten the entire marlin. Only a bleach-white skeleton remains, silently mocking him in the murky darkness. Santiago realizes he\'s still unlucky. REALLY unlucky. (Duh!) He calls the sharks "dream killers". Which isn\'t really all that fair. I mean, the sharks were just doing their job and the marlin... Jesus, don\'t even get me started on the marlin! It was just hanging out one day, minding it\'s own business, maybe thinking about ways it could be a better provider for it\'s family and WHAM! Harpoon in the brain. Who\'s the "dream killer" now, fuckface?! The hypocrisy is pretty much boundless at this point. Eventually Santiago makes it ashore. Leaving the bones of the marlin and the boat, he hobbles to his shack. He makes it home and crashes, like I said - he\'s super tired. The next morning a group of fishermen gather around Santiago\'s boat. One measures the skeleton and, holy shit-shingles! It\'s over 18 feet! The head of the fish is given to Pedrico (strange that this is the first mention of him) and the other fishermen ask Manolin to send their glad tidings to the old man. Manolin brings Santiago newspapers and coffee when he wakes and they decide to fish together again. Many years later, there\'s a Red Lobster Restaurant in nearly every city in America, offering a casual dining experience and convenient parking.', '2017-05-03 22:54:45'),
(5, 3, 'Ramsay Bolton\'s letter to Jon Snow (Game of Thrones)', 'To the traitor and bastard Jon Snow, \r\n\r\nYou allowed thousands of wildlings past the Wall. You have betrayed your own kind and you\'ve betrayed the North. Winterfell is mine, bastard, come and see. \r\n\r\nYour brother Rickon is in my dungeon. His direwolf\'s skin is on my floor, come and see. \r\n\r\nI want my bride back. Send her to me, bastard, and I will not trouble you or your wildling lovers. Keep her from me and I will ride North to slaughter every wildling man, woman, and babe living under your protection. You will watch as I skin them living. You will watch as my soldiers take turns raping your sister. You will watch as my dogs devour your wild little brother. Then I will spoon your eyes from their sockets and let my dogs do the rest. Come and see. \r\n\r\n\r\nRamsay Bolton, \r\nLord of Winterfell and Warden of the North \r\n\r\n', '2017-04-30 23:10:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`,`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
