-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2012 at 11:28 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `estudent`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `id` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `mark` int(2) NOT NULL,
  `year` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`id`, `subject`, `user`, `mark`, `year`) VALUES
(10, 63204, 63100200, 5, 1),
(11, 63202, 63100200, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `examon` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `description`, `examon`) VALUES
(63204, 'Spletno programiranje', 'Pri predmetu Spletno programiranje bomo odgovorili na zgoraj zastavljena vprašanja. Cilj predmeta je študentu dati razgledanost in širino znanj, povezanih z delovanjem raznovrstnih sodobnih spletnih tehnologij in razvojnih okolij. Pregledali bomo osnovne tehnologije tehnologije izdelave in oblikovanja spletnih strani (HTML5, CSS, XML) ter jih nadgradili s pregledom tehnologij na strani brskalniškega klienta (JavaScript) in strežniških tehnologij (PHP, AJAX, JavaServer, ASP.NET, Ruby/Rails, spletne storitve).', 1),
(63201, 'Osnove Programiranja', 'Cilj predmeta je študentom predstaviti osnovne koncepte objektno usmerjenega programiranja v enem izmed splošno namenskih programskih jezikov 3. generacije in jih usposobiti za samostojen razvoj enostavnih ra?unalniških programov.', 1),
(63202, 'Osnove matematicne analize', 'Osnove matematicne analize so po svoje ponovitev srednješolske matematike, zdelo se vam bo (vsaj nekaterim...) da poslušate stare stvari, ampak ta vtis je precej varljiv.', 1),
(63203, 'Diskretne strukture', 'Z matematiko je križ. Diskretne strukture so matematika. Zato so z Diskretnimi strukturami tudi same sitnosti. Ah, šalo na stran. Predstavimo raje, kaj bi zamudili, ?e bi se Diskretnim strukturam izognili. ?e vemo, da je 1+1=2 in 2+2=5, potem bi morali verjeti tudi, da je 3+3=7, mar ne? Sešteli bi lahko obe "ena?bi", na primer. Toda v tem primeru moramo verjeti tudi, da so vse krave iste barve. Tega pa si najbrž ne bi mislili. Je težko opravljati posel receptorja v neskon?nem hotelu? Tudi ?e je poln in na obisk pridejo dodatni gosti, jih vedno lahko razporedimo po prostih sobah. Skrbimo lahko tudi, da je hotel polno zaseden, ?eprav se lepega dne zaradi slabega vremena (le kako je lahko lepega dne slabo vreme?) domov odpravi neskon?no mnogo gostov. V?asih so v dvornih parkih vrtnarji skrbno prirezovali labirinte iz žive meje (ponekod to po?no še danes).', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `passwd` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `mail`, `status`, `passwd`) VALUES
(12345678, 'Referat', 'FRZC', 'referat@frzc.si', 2, 'abc'),
(63100200, 'Tomaz', 'Tomazic', 'tomaz@frzc.si', 1, 'abc'),
(63100201, 'Anita', 'Volk', 'anita@frzc.si', 1, 'aaa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
