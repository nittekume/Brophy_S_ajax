-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 10:23 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_megaman`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_character`
--

CREATE TABLE IF NOT EXISTS `tbl_character` (
  `character_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `character_name` varchar(50) NOT NULL,
  `character_role` varchar(50) NOT NULL,
  `character_game` varchar(50) NOT NULL,
  `character_weapon` varchar(50) NOT NULL,
  `character_bio` text NOT NULL,
  `character_thumb` varchar(50) NOT NULL,
  `character_photo` varchar(50) NOT NULL,
  PRIMARY KEY (`character_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_character`
--

INSERT INTO `tbl_character` (`character_id`, `character_name`, `character_role`, `character_game`, `character_weapon`, `character_bio`, `character_thumb`, `character_photo`) VALUES
(1, 'MegaMan', 'Hero', 'Megaman Series', 'Mega Buster, Variable Weapon System', 'Mega Man, known as Rockman (Rokkuman, from the phrase "Rock ''n Roll") in Japan, also known as Mega or Rock in his original form, is the title character of what has been referred to as the "Classic" Mega Man series developed by Capcom since 1987. The pixel art for Mega Man was created by the designer of the original game in the series, Akira Kitamura (credited under the pseudonym "A.K"), and later turned into a refined illustration by Keiji Inafune. Since then, he has become one of the company''s primary original characters and continues to be one of the video game industry''s most recognizable icons. Having appeared on many gaming systems since the Nintendo Entertainment System, Mega Man has had a wide gaming audience, and his games continue to evolve with the ever-changing hardware demands of modern gaming systems. Mega Man''s fictional universe can be divided into seven categories, each featuring different variations and incarnations of the same blue hero. Although "Mega Man", or "Rockman", is usually the name used to describe only the original Mega Man from the classic series, it can also be used less specifically to describe the Mega Man series of fictional works, or the group of adherently named main characters within. Several spin-off series have emerged over the past few years, each one continuing the Mega Man mythos in some unique way, including but not limited to Mega Man X, Mega Man Legends, and Mega Man Battle Network. A resulting animated series was also produced originally in the United States as well as a number of toys, comics, and collectibles available both in and outside of Japan.\n\nMega Man''s role in the original story is to battle the mad scientist Dr. Wily and his ever-growing army of robots, and stop them from taking over Earth by using their own special abilities against them. Utilizing his special Mega Buster arm cannon, and his ability to copy a defeated robot''s Special Weapon, Mega Man must travel the world and traverse harsh environments in order to bring Wily''s menace to an end. With the help of his creator Dr. Light and his assorted robotic companions, Mega Man''s eventual goal is to one day achieve "everlasting peace". ', 'character1th.png', 'character1.png'),
(2, 'BubbleMan', 'Boss', 'MegaMan 2', 'Bubble Lead', 'Bubble Man (Baburuman) is the first aquatic Robot Master created by Dr. Wily for underwater combat. However, a defect in his system makes him unable to walk on land, being only able to move by jumping. After seeing this, Wily couldn''t help but laugh at his way of moving. Despite this flaw, Bubble Man is at home in the water, being able to swim at remarkable speed.\r\n\r\nBubble Man attacks with normal shots from a Buster on his arm, and can fire his Special Weapon, the Bubble Lead, from both the aforementioned arm cannon and a special Bubble Gun on top of his head. Bubble Man can utilise the bubbles for several different purposes, including hitting opponents with bursts of small bubbles and blowing larger and more durable bubbles to either wrap opponents inside to trap them temporarily, or for Bubble Man himself to hide in as a shield. ', 'character2th.png', 'character2.png'),
(3, 'CrashMan', 'Boss', 'MegaMan 2', 'Crash Bomber', 'Crash Man, known as Clashman (Kurasshuman) in Japan, is a combat Robot Master that was built by Dr. Wily using the designs of Bomb Man and Guts Man as a base with high speed and agility, the use of high explosives as primary weapons, and clad in a thick armour that can effectively withstand explosions. His Special Weapon is the Crash Bomber, powerful drill-like time bombs that attach themselves to their targets before detonating.\r\n\r\nCrash Man is an honest, forthright individual who is usually obedient, if somewhat clumsy due to his lack of functional hands. However, he has a tendency to suffer from violent mood swings- he can be docile one moment and fly into psychotic rages the next, often going on destructive rampages with his bombs when angered. ', 'character3th.png', 'character3.png'),
(4, 'FlashMan', 'Boss', 'MegaMan 2', 'Time Stopper', 'Flash Man (Furasshuman) is a Robot Master created by Doctor Albert W. Wily to challenge the everlasting idea of controlling time. Flash Man''s Special Weapon is the Time Stopper, a unique system that allows him to stop time for brief periods. To supplement his attacking abilities, he is also equipped with a rapid-fire buster on his right arm. The eight Robot Masters from Mega Man 2 have built-in devices that make them immune to the Time Stopper, but Quick Man''s device has a flaw, making him vulnerable to it.\r\n\r\nIn combat, Flash Man can stop time to immobilize his opponents, before attacking them mercilessly with rapid barrages of shots from his buster while they cannot move. To his enemies, Flash Man appears to be moving at light speed or teleporting. It is believed that this ability is a perfected form of what the later-introduced Time Man was capable of- because unlike Time Man, who could only slow down time with Time Slow, Flash Man can stop it completely.\r\n\r\nWhilst often miserable and prone to complaining, deep down he is a benevolent leader who cares deeply for the well-being of his subordinates. He likes cameras and photography, as well as making use of his time-stopping powers to play pranks on others and to spend longer bathing. He is bald, often lamenting the fact that Doctor Wily designed him without hair, and thus he dislikes commercials for wigs and hair products. ', 'character4th.png', 'character4.png'),
(5, 'Albert W. Wily', 'Main Antagonist', 'Megaman Series', 'Wily Machines', 'Doctor Albert W. Wily (Dokuta Arubato W Wairi) also called Dr. Willy, Dr. Wiley, and Dr. Waily is the main antagonist of the original Mega Man series, appearing in every game as the antagonist but not necessarily always as the final boss. In the Mega Man series, Wily resembles a stereotypical mad scientist as he schemes to take over the world, creating several robots to help him. Though Wily''s schemes were stopped time and time again, this did not stop him from being recorded in history as a legendary mad scientist, his legacy continuing even into the next century. He even appears consciously active long after the demise of his mortal body, playing a significant role in the Mega Man X series. He, for some reason, likes wiggling his eyebrows before going into his capsule (in some games).', 'character5th.png', 'character5.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
