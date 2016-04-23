-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2014 at 07:49 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolms`
--
CREATE DATABASE `schoolms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `schoolms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`) VALUES
(1, 'admin', 'mknizam16@yahoo.com', '1234', '1');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `atd_val` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`student_id`, `date`, `atd_val`, `class_id`, `reason`) VALUES
(1, '2014-03-08', 3, 1, ''),
(2, '2014-03-08', 3, 1, 'not able '),
(3, '2014-03-08', 3, 1, 'full'),
(1, '2014-03-09', 3, 1, 'fg');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `description`, `author`, `class_id`, `status`, `price`) VALUES
(1, 'xn', 'sdcn ', 'xnj', '1', 'available', '123');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(8) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name_unique` (`cat_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_description`) VALUES
(1, 'Wonder of Information Technology', 'nformation Technology or IT is something that is not unheard of these days.  With countless institutions dedicated to equipping students with the latest IT knowledge to thousands of companies worldwide that hire people based on their IT skills, the world '),
(2, 'PHP world', 'CodeIgniter uses a modified version of the Active Record Database Pattern. This pattern allows information to be retrieved, inserted, and updated in your database with minimal scripting. In some cases only one or two lines of code are necessary to perform'),
(3, 'sha', 'sha');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(1, 'IT', '1', 0),
(2, 'Principle Programming languages', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE IF NOT EXISTS `class_routine` (
  `class_routine_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`class_routine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `diary`
--

CREATE TABLE IF NOT EXISTS `diary` (
  `class_id` int(11) NOT NULL,
  `cdate` date NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diary`
--

INSERT INTO `diary` (`class_id`, `cdate`, `description`) VALUES
(1, '2014-03-11', 'cxsadassa'),
(1, '2014-03-04', 'sdcsf'),
(2, '2014-03-18', 'sssdsa'),
(1, '2014-03-12', 'hhjhj'),
(1, '2014-03-05', 'Welcome to online diary'),
(1, '2014-03-05', 'Welcome to online diary'),
(1, '2014-03-05', 'Welcome to online diary'),
(1, '2014-03-09', 'dcs'),
(1, '2014-04-05', 'Ameen has done work '),
(1, '2014-03-11', 'vdffdfd'),
(1, '2014-03-11', 'vdffdfd'),
(1, '2014-03-11', 'vdffdfd'),
(1, '2014-03-11', 'vdffdfd'),
(1, '2014-03-12', 'csacs'),
(1, '2014-03-12', 'csacs'),
(1, '2014-03-05', 'sdd'),
(1, '2014-03-05', 'sdd'),
(1, '2014-03-05', 'sdd'),
(1, '2014-04-06', 'we'),
(1, '2014-04-06', 'we'),
(1, '2014-04-06', 'we'),
(1, '2014-04-06', 'india'),
(1, '2014-04-06', 'india'),
(1, '2014-04-06', 'india'),
(1, '2014-04-06', 'india'),
(1, '2014-04-06', 'india'),
(1, '2014-04-06', 'india'),
(1, '2014-04-06', 'india'),
(2, '2014-04-07', 'email dday to day');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE IF NOT EXISTS `dormitory` (
  `dormitory_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_list` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dormitory_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `number_of_room`, `description`, `student_list`) VALUES
(1, 'xyz', '20', 'xjh', ''),
(2, 'shardha', '', 'welclome to shardha', '1jon\r\n2.peter\r\n3.weikcom');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE IF NOT EXISTS `email_template` (
  `email_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `task` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`email_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `date`, `comment`) VALUES
(1, 'Half Yearly', '02/22/2014', 'Welcom'),
(2, 'Final ', '03/18/2014', '');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `percentage` double NOT NULL,
  `grade` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`student_id`, `exam_id`, `total`, `percentage`, `grade`) VALUES
(1, 2, 225, 75, 'B'),
(2, 2, 155, 51.666666666666664, 'C'),
(3, 2, 192, 64, 'B'),
(4, 2, 270, 90, 'A'),
(1, 1, 175, 58.333333333333336, 'C'),
(2, 1, 255, 85, 'A'),
(3, 1, 139, 46.333333333333336, 'C'),
(4, 1, 245, 81.66666666666667, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `student_id`, `title`, `description`, `amount`, `creation_timestamp`, `payment_timestamp`, `payment_method`, `payment_details`, `status`) VALUES
(1, 1, 'Fee payment ', 'online paymen', 500, 1393369200, '', '', '', 'unpaid'),
(2, 2, 'final fee payement', 'about', 15000, 1393282800, '', '', '', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=653 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'login', ''),
(2, 'account_type', ''),
(3, 'admin', ''),
(4, 'teacher', ''),
(5, 'student', ''),
(6, 'parent', ''),
(7, 'email', ''),
(8, 'password', ''),
(9, 'forgot_password ?', ''),
(10, 'reset_password', ''),
(11, 'reset', ''),
(12, 'admin_dashboard', ''),
(13, 'account', ''),
(14, 'profile', ''),
(15, 'change_password', ''),
(16, 'logout', ''),
(17, 'panel', ''),
(18, 'dashboard_help', ''),
(19, 'dashboard', ''),
(20, 'student_help', ''),
(21, 'teacher_help', ''),
(22, 'subject_help', ''),
(23, 'subject', ''),
(24, 'class_help', ''),
(25, 'class', ''),
(26, 'exam_help', ''),
(27, 'exam', ''),
(28, 'marks_help', ''),
(29, 'marks-attendance', ''),
(30, 'grade_help', ''),
(31, 'exam-grade', ''),
(32, 'class_routine_help', ''),
(33, 'class_routine', ''),
(34, 'invoice_help', ''),
(35, 'payment', ''),
(36, 'book_help', ''),
(37, 'library', ''),
(38, 'transport_help', ''),
(39, 'transport', ''),
(40, 'dormitory_help', ''),
(41, 'dormitory', ''),
(42, 'noticeboard_help', ''),
(43, 'noticeboard-event', ''),
(44, 'bed_ward_help', ''),
(45, 'settings', ''),
(46, 'system_settings', ''),
(47, 'manage_language', ''),
(48, 'backup_restore', ''),
(49, 'profile_help', ''),
(50, 'manage_student', ''),
(51, 'manage_teacher', ''),
(52, 'noticeboard', ''),
(53, 'language', ''),
(54, 'backup', ''),
(55, 'calendar_schedule', ''),
(56, 'select_a_class', ''),
(57, 'student_list', ''),
(58, 'add_student', ''),
(59, 'roll', ''),
(60, 'photo', ''),
(61, 'student_name', ''),
(62, 'address', ''),
(63, 'options', ''),
(64, 'marksheet', ''),
(65, 'id_card', ''),
(66, 'edit', ''),
(67, 'delete', ''),
(68, 'personal_profile', ''),
(69, 'academic_result', ''),
(70, 'name', ''),
(71, 'birthday', ''),
(72, 'sex', ''),
(73, 'male', ''),
(74, 'female', ''),
(75, 'religion', ''),
(76, 'blood_group', ''),
(77, 'phone', ''),
(78, 'father_name', ''),
(79, 'mother_name', ''),
(80, 'edit_student', ''),
(81, 'teacher_list', ''),
(82, 'add_teacher', ''),
(83, 'teacher_name', ''),
(84, 'edit_teacher', ''),
(85, 'manage_parent', ''),
(86, 'parent_list', ''),
(87, 'parent_name', ''),
(88, 'relation_with_student', ''),
(89, 'parent_email', ''),
(90, 'parent_phone', ''),
(91, 'parrent_address', ''),
(92, 'parrent_occupation', ''),
(93, 'add', ''),
(94, 'parent_of', ''),
(95, 'profession', ''),
(96, 'edit_parent', ''),
(97, 'add_parent', ''),
(98, 'manage_subject', ''),
(99, 'subject_list', ''),
(100, 'add_subject', ''),
(101, 'subject_name', ''),
(102, 'edit_subject', ''),
(103, 'manage_class', ''),
(104, 'class_list', ''),
(105, 'add_class', ''),
(106, 'class_name', ''),
(107, 'numeric_name', ''),
(108, 'name_numeric', ''),
(109, 'edit_class', ''),
(110, 'manage_exam', ''),
(111, 'exam_list', ''),
(112, 'add_exam', ''),
(113, 'exam_name', ''),
(114, 'date', ''),
(115, 'comment', ''),
(116, 'edit_exam', ''),
(117, 'manage_exam_marks', ''),
(118, 'manage_marks', ''),
(119, 'select_exam', ''),
(120, 'select_class', ''),
(121, 'select_subject', ''),
(122, 'select_an_exam', ''),
(123, 'mark_obtained', ''),
(124, 'attendance', ''),
(125, 'manage_grade', ''),
(126, 'grade_list', ''),
(127, 'add_grade', ''),
(128, 'grade_name', ''),
(129, 'grade_point', ''),
(130, 'mark_from', ''),
(131, 'mark_upto', ''),
(132, 'edit_grade', ''),
(133, 'manage_class_routine', ''),
(134, 'class_routine_list', ''),
(135, 'add_class_routine', ''),
(136, 'day', ''),
(137, 'starting_time', ''),
(138, 'ending_time', ''),
(139, 'edit_class_routine', ''),
(140, 'manage_invoice/payment', ''),
(141, 'invoice/payment_list', ''),
(142, 'add_invoice/payment', ''),
(143, 'title', ''),
(144, 'description', ''),
(145, 'amount', ''),
(146, 'status', ''),
(147, 'view_invoice', ''),
(148, 'paid', ''),
(149, 'unpaid', ''),
(150, 'add_invoice', ''),
(151, 'payment_to', ''),
(152, 'bill_to', ''),
(153, 'invoice_title', ''),
(154, 'invoice_id', ''),
(155, 'edit_invoice', ''),
(156, 'manage_library_books', ''),
(157, 'book_list', ''),
(158, 'add_book', ''),
(159, 'book_name', ''),
(160, 'author', ''),
(161, 'price', ''),
(162, 'available', ''),
(163, 'unavailable', ''),
(164, 'edit_book', ''),
(165, 'manage_transport', ''),
(166, 'transport_list', ''),
(167, 'add_transport', ''),
(168, 'route_name', ''),
(169, 'number_of_vehicle', ''),
(170, 'route_fare', ''),
(171, 'edit_transport', ''),
(172, 'manage_dormitory', ''),
(173, 'dormitory_list', ''),
(174, 'add_dormitory', ''),
(175, 'dormitory_name', ''),
(176, 'number_of_room', ''),
(177, 'manage_noticeboard', ''),
(178, 'noticeboard_list', ''),
(179, 'add_noticeboard', ''),
(180, 'notice', ''),
(181, 'add_notice', ''),
(182, 'edit_noticeboard', ''),
(183, 'system_name', ''),
(184, 'save', ''),
(185, 'system_title', ''),
(186, 'paypal_email', ''),
(187, 'currency', ''),
(188, 'phrase_list', ''),
(189, 'add_phrase', ''),
(190, 'add_language', ''),
(191, 'phrase', ''),
(192, 'manage_backup_restore', ''),
(193, 'restore', ''),
(194, 'mark', ''),
(195, 'grade', ''),
(196, 'invoice', ''),
(197, 'book', ''),
(198, 'all', ''),
(199, 'upload_&_restore_from_backup', ''),
(200, 'manage_profile', ''),
(201, 'update_profile', ''),
(202, 'new_password', ''),
(203, 'confirm_new_password', ''),
(204, 'update_password', ''),
(205, 'teacher_dashboard', ''),
(206, 'backup_restore_help', ''),
(207, 'student_dashboard', ''),
(208, 'parent_dashboard', ''),
(209, 'view_marks', ''),
(210, 'delete_language', ''),
(211, 'settings_updated', ''),
(212, 'update_phrase', ''),
(213, 'login_failed', ''),
(214, 'Mail', ''),
(215, 'mail', ''),
(216, 'mail', ''),
(217, 'mail', ''),
(218, 'e-mail', ''),
(219, 'mail', ''),
(220, 'mail', ''),
(221, 'mail', ''),
(222, 'mail', ''),
(223, 'inbox', ''),
(224, 'mail', ''),
(225, 'mail', ''),
(226, 'outbox', ''),
(227, 'mail', ''),
(228, 'mail', ''),
(229, 'mail', ''),
(230, 'mail', ''),
(231, 'mail', ''),
(232, 'mail', ''),
(233, 'compose', ''),
(234, 'mail', ''),
(235, 'from', ''),
(236, 'time', ''),
(237, 'mail', ''),
(238, 'mail', ''),
(239, 'to', ''),
(240, 'message', ''),
(241, 'mail', ''),
(242, 'Send', ''),
(243, 'mail', ''),
(244, 'mail', ''),
(245, 'mail', ''),
(246, 'mail', ''),
(247, 'mail', ''),
(248, 'mail', ''),
(249, 'mail', ''),
(250, 'mail', ''),
(251, 'mail', ''),
(252, 'sent_time', ''),
(253, 'mail', ''),
(254, 'mail', ''),
(255, 'mail', ''),
(256, 'mail', ''),
(257, 'mail', ''),
(258, 'mail', ''),
(259, 'mail', ''),
(260, 'mail', ''),
(261, 'mail', ''),
(262, 'mail', ''),
(263, 'mail', ''),
(264, 'mail', ''),
(265, 'mail', ''),
(266, 'mail', ''),
(267, 'mail', ''),
(268, 'mail', ''),
(269, 'Manage Forum', ''),
(270, 'mail', ''),
(271, 'mail', ''),
(272, 'mail', ''),
(273, 'mail', ''),
(274, 'mail', ''),
(275, 'mail', ''),
(276, 'mail', ''),
(277, 'mail', ''),
(278, 'mail', ''),
(279, 'mail', ''),
(280, 'mail', ''),
(281, 'mail', ''),
(282, 'mail', ''),
(283, 'mail', ''),
(284, 'mail', ''),
(285, 'mail', ''),
(286, 'mail', ''),
(287, 'mail', ''),
(288, 'mail', ''),
(289, 'mail', ''),
(290, 'mail', ''),
(291, 'mail', ''),
(292, 'mail', ''),
(293, 'mail', ''),
(294, 'mail', ''),
(295, 'mail', ''),
(296, 'mail', ''),
(297, 'mail', ''),
(298, 'mail', ''),
(299, 'mail', ''),
(300, 'mail', ''),
(301, 'mail', ''),
(302, 'mail', ''),
(303, 'mail', ''),
(304, 'mail', ''),
(305, 'mail', ''),
(306, 'mail', ''),
(307, 'mail', ''),
(308, 'mail', ''),
(309, 'mail', ''),
(310, 'mail', ''),
(311, 'mail', ''),
(312, 'mail', ''),
(313, 'view', ''),
(314, 'mail', ''),
(315, 'mail', ''),
(316, 'mail', ''),
(317, 'mail', ''),
(318, 'mail', ''),
(319, 'mail', ''),
(320, 'Title', ''),
(321, 'Title', ''),
(322, 'Title', ''),
(323, 'Title', ''),
(324, 'mail', ''),
(325, 'Title', ''),
(326, 'Title', ''),
(327, 'mail', ''),
(328, 'mail', ''),
(329, 'Title', ''),
(330, 'Title', ''),
(331, 'mail', ''),
(332, 'Title', ''),
(333, 'mail', ''),
(334, 'mail', ''),
(335, 'mail', ''),
(336, 'mail', ''),
(337, 'mail', ''),
(338, 'mail', ''),
(339, 'mail', ''),
(340, 'mail', ''),
(341, 'Title', ''),
(342, 'mail', ''),
(343, 'mail', ''),
(344, 'forum', ''),
(345, 'system_email', ''),
(346, 'buyer', ''),
(347, 'purchase_code', ''),
(348, 'create categories', ''),
(349, 'create topics', ''),
(350, 'Category Name', ''),
(351, 'Category Discription', ''),
(352, 'Add Category', ''),
(353, 'mail', ''),
(354, 'mail', ''),
(355, 'mail', ''),
(356, 'mail', ''),
(357, 'mail', ''),
(358, 'Welcome to the forum', ''),
(359, 'Forums are the way of online discussionss', ''),
(360, 'The GSM is optimized for telephony, since this was identified as its main application. The key idea for SMS was to use this telephone-optimized system, and to transport messages on the signaling paths needed to control the telephone traffic during time periods when no signaling traffic existed.', ''),
(361, 'WP4 created a Drafting Group Message Handling (DGMH), which was responsible for the specification of SMS. Finn Trosby of Telenor chaired the draft group through its first 3 years, in which the design of SMS was established. DGMH had five to eight participants, and Finn Trosby mentions as major contributors Kevin Holley, Eija Altonen, Didier Luizard and Alan Cox. The first action plan[18] mentions for the first time the Technical Specification 03.40 ', ''),
(362, 'WP4 created a Drafting Group Message Handling (DGMH), which was responsible for the specification of SMS. Finn Trosby of Telenor chaired the draft group through its first 3 years, in which the design of SMS was established. DGMH had five to eight participants, and Finn Trosby mentions as major contributors Kevin Holley, Eija Altonen, Didier Luizard and Alan Cox. The first action plan[18] mentions for the first time the Technical Specification 03.40 ', ''),
(363, 'WP4 created a Drafting Group Message Handling (DGMH), which was responsible for the specification of SMS. Finn Trosby of Telenor chaired the draft group through its first 3 years, in which the design of SMS was established. DGMH had five to eight participants, and Finn Trosby mentions as major contributors Kevin Holley, Eija Altonen, Didier Luizard and Alan Cox. The first action plan[18] mentions for the first time the Technical Specification 03.40 ', ''),
(364, 'WP4 created a Drafting Group Message Handling (DGMH), which was responsible for the specification of SMS. Finn Trosby of Telenor chaired the draft group through its first 3 years, in which the design of SMS was established. DGMH had five to eight participants, and Finn Trosby mentions as major contributors Kevin Holley, Eija Altonen, Didier Luizard and Alan Cox. The first action plan[18] mentions for the first time the Technical Specification 03.40 ', ''),
(365, 'ID', ''),
(366, 'id', ''),
(367, 'mail', ''),
(368, 'id', ''),
(369, 'mail', ''),
(370, 'id', ''),
(371, 'id', ''),
(372, 'id', ''),
(373, 'id', ''),
(374, 'id', ''),
(375, 'mail', ''),
(376, 'mail', ''),
(377, 'id', ''),
(378, 'id', ''),
(379, 'id', ''),
(380, 'id', ''),
(381, 'id', ''),
(382, 'id', ''),
(383, 'id', ''),
(384, 'id', ''),
(385, 'CATEGORIES', ''),
(386, 'id', ''),
(387, 'id', ''),
(388, 'id', ''),
(389, 'id', ''),
(390, 'id', ''),
(391, 'id', ''),
(392, 'id', ''),
(393, 'id', ''),
(394, 'id', ''),
(395, 'id', ''),
(396, 'id', ''),
(397, 'id', ''),
(398, 'id', ''),
(399, 'id', ''),
(400, 'id', ''),
(401, 'id', ''),
(402, 'id', ''),
(403, 'id', ''),
(404, 'id', ''),
(405, 'id', ''),
(406, 'mail', ''),
(407, 'Title', ''),
(408, 'option', ''),
(409, 'edit_phrase', ''),
(410, 'id', ''),
(411, 'id', ''),
(412, 'id', ''),
(413, 'id', ''),
(414, 'id', ''),
(415, 'TOPICS', ''),
(416, 'id', ''),
(417, 'topic', ''),
(418, 'id', ''),
(419, 'id', ''),
(420, 'id', ''),
(421, 'id', ''),
(422, 'id', ''),
(423, 'cat', ''),
(424, 'id', ''),
(425, 'id', ''),
(426, 'id', ''),
(427, 'id', ''),
(428, 'mail', ''),
(429, 'mail', ''),
(430, 'mail', ''),
(431, 'Title', ''),
(432, 'mail', ''),
(433, 'Title', ''),
(434, 'Title', ''),
(435, 'id', ''),
(436, 'mail', ''),
(437, 'Title', ''),
(438, 'id', ''),
(439, 'id', ''),
(440, 'id', ''),
(441, 'mail', ''),
(442, 'Title', ''),
(443, 'Title', ''),
(444, 'Title', ''),
(445, 'id', ''),
(446, 'id', ''),
(447, 'id', ''),
(448, 'mail', ''),
(449, 'Title', ''),
(450, 'mail', ''),
(451, 'mail', ''),
(452, 'Title', ''),
(453, 'edit_dormitory', ''),
(454, 'Online Dairy ', ''),
(455, 'Repository', ''),
(456, 'E- Book', ''),
(457, 'Syllabus', ''),
(458, 'syllabus', ''),
(459, 'syllabus', ''),
(460, 'syllabus', ''),
(461, 'syllabus', ''),
(462, 'syllabus', ''),
(463, 'View', ''),
(464, 'syllabus', ''),
(465, 'View', ''),
(466, 'syllabus', ''),
(467, 'View', ''),
(468, 'syllabus', ''),
(469, 'View', ''),
(470, 'syllabus', ''),
(471, 'syllabus', ''),
(472, 'syllabus', ''),
(473, 'View', ''),
(474, 'View', ''),
(475, 'syllabus', ''),
(476, 'syllabus', ''),
(477, 'syllabus', ''),
(478, 'syllabus', ''),
(479, 'View', ''),
(480, 'View', ''),
(481, 'syllabus', ''),
(482, 'syllabus', ''),
(483, 'View', ''),
(484, 'View', ''),
(485, 'syllabus', ''),
(486, 'View', ''),
(487, 'View', ''),
(488, 'syllabus', ''),
(489, 'syllabus', ''),
(490, 'syllabus', ''),
(491, 'syllabus', ''),
(492, 'View', ''),
(493, 'View', ''),
(494, 'syllabus', ''),
(495, 'syllabus', ''),
(496, 'View', ''),
(497, 'View', ''),
(498, 'syllabus', ''),
(499, 'syllabus', ''),
(500, 'syllabus', ''),
(501, 'syllabus', ''),
(502, 'View', ''),
(503, 'View', ''),
(504, 'syllabus', ''),
(505, 'syllabus', ''),
(506, 'syllabus', ''),
(507, 'View', ''),
(508, 'View', ''),
(509, 'syllabus', ''),
(510, 'syllabus', ''),
(511, 'View', ''),
(512, 'View', ''),
(513, 'syllabus', ''),
(514, 'syllabus', ''),
(515, 'View', ''),
(516, 'View', ''),
(517, 'syllabus', ''),
(518, 'syllabus', ''),
(519, 'syllabus', ''),
(520, 'View', ''),
(521, 'View', ''),
(522, 'syllabus', ''),
(523, 'syllabus', ''),
(524, 'View', ''),
(525, 'View', ''),
(526, 'View', ''),
(527, 'syllabus', ''),
(528, 'syllabus', ''),
(529, 'View', ''),
(530, 'View', ''),
(531, 'View', ''),
(532, 'syllabus', ''),
(533, 'syllabus', ''),
(534, 'View', ''),
(535, 'View', ''),
(536, 'View', ''),
(537, 'View', ''),
(538, 'View', ''),
(539, 'View', ''),
(540, 'syllabus', ''),
(541, 'syllabus', ''),
(542, 'syllabus', ''),
(543, 'View', ''),
(544, 'View', ''),
(545, 'View', ''),
(546, 'View', ''),
(547, 'View', ''),
(548, 'View', ''),
(549, 'syllabus', ''),
(550, 'View', ''),
(551, 'View', ''),
(552, 'View', ''),
(553, 'syllabus', ''),
(554, 'View', ''),
(555, 'View', ''),
(556, 'View', ''),
(557, 'View', ''),
(558, 'View', ''),
(559, 'View', ''),
(560, 'View', ''),
(561, 'View', ''),
(562, 'View', ''),
(563, 'View', ''),
(564, 'View', ''),
(565, 'View', ''),
(566, 'View', ''),
(567, 'syllabus', ''),
(568, 'syllabus', ''),
(569, 'View', ''),
(570, 'View', ''),
(571, 'View', ''),
(572, 'View', ''),
(573, 'View', ''),
(574, 'View', ''),
(575, 'View', ''),
(576, 'View', ''),
(577, 'syllabus', ''),
(578, 'syllabus', ''),
(579, 'syllabus', ''),
(580, 'View', ''),
(581, 'View', ''),
(582, 'View', ''),
(583, 'syllabus', ''),
(584, 'syllabus', ''),
(585, 'dormitory_name/number', ''),
(586, 'dormitory_name/Number', ''),
(587, 'dormitory_name/Number', ''),
(588, 'dormitory_name/Number', ''),
(589, 'Student_List', ''),
(590, 'dormitory_name/Number', ''),
(591, 'dormitory_name/Number', ''),
(592, 'Student_List', ''),
(593, 'dormitory_name/Number', ''),
(594, 'dormitory_name/Number', ''),
(595, 'Student_List', ''),
(596, 'dormitory_name/Number', ''),
(597, 'dormitory_name/Number', ''),
(598, 'Student_List', ''),
(599, 'dormitory_name/Number', ''),
(600, 'Student_list', ''),
(601, 'dormitory_name/Number', ''),
(602, 'Student_list', ''),
(603, 'dormitory_name/Number', ''),
(604, 'dormitory_name/Number', ''),
(605, 'Student_List', ''),
(606, 'syllabus', ''),
(607, 'View', ''),
(608, 'View', ''),
(609, 'View', ''),
(610, 'View', ''),
(611, 'syllabus', ''),
(612, 'View', ''),
(613, 'View', ''),
(614, 'View', ''),
(615, 'View', ''),
(616, 'syllabus', ''),
(617, 'View', ''),
(618, 'View', ''),
(619, 'View', ''),
(620, 'View', ''),
(621, 'syllabus', ''),
(622, 'View', ''),
(623, 'View', ''),
(624, 'View', ''),
(625, 'View', ''),
(626, 'View', ''),
(627, 'syllabus', ''),
(628, 'syllabus', ''),
(629, 'View', ''),
(630, 'View', ''),
(631, 'View', ''),
(632, 'View', ''),
(633, 'View', ''),
(634, 'syllabus', ''),
(635, 'View', ''),
(636, 'View', ''),
(637, 'View', ''),
(638, 'View', ''),
(639, 'View', ''),
(640, 'syllabus', ''),
(641, 'syllabus', ''),
(642, 'syllabus', ''),
(643, 'syllabus', ''),
(644, 'dormitory_name/Number', ''),
(645, 'dormitory_name/Number', ''),
(646, 'Student_List', ''),
(647, 'dormitory_name/Number', ''),
(648, 'dormitory_name/Number', ''),
(649, 'Student_List', ''),
(650, 'dormitory_name/Number', ''),
(651, 'dormitory_name/Number', ''),
(652, 'Student_List', '');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
  `mark_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` int(11) NOT NULL DEFAULT '0',
  `mark_total` int(11) NOT NULL DEFAULT '100',
  `attendance` int(11) NOT NULL DEFAULT '0',
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mark_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `attendance`, `comment`) VALUES
(1, 1, 1, 1, 1, 0, 100, 0, ''),
(2, 2, 1, 1, 1, 0, 100, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `sub1` int(11) NOT NULL,
  `sub2` int(11) NOT NULL,
  `sub3` int(11) NOT NULL,
  `sub4` int(11) NOT NULL,
  `sub5` int(11) NOT NULL,
  `sub6` int(11) NOT NULL,
  `sub7` int(11) NOT NULL,
  `sub8` int(11) NOT NULL,
  `sub9` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`student_id`, `class_id`, `exam_id`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`, `sub9`) VALUES
(5, 2, 1, 12, 36, 0, 0, 0, 0, 0, 0, 0),
(1, 1, 2, 45, 65, 65, 0, 0, 0, 0, 0, 0),
(2, 1, 2, 45, 85, 95, 0, 0, 0, 0, 0, 0),
(3, 1, 2, 46, 52, 35, 0, 0, 0, 0, 0, 0),
(4, 1, 2, 90, 85, 95, 0, 0, 0, 0, 0, 0),
(1, 1, 1, 45, 65, 65, 0, 0, 0, 0, 0, 0),
(2, 1, 1, 75, 85, 95, 0, 0, 0, 0, 0, 0),
(3, 1, 1, 52, 52, 35, 0, 0, 0, 0, 0, 0),
(4, 1, 1, 65, 85, 95, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `maximum_marks`
--

CREATE TABLE IF NOT EXISTS `maximum_marks` (
  `exam_id` int(11) NOT NULL,
  `subject1` int(11) NOT NULL,
  `suject2` int(11) NOT NULL,
  `subject3` int(11) NOT NULL,
  `subject4` int(11) NOT NULL,
  `subject5` int(11) NOT NULL,
  `subject6` int(11) NOT NULL,
  `subject7` int(11) NOT NULL,
  `subject8` int(11) NOT NULL,
  `subject9` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user` varchar(30) NOT NULL,
  `from_user` varchar(30) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `user_read` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `to_user`, `from_user`, `title`, `message`, `user_read`, `deleted`) VALUES
(2, 'mknizam16@yahoo.com', 'parent@xyz.com', 'Hello mr admin', 'hi admin welcome to the internal messaging system ', 'yes', 'no '),
(3, 'mknizam16@yahoo.com', 'teacher@xyz.com', 'hello admin to reset ', 'Hi admin i have to get my details to be reseted', 'yes', 'no '),
(4, 'teacher@xyz.com', 'parent@xyz.com', 'hello teacher this is parent ', 'hello teacher i am the paren of the student wanted to know his performs ', 'no', 'no'),
(5, 'parent@xyz.com', 'teacher@xyz.com', 'Hello parent from teacher ', 'hello parent your student is doing good no problem ', 'no', 'no'),
(6, 'student@xyz.com', 'mknizam16@yahoo.com', 'hello student admin here', 'admin to user', 'no', 'no'),
(7, 'parent@xyz.com', 'mknizam16@yahoo.com', 'admin to parent', 'admin to parent ', '', ''),
(8, 'student@xyz.com', 'mknizam16@yahoo.com', 'hekko', 'welcome student admin', '', ''),
(9, 'student@xyz.com', 'mknizam16@yahoo.com', 'Welcome to SMS', 'admin to student ', 'no', 'no'),
(11, 'parent@xyz.com', 'mknizam16@yahoo.com', 'Hello mr admin', 'welcome to reply ', 'no', 'no'),
(14, 'mknizam16@yahoo.com', 'parent@xyz.com', 'admin to parent', 'hi parent admin here', 'yes', 'no'),
(15, 'mknizam16@yahoo.com', 'parent@xyz.com', 'admin to parent', 'admin to parent', 'yes', 'no'),
(16, 'parent@xyz.com', 'mknizam16@yahoo.com', 'admin to parent', 'admin to parent ', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`) VALUES
(1, 'Exam notification', 'when exams will be ', 1393542000);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `relation_with_student` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `student_id`, `relation_with_student`, `phone`, `address`, `profession`) VALUES
(1, 'parent', 'parent@xyz.com', '1234', 1, 'father', '132456987', 'Hyderabad Andhra Pradesh ', 'engg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(8) NOT NULL AUTO_INCREMENT,
  `post_content` text NOT NULL,
  `post_date` datetime NOT NULL,
  `post_topic` int(8) NOT NULL,
  `post_by` int(8) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `post_topic` (`post_topic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'xyz'),
(2, 'system_title', 'xyz'),
(3, 'address', 'Dhaka, Bangladesh'),
(4, 'phone', '+8012654159'),
(5, 'paypal_email', 'payment@school.com'),
(6, 'currency', 'usd'),
(7, 'system_email', 'school@ekattor.com'),
(8, 'buyer', 'shahansha'),
(9, 'purchase_code', '263bb3ea-5352-4cb8-96d4-33c342032214');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `roll` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`) VALUES
(1, 'student', '07/14/2004', 'female', '', '', 'Hyderabad Andhra Pradesh ', '132456897', 'student@xyz.com', '1234', 'parent', 'mother', '1', '1', 0, 0, ''),
(2, 'mkn', '06/10/2009', 'male', '', '', 'hyderabd', '123456789', 'mkn@xyz.com', '1234', 'father', 'mother', '1', '2', 0, 0, ''),
(3, 'khwaja', '', 'male', 'muslim', 'B+', 'jvnjsvjd', '123456789', 'khwaja@xyz.com', '1234', 'Feroze', 'zakirunnisa', '1', '3', 0, 0, ''),
(4, 'khwaja', '', 'male', 'muslim', 'B+', 'jvnjsvjd', '123456789', 'khwaja@xyz.com', '1234', 'Feroze', 'zakirunnisa', '1', '4', 2, 1, '1'),
(5, 'Javed ', '03/08/1990', 'male', '', '', 'hyderabd', '123456789', 'javed@xyz.com', '1234', 'Mohammed ', 'Mrs.Mohammed', '2', '2', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `syllabus` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`, `syllabus`) VALUES
(1, 'C++', 1, 1, 'Inheritance \r\nAdance technologies\r\n'),
(2, 'Java', 2, 1, '\r\n\r\nProduct Based Training\r\n\r\nReal-Time Case Studies\r\n\r\nUse of Latest Tools & Technology\r\n\r\nLCD equipped class room\r\n\r\nUnlimited Lab facility\r\n\r\nFaculties drawn from Industries\r\n\r\nDaily Handouts & Lab Exercise\r\n\r\nWorkshops on New Technologies\r\n\r\nSCJP Orientation Classes\r\n\r\nIntroduction\r\n\r\nProgramming language Types and Paradigms.\r\n\r\nComputer Programming Hierarchy.\r\n\r\nHow Computer Architecture Affects a Language ?\r\n\r\nWhy Java ?\r\n\r\nFlavors of Java.\r\n\r\nJava Designing Goal.\r\n\r\nRole of Java Programmer in Industry.\r\n\r\nFeatures of Java Language.\r\n\r\nJVM –The heart of Java\r\n\r\nJava’s Magic Bytecode'),
(3, '.Net', 1, 1, 'Teaching Aptitude\r\nResearch aptitude\r\nReading comprehension\r\nCommunication\r\nReasoning\r\nLogical reasoning\r\nData Interpretation\r\nInformation and communication technology\r\nPeople and Environment\r\nHigher education system: Governance Polity and Administration '),
(4, 'india', 1, 1, 'welcome'),
(5, 'J2SE', 2, 1, 'dnclmsdc l');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`) VALUES
(1, 'Teacher', '02/04/2009', 'male', '', '', 'Hyderabad Andhra Pradesh ', '123456789', 'teacher@xyz.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `topic_id` int(8) NOT NULL AUTO_INCREMENT,
  `topic_subject` varchar(255) NOT NULL,
  `topic_date` datetime NOT NULL,
  `topic_cat` int(8) NOT NULL,
  `topic_by` int(8) NOT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `topic_cat` (`topic_cat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic_subject`, `topic_date`, `topic_cat`, `topic_by`) VALUES
(1, 'welcome to the virual worl', '2014-02-20 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
  `transport_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_topic`) REFERENCES `topics` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`topic_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
