-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 24, 2012 at 09:22 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ekbatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_commentmeta`
--

CREATE TABLE IF NOT EXISTS `kbtn_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `kbtn_commentmeta`
--

INSERT INTO `kbtn_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 57, '_wp_trash_meta_status', '1'),
(2, 57, '_wp_trash_meta_time', '1355858847'),
(3, 56, '_wp_trash_meta_status', '1'),
(4, 56, '_wp_trash_meta_time', '1355858847'),
(5, 55, '_wp_trash_meta_status', '1'),
(6, 55, '_wp_trash_meta_time', '1355858847'),
(7, 52, '_wp_trash_meta_status', '0'),
(8, 52, '_wp_trash_meta_time', '1355858847'),
(9, 54, '_wp_trash_meta_status', '1'),
(10, 54, '_wp_trash_meta_time', '1355858859'),
(11, 53, '_wp_trash_meta_status', '0'),
(12, 53, '_wp_trash_meta_time', '1355858859'),
(13, 59, 'my_custom_comment_field', 'a:1:{s:4:"file";s:0:"";}'),
(14, 60, 'file_column', 'a:1:{s:4:"file";s:0:"";}'),
(15, 61, 'my_custom_comment_field', 'a:1:{s:4:"file";s:0:"";}'),
(16, 62, 'my_custom_comment_field', 'a:1:{s:4:"file";s:0:"";}'),
(17, 63, 'file_column', 'a:1:{s:4:"file";s:0:"";}'),
(18, 64, 'file_column', 'a:1:{s:4:"file";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_comments`
--

CREATE TABLE IF NOT EXISTS `kbtn_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `kbtn_comments`
--

INSERT INTO `kbtn_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'آقای وردپرس', '', 'http://wordpress.org/', '', '2012-11-14 07:08:55', '2012-11-14 07:08:55', 'سلام،‌ این نوشته یک «دیدگاه» است.<br />برای پاک کردن یا ویرایش یک دیدگاه، باید وارد بخش مدیریت شوید، سپس به بخش دیدگاه‌ها بروید٬ در آن‌جا می‌توانید دیدگاه‌ها را ویرایش و یا پاک کنید.', 0, '1', '', '', 0, 0),
(2, 73, 'admin', 'mahlad365@gmail.com', '', '127.0.0.1', '2012-11-29 18:09:53', '2012-11-29 18:09:53', 'الاتلتالات', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.91 Safari/537.11', '', 0, 1),
(3, 73, 'admin', 'mahlad365@gmail.com', '', '127.0.0.1', '2012-11-29 18:10:26', '2012-11-29 18:10:26', 'زبیییی', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.91 Safari/537.11', '', 2, 1),
(4, 68, 'admin', 'mahlad365@gmail.com', '', '127.0.0.1', '2012-11-29 18:14:50', '2012-11-29 18:14:50', 'غبفغقفغق', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.91 Safari/537.11', '', 0, 1),
(5, 77, 'admin', 'mahlad365@gmail.com', '', '127.0.0.1', '2012-11-29 18:52:32', '2012-11-29 18:52:32', 'دیدگاه کانون', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.91 Safari/537.11', '', 0, 1),
(6, 41, 'admin', 'mahlad365@gmail.com', '', '127.0.0.1', '2012-12-02 21:44:24', '2012-12-02 21:44:24', 'didgahe man\n:)', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', '', 0, 1),
(7, 38, 'admin', 'mahlad365@gmail.com', '', '127.0.0.1', '2012-12-02 22:03:15', '2012-12-02 22:03:15', 'didgaham ro doos daram\n:)', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', '', 0, 1),
(8, 0, '[''comment_author'']', '[''comment_author_email'']', '[''comment_author_url'']', '127.0.0.1', '2012-12-12 08:17:29', '2012-12-12 08:17:29', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(9, 0, '[''comment_author'']', '[''comment_author_email'']', '[''comment_author_url'']', '127.0.0.1', '2012-12-12 08:17:37', '2012-12-12 08:17:37', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(10, 0, '[''comment_author'']', '[''comment_author_email'']', '[''comment_author_url'']', '127.0.0.1', '2012-12-12 08:17:50', '2012-12-12 08:17:50', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(11, 0, '[''comment_author'']', '[''comment_author_email'']', '[''comment_author_url'']', '127.0.0.1', '2012-12-12 08:18:02', '2012-12-12 08:18:02', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(12, 0, '', '[''comment_author_email'']', '[''comment_author_url'']', '127.0.0.1', '2012-12-12 08:19:36', '2012-12-12 08:19:36', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(13, 0, '', '', '', '127.0.0.1', '2012-12-12 08:19:49', '2012-12-12 08:19:49', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(14, 0, '', '', '', '127.0.0.1', '2012-12-12 08:19:54', '2012-12-12 08:19:54', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(15, 0, '', '', '', '127.0.0.1', '2012-12-12 08:20:07', '2012-12-12 08:20:07', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(16, 0, '', '', '', '127.0.0.1', '2012-12-12 08:20:26', '2012-12-12 08:20:26', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(17, 0, '', '', '', '127.0.0.1', '2012-12-12 08:21:48', '2012-12-12 08:21:48', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(18, 0, '', '', '', '127.0.0.1', '2012-12-12 08:24:40', '2012-12-12 08:24:40', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(19, 0, '', '', '', '127.0.0.1', '2012-12-12 08:25:10', '2012-12-12 08:25:10', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(20, 0, '', '', '', '127.0.0.1', '2012-12-12 08:27:04', '2012-12-12 08:27:04', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(21, 0, '', '', '', '127.0.0.1', '2012-12-12 08:28:07', '2012-12-12 08:28:07', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(22, 0, '', '', '', '127.0.0.1', '2012-12-12 08:28:43', '2012-12-12 08:28:43', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(23, 0, '', '', '', '127.0.0.1', '2012-12-12 08:30:35', '2012-12-12 08:30:35', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(24, 0, '', '', '', '127.0.0.1', '2012-12-12 08:33:44', '2012-12-12 08:33:44', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(25, 0, '', '', '', '127.0.0.1', '2012-12-12 08:34:31', '2012-12-12 08:34:31', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(26, 0, '', '', '', '127.0.0.1', '2012-12-12 08:34:50', '2012-12-12 08:34:50', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(27, 0, '', '', '', '127.0.0.1', '2012-12-12 08:35:04', '2012-12-12 08:35:04', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(28, 0, '', '', '', '127.0.0.1', '2012-12-12 08:35:23', '2012-12-12 08:35:23', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(29, 0, '', '', '', '127.0.0.1', '2012-12-12 08:35:54', '2012-12-12 08:35:54', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(30, 0, '', '', '', '127.0.0.1', '2012-12-12 08:36:10', '2012-12-12 08:36:10', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(31, 0, '', '', '', '127.0.0.1', '2012-12-12 08:36:24', '2012-12-12 08:36:24', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(32, 0, '', '', '', '127.0.0.1', '2012-12-12 08:36:40', '2012-12-12 08:36:40', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(33, 0, '', '', '', '127.0.0.1', '2012-12-12 08:46:26', '2012-12-12 08:46:26', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(34, 0, '', '', '', '127.0.0.1', '2012-12-12 08:48:15', '2012-12-12 08:48:15', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(35, 0, '', '', '', '127.0.0.1', '2012-12-12 08:48:28', '2012-12-12 08:48:28', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(36, 0, '', '', '', '127.0.0.1', '2012-12-12 08:48:42', '2012-12-12 08:48:42', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(37, 0, '', '', '', '127.0.0.1', '2012-12-12 08:48:53', '2012-12-12 08:48:53', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(38, 0, '', '', '', '127.0.0.1', '2012-12-12 08:49:31', '2012-12-12 08:49:31', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(39, 0, '', '', '', '127.0.0.1', '2012-12-12 08:50:14', '2012-12-12 08:50:14', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(40, 0, '', '', '', '127.0.0.1', '2012-12-12 08:50:14', '2012-12-12 08:50:14', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(41, 0, '', '', '', '127.0.0.1', '2012-12-12 08:50:21', '2012-12-12 08:50:21', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(42, 0, '', '', '', '127.0.0.1', '2012-12-12 08:50:24', '2012-12-12 08:50:24', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(43, 0, '', '', '', '127.0.0.1', '2012-12-12 08:50:42', '2012-12-12 08:50:42', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(44, 0, '', '', '', '127.0.0.1', '2012-12-12 08:50:58', '2012-12-12 08:50:58', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(45, 0, '', '', '', '127.0.0.1', '2012-12-12 08:53:27', '2012-12-12 08:53:27', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(46, 0, '', '', '', '127.0.0.1', '2012-12-12 08:53:34', '2012-12-12 08:53:34', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(47, 0, '', '', '', '127.0.0.1', '2012-12-12 21:03:58', '2012-12-12 21:03:58', 'content here', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(48, 0, 'fdfdef', 'mahlad365@gmail.com', 'fdd', '127.0.0.1', '2012-12-17 06:56:29', '2012-12-17 06:56:29', 'cvdfd', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(49, 0, 'dsfdsf', 'mahlad365@gmail.com', 'dfd', '127.0.0.1', '2012-12-17 06:57:59', '2012-12-17 06:57:59', 'dfdgfdgd', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(50, 0, 'dsfdsf', 'mahlad365@gmail.com', 'dfd', '127.0.0.1', '2012-12-17 06:58:16', '2012-12-17 06:58:16', 'dfdgfdgd', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(51, 0, 'dsfdsf', 'mahlad365@gmail.com', 'dfd', '127.0.0.1', '2012-12-17 06:58:29', '2012-12-17 06:58:29', 'dfdgfdgd', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(52, 77, 'dsfdsf', 'mahlad365@gmail.com', 'dfd', '127.0.0.1', '2012-12-17 07:06:04', '2012-12-17 07:06:04', 'dfdgfdgd', 0, 'trash', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(53, 77, 'تست', 'mahlad365@gmail.com', 'test', '127.0.0.1', '2012-12-17 07:06:29', '2012-12-17 07:06:29', 'test is', 0, 'trash', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(54, 77, 'تست3', 'mahlad365@gmail.com', 'google.com', '127.0.0.1', '2012-12-17 07:11:35', '2012-12-17 07:11:35', 'google', 0, 'trash', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(55, 77, 'تست', 'mahlad365@gmail.com', 'test', '127.0.0.1', '2012-12-17 07:17:03', '2012-12-17 07:17:03', 'test is', 0, 'trash', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(56, 77, 'تست', 'mahlad365@gmail.com', 'test', '127.0.0.1', '2012-12-17 07:18:43', '2012-12-17 07:18:43', 'test is', 0, 'trash', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(57, 77, 'تست', 'mahlad365@gmail.com', 'test', '127.0.0.1', '2012-12-17 07:19:15', '2012-12-17 07:19:15', 'test is', 0, 'trash', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(58, 77, 'delpak', 'mahlad365@gmail.com', 'primedev.ir', '127.0.0.1', '2012-12-18 19:29:36', '2012-12-18 19:29:36', 'thi is a test ', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 0),
(59, 77, 'del', 'mahlad365@gmail.com', 'jkjk', '127.0.0.1', '2012-12-18 19:37:19', '2012-12-18 19:37:19', 'jkljlkjdkf', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 1),
(60, 77, 'mahla', 'mahlad365@gmail.com', 'mahla', '127.0.0.1', '2012-12-20 07:12:55', '2012-12-20 07:12:55', 'test', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 1),
(61, 77, 'mahla', 'mahlad365@gmail.com', 'mahla', '127.0.0.1', '2012-12-20 07:15:36', '2012-12-20 07:15:36', 'test', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 1),
(62, 73, 'ham', 'mahlad365@gmail.com', 'kjk', '127.0.0.1', '2012-12-20 07:16:29', '2012-12-20 07:16:29', 'jkjkkk', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 1),
(63, 73, 'ham', 'mahlad365@gmail.com', 'kjk', '127.0.0.1', '2012-12-20 07:17:01', '2012-12-20 07:17:01', 'jkjkkk', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 1),
(64, 73, 'testt\\3', 'mahlad365@gmail.com', 'hj', '127.0.0.1', '2012-12-20 07:17:36', '2012-12-20 07:17:36', 'jhh', 0, '0', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_links`
--

CREATE TABLE IF NOT EXISTS `kbtn_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `kbtn_links`
--

INSERT INTO `kbtn_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wp-persian.com', 'مستندات', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wp-persian.com/blog/', 'وبلاگ وردپرس', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wp-persian.com/feed/'),
(3, 'http://forum.wp-persian.com/', 'انجمن‌های انگلیسی پشتیبانی', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'افزونه‌ها', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'پوسته‌ها', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://forum.wp-persian.com/forum/7', 'بازخورد', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wp-persian.com/', 'سیاره وردپرس', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_options`
--

CREATE TABLE IF NOT EXISTS `kbtn_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=695 ;

--
-- Dumping data for table `kbtn_options`
--

INSERT INTO `kbtn_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp-ekbatan', 'yes'),
(2, 'blogname', 'اکباتان', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'mahlad365@gmail.com', 'yes'),
(6, 'start_of_week', '۱', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '1', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:4:{i:0;s:19:"contant/contact.php";i:1;s:23:"viewpoint/viewpoint.php";i:2;s:23:"wp-jalali/wp-jalali.php";i:3;s:31:"wp-statistics/wp-statistics.php";}', 'yes'),
(37, 'home', 'http://localhost/wp-ekbatan', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '0', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'ajax-ekbatan', 'yes'),
(46, 'stylesheet', 'ajax-ekbatan', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21707', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '1', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21707', 'yes'),
(97, 'kbtn_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:4:{i:1356376210;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1356420225;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1356422187;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:2:{i:0;O:8:"stdClass":9:{s:8:"response";s:7:"upgrade";s:8:"download";s:47:"http://fa.wordpress.org/wordpress-3.5-fa_IR.zip";s:6:"locale";s:5:"fa_IR";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:47:"http://fa.wordpress.org/wordpress-3.5-fa_IR.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;}s:7:"current";s:3:"3.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.5";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":9:{s:8:"response";s:7:"upgrade";s:8:"download";s:38:"http://wordpress.org/wordpress-3.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:38:"http://wordpress.org/wordpress-3.5.zip";s:10:"no_content";s:49:"http://wordpress.org/wordpress-3.5-no-content.zip";s:11:"new_bundled";s:50:"http://wordpress.org/wordpress-3.5-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:3:"3.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.5";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1356337300;s:15:"version_checked";s:5:"3.4.2";}', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1356337300;s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":5:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:11:"new_version";s:5:"2.5.7";s:3:"url";s:44:"http://wordpress.org/extend/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.2.5.7.zip";}s:23:"wp-jalali/wp-jalali.php";O:8:"stdClass":5:{s:2:"id";s:3:"788";s:4:"slug";s:9:"wp-jalali";s:11:"new_version";s:3:"4.4";s:3:"url";s:46:"http://wordpress.org/extend/plugins/wp-jalali/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/wp-jalali.4.4.zip";}s:31:"wp-statistics/wp-statistics.php";O:8:"stdClass":6:{s:2:"id";s:5:"21429";s:4:"slug";s:13:"wp-statistics";s:11:"new_version";s:5:"2.3.3";s:14:"upgrade_notice";s:106:"Serbian language was solved.\nServer variables were optimized by m.emami.\nTurkish translation was complete.";s:3:"url";s:50:"http://wordpress.org/extend/plugins/wp-statistics/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/wp-statistics.2.3.3.zip";}}}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1356337303;s:7:"checked";a:2:{s:12:"ajax-ekbatan";s:3:"0.1";s:12:"twentyeleven";s:3:"1.4";}s:8:"response";a:1:{s:12:"twentyeleven";a:3:{s:11:"new_version";s:3:"1.5";s:3:"url";s:47:"http://wordpress.org/extend/themes/twentyeleven";s:7:"package";s:64:"http://wordpress.org/extend/themes/download/twentyeleven.1.5.zip";}}}', 'yes'),
(113, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:27:"http://localhost/wp-ekbatan";s:4:"link";s:103:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/wp-ekbatan/";s:3:"url";s:136:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/wp-ekbatan/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:27:"http://wp-persian.com/blog/";s:3:"url";s:27:"http://wp-persian.com/feed/";s:5:"title";s:23:"وبلاگ وردپرس";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:29:"http://planet.wp-persian.com/";s:3:"url";s:34:"http://planet.wp-persian.com/feed/";s:5:"title";s:32:"دیگر اخبار وردپرس";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(114, 'can_compress_scripts', '1', 'yes'),
(143, 'theme_mods_twentyeleven', 'a:7:{s:16:"header_textcolor";s:3:"000";s:16:"background_color";s:0:"";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1353583342;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(144, 'current_theme', 'Ekbatan corporation', 'yes'),
(145, 'theme_mods_ekbatan', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1355223801;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'adm_title', 'اکباتان', 'yes'),
(157, 'adm_email', 'mahlad365@gmail.com', 'yes'),
(158, 'adm_html', 'ارسال کننده: %name%\r\n<br>\r\nایمیل: %email%\r\n<br>\r\nمحتوا: <br>\r\n%content%\r\n<br>\r\nفایل پیوست:%file%', 'yes'),
(159, 'op_email', 'mahlad365@gmail.com', 'yes'),
(160, 'op_title', 'test', 'yes'),
(161, 'op_html', 'ارسال کننده: %name%\r\n<br>\r\nایمیل: %email%\r\n<br>\r\nعنوان: %subject%\r\n<br>\r\nمحتوا: <br>\r\n%content%', 'yes'),
(167, 'twentyeleven_theme_options', 'a:3:{s:12:"color_scheme";s:5:"light";s:10:"link_color";s:7:"#1b8be0";s:12:"theme_layout";s:15:"sidebar-content";}', 'yes'),
(171, '_site_transient_timeout_browser_a2b88e6f5ea8449210b73229691e53be', '1354188095', 'yes'),
(172, '_site_transient_browser_a2b88e6f5ea8449210b73229691e53be', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"23.0.1271.64";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(236, 'دپارتمان_children', 'a:1:{i:8;a:2:{i:0;i:9;i:1;i:10;}}', 'yes'),
(240, 'مجموعه گالری_children', 'a:0:{}', 'yes'),
(245, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(317, 'catGalery_children', 'a:0:{}', 'yes'),
(324, '_site_transient_timeout_browser_913f90718a07970c0d9b37b2ff454b19', '1354813144', 'yes'),
(325, '_site_transient_browser_913f90718a07970c0d9b37b2ff454b19', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"23.0.1271.91";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(356, 'ua_doctype', 'html', 'yes'),
(357, 'ua_comment_size', '24', 'yes'),
(358, 'ua_track_size', '24', 'yes'),
(359, 'ua_show_text', '1', 'yes'),
(360, 'ua_image_style', '1', 'yes'),
(361, 'ua_image_css', '', 'yes'),
(362, 'ua_text_surfing', '', 'yes'),
(363, 'ua_text_on', '', 'yes'),
(364, 'ua_text_via', '', 'yes'),
(365, 'ua_text_links', '1', 'yes'),
(366, 'ua_show_ua_bool', 'true', 'yes'),
(367, 'ua_hide_unknown_bool', 'false', 'yes'),
(368, 'ua_output_location', 'before', 'yes'),
(405, 'adm_file', '', 'yes'),
(465, '_site_transient_timeout_browser_92ea383846426fc8f251406a344e5c5b', '1355810328', 'yes'),
(466, '_site_transient_browser_92ea383846426fc8f251406a344e5c5b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"23.0.1271.95";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(495, 'theme_mods_ajax-ekbatan', 'a:1:{i:0;b:0;}', 'yes'),
(501, '_site_transient_timeout_wporg_theme_feature_list', '1355234602', 'yes'),
(502, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(531, 'wp_statistics_db_version', 'wp_statistics_db_version', 'yes'),
(532, 'enable_wps_adminbar', 'on', 'yes'),
(533, 'enable_stats', 'on', 'yes'),
(534, 'enable_decimals', '', 'yes'),
(535, 'time_useronline', '5', 'yes'),
(536, 'items_statistics', '', 'yes'),
(537, 'pagerank_google_url', '', 'yes'),
(538, 'pagerank_alexa_url', '', 'yes'),
(539, '_transient_timeout_settings_errors', '1355300035', 'no'),
(540, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:31:"تنظیمات ذخیره شد.";s:4:"type";s:7:"updated";}}', 'no'),
(547, '_site_transient_timeout_browser_96509afe0a371e760df9502dc74f1202', '1356332208', 'yes'),
(548, '_site_transient_browser_96509afe0a371e760df9502dc74f1202', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"23.0.1271.97";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(611, 'rss_language', 'fa', 'yes'),
(612, 'mps_jd_options_4.1', 'a:14:{s:15:"mps_jd_autodate";b:1;s:23:"mps_jd_farsinum_content";b:1;s:23:"mps_jd_farsinum_comment";b:1;s:26:"mps_jd_farsinum_commentnum";b:1;s:21:"mps_jd_farsinum_title";b:1;s:24:"mps_jd_farsinum_category";b:1;s:20:"mps_jd_farsinum_date";b:1;s:14:"mps_jd_decimal";b:1;s:13:"mps_jd_mcertl";b:1;s:13:"mps_jd_jperma";b:1;s:13:"mps_jd_autoyk";b:1;s:17:"mps_jd_editjalali";b:1;s:16:"mps_jd_dashboard";i:0;s:14:"mps_jd_country";s:2:"IR";}', 'yes'),
(680, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1356295501', 'no'),
(681, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>خطای RSS:</strong> WP HTTP Error: تابع fopen() نتوانست به http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/wp-ekbatan/ وصل شود</p>', 'no'),
(682, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1356295501', 'no'),
(683, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>خطای RSS:</strong> WP HTTP Error: تابع fopen() نتوانست به http://wp-persian.com/feed/ وصل شود</p></div>', 'no'),
(684, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1356295501', 'no'),
(685, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>خطای RSS:</strong> WP HTTP Error: تابع fopen() نتوانست به http://planet.wp-persian.com/feed/ وصل شود</p></div>', 'no'),
(686, '_transient_timeout_plugin_slugs', '1356338702', 'no'),
(687, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:19:"contant/contact.php";i:3;s:23:"viewpoint/viewpoint.php";i:4;s:24:"contant/kafi-contact.php";i:5;s:23:"wp-jalali/wp-jalali.php";i:6;s:31:"wp-statistics/wp-statistics.php";i:7;s:29:"wp-useragent/wp-useragent.php";}', 'no'),
(688, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1356295502', 'no'),
(689, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(691, 'department_children', 'a:0:{}', 'yes'),
(693, '_site_transient_timeout_theme_roots', '1356339102', 'yes'),
(694, '_site_transient_theme_roots', 'a:2:{s:12:"ajax-ekbatan";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_postmeta`
--

CREATE TABLE IF NOT EXISTS `kbtn_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=173 ;

--
-- Dumping data for table `kbtn_postmeta`
--

INSERT INTO `kbtn_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 10, '_edit_last', '1'),
(5, 10, '_edit_lock', '1355212055:1'),
(6, 13, '_edit_last', '1'),
(7, 13, '_edit_lock', '1354433848:1'),
(8, 15, '_wp_attached_file', '2012/11/Hotel_9_3.jpg'),
(9, 15, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"200";s:6:"height";s:3:"143";s:14:"hwstring_small";s:23:"height=''91'' width=''128''";s:4:"file";s:21:"2012/11/Hotel_9_3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"Hotel_9_3-150x143.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"143";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(10, 16, '_wp_attached_file', '2012/11/6.jpg'),
(11, 16, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"200";s:6:"height";s:3:"141";s:14:"hwstring_small";s:23:"height=''90'' width=''128''";s:4:"file";s:13:"2012/11/6.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:13:"6-150x141.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"141";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(12, 17, '_wp_attached_file', '2012/11/dariush_155.jpg'),
(13, 17, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"200";s:6:"height";s:3:"210";s:14:"hwstring_small";s:22:"height=''96'' width=''91''";s:4:"file";s:23:"2012/11/dariush_155.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:23:"dariush_155-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(15, 18, '_wp_attached_file', '2012/11/Hotel_9_3-m.jpg'),
(16, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:2:"70";s:6:"height";s:2:"50";s:14:"hwstring_small";s:22:"height=''50'' width=''70''";s:4:"file";s:23:"2012/11/Hotel_9_3-m.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(17, 13, '_thumbnail_id', '18'),
(18, 20, '_edit_last', '1'),
(19, 20, '_edit_lock', '1356253646:1'),
(20, 21, '_wp_attached_file', '2012/11/800px-Mumbai_TajMahalHotel.jpg'),
(21, 21, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"200";s:6:"height";s:3:"125";s:14:"hwstring_small";s:23:"height=''80'' width=''128''";s:4:"file";s:38:"2012/11/800px-Mumbai_TajMahalHotel.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:38:"800px-Mumbai_TajMahalHotel-150x125.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(22, 24, '_wp_attached_file', '2012/11/n00004565-b.jpg'),
(23, 24, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"350";s:6:"height";s:3:"263";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:23:"2012/11/n00004565-b.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:23:"n00004565-b-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:23:"n00004565-b-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(24, 25, '_wp_attached_file', '2012/11/2443212-lg.jpg'),
(25, 25, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"490";s:6:"height";s:3:"643";s:14:"hwstring_small";s:22:"height=''96'' width=''73''";s:4:"file";s:22:"2012/11/2443212-lg.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:22:"2443212-lg-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:22:"2443212-lg-228x300.jpg";s:5:"width";s:3:"228";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:3:"2.2";s:6:"credit";s:0:"";s:6:"camera";s:8:"DSC-F828";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1087057754";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"9";s:3:"iso";s:2:"64";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";}}'),
(26, 26, '_wp_attached_file', '2012/11/01981011851996578518.jpg'),
(27, 26, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"387";s:6:"height";s:3:"595";s:14:"hwstring_small";s:22:"height=''96'' width=''62''";s:4:"file";s:32:"2012/11/01981011851996578518.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:32:"01981011851996578518-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:32:"01981011851996578518-195x300.jpg";s:5:"width";s:3:"195";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(28, 23, '_edit_last', '1'),
(29, 23, '_edit_lock', '1356254161:1'),
(30, 28, '_wp_attached_file', '2012/11/tahajom2.jpg'),
(31, 28, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"597";s:6:"height";s:3:"394";s:14:"hwstring_small";s:23:"height=''84'' width=''128''";s:4:"file";s:20:"2012/11/tahajom2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:20:"tahajom2-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:20:"tahajom2-300x197.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"197";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(32, 29, '_wp_attached_file', '2012/11/IMAGE634703402537620261.jpg'),
(33, 29, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"510";s:6:"height";s:3:"369";s:14:"hwstring_small";s:23:"height=''92'' width=''128''";s:4:"file";s:35:"2012/11/IMAGE634703402537620261.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:35:"IMAGE634703402537620261-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:35:"IMAGE634703402537620261-300x217.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"217";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(34, 30, '_wp_attached_file', '2012/11/jahangardi-logo.jpg'),
(35, 30, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"300";s:6:"height";s:3:"285";s:14:"hwstring_small";s:23:"height=''96'' width=''101''";s:4:"file";s:27:"2012/11/jahangardi-logo.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:27:"jahangardi-logo-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(36, 27, '_edit_last', '1'),
(37, 27, '_edit_lock', '1353939343:1'),
(38, 31, '_edit_last', '1'),
(39, 31, '_edit_lock', '1356257798:1'),
(40, 33, '_wp_attached_file', '2012/11/AX933945.jpg'),
(41, 33, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"398";s:6:"height";s:3:"480";s:14:"hwstring_small";s:22:"height=''96'' width=''79''";s:4:"file";s:20:"2012/11/AX933945.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:20:"AX933945-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:20:"AX933945-248x300.jpg";s:5:"width";s:3:"248";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:21:"© Digital Art/CORBIS";s:6:"camera";s:0:"";s:7:"caption";s:69:"10 Dec 2004 --- Chain of Molecules --- Image by © Digital Art/CORBIS";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:32:"© Corbis.  All Rights Reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:18:"Chain of Molecules";}}'),
(42, 34, '_wp_attached_file', '2012/11/shape_shifting_robots_new_scientist.jpg'),
(43, 34, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"683";s:6:"height";s:3:"900";s:14:"hwstring_small";s:22:"height=''96'' width=''72''";s:4:"file";s:47:"2012/11/shape_shifting_robots_new_scientist.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:47:"shape_shifting_robots_new_scientist-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:47:"shape_shifting_robots_new_scientist-227x300.jpg";s:5:"width";s:3:"227";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(44, 35, '_wp_attached_file', '2012/11/2564326600103368983S425x425Q85.jpg'),
(45, 35, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"425";s:6:"height";s:3:"318";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:42:"2012/11/2564326600103368983S425x425Q85.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:42:"2564326600103368983S425x425Q85-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:42:"2564326600103368983S425x425Q85-300x224.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"224";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(46, 36, '_edit_last', '1'),
(47, 36, '_edit_lock', '1356257323:1'),
(48, 37, '_edit_last', '1'),
(49, 37, '_edit_lock', '1356253519:1'),
(50, 38, '_edit_last', '1'),
(51, 38, '_edit_lock', '1354485877:1'),
(52, 39, '_wp_attached_file', '2012/11/earthday.jpg'),
(53, 39, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"329";s:6:"height";s:3:"331";s:14:"hwstring_small";s:22:"height=''96'' width=''95''";s:4:"file";s:20:"2012/11/earthday.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:20:"earthday-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:20:"earthday-298x300.jpg";s:5:"width";s:3:"298";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(54, 38, 'profile_picture', 'a:2:{s:4:"file";s:84:"C:/xampp/htdocs/wp-ekbatan/wp-content/uploads/2012/11/Mozilla-Firefox-Start-Page.pdf";s:3:"url";s:85:"http://localhost/wp-ekbatan/wp-content/uploads/2012/11/Mozilla-Firefox-Start-Page.pdf";}'),
(55, 41, '_edit_last', '1'),
(56, 41, '_edit_lock', '1356254775:1'),
(57, 41, 'profile_picture', 'a:2:{s:4:"file";s:87:"C:/xampp/htdocs/wp-ekbatan/wp-content/uploads/2012/11/mysql-cluster-web-e-wp-067589.pdf";s:3:"url";s:88:"http://localhost/wp-ekbatan/wp-content/uploads/2012/11/mysql-cluster-web-e-wp-067589.pdf";}'),
(60, 47, '_menu_item_type', 'taxonomy'),
(61, 47, '_menu_item_menu_item_parent', '0'),
(62, 47, '_menu_item_object_id', '8'),
(63, 47, '_menu_item_object', ''),
(64, 47, '_menu_item_target', ''),
(65, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 47, '_menu_item_xfn', ''),
(67, 47, '_menu_item_url', ''),
(68, 47, '_menu_item_orphaned', '1353672046'),
(69, 48, '_menu_item_type', 'taxonomy'),
(70, 48, '_menu_item_menu_item_parent', '0'),
(71, 48, '_menu_item_object_id', '7'),
(72, 48, '_menu_item_object', ''),
(73, 48, '_menu_item_target', ''),
(74, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(75, 48, '_menu_item_xfn', ''),
(76, 48, '_menu_item_url', ''),
(77, 48, '_menu_item_orphaned', '1353672046'),
(78, 49, '_menu_item_type', 'taxonomy'),
(79, 49, '_menu_item_menu_item_parent', '0'),
(80, 49, '_menu_item_object_id', '7'),
(81, 49, '_menu_item_object', ''),
(82, 49, '_menu_item_target', ''),
(83, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 49, '_menu_item_xfn', ''),
(85, 49, '_menu_item_url', ''),
(86, 49, '_menu_item_orphaned', '1353672103'),
(87, 50, '_menu_item_type', 'taxonomy'),
(88, 50, '_menu_item_menu_item_parent', '0'),
(89, 50, '_menu_item_object_id', '8'),
(90, 50, '_menu_item_object', ''),
(91, 50, '_menu_item_target', ''),
(92, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 50, '_menu_item_xfn', ''),
(94, 50, '_menu_item_url', ''),
(95, 50, '_menu_item_orphaned', '1353672103'),
(114, 56, '_menu_item_type', 'taxonomy'),
(115, 56, '_menu_item_menu_item_parent', '0'),
(116, 56, '_menu_item_object_id', '8'),
(117, 56, '_menu_item_object', 'department'),
(118, 56, '_menu_item_target', ''),
(119, 56, '_menu_item_classes', 'a:1:{i:0;s:6:"kanoon";}'),
(120, 56, '_menu_item_xfn', ''),
(121, 56, '_menu_item_url', ''),
(123, 57, '_menu_item_type', 'taxonomy'),
(124, 57, '_menu_item_menu_item_parent', '0'),
(125, 57, '_menu_item_object_id', '7'),
(126, 57, '_menu_item_object', 'department'),
(127, 57, '_menu_item_target', ''),
(128, 57, '_menu_item_classes', 'a:1:{i:0;s:7:"ekbatan";}'),
(129, 57, '_menu_item_xfn', ''),
(130, 57, '_menu_item_url', ''),
(131, 59, '_wp_attached_file', '2012/11/evt110511045700161.jpg'),
(132, 59, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"230";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''88''";s:4:"file";s:30:"2012/11/evt110511045700161.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:30:"evt110511045700161-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(133, 31, '_thumbnail_id', '59'),
(143, 63, '_wp_attached_file', '2012/11/images.jpeg'),
(144, 63, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"184";s:6:"height";s:3:"200";s:14:"hwstring_small";s:22:"height=''96'' width=''88''";s:4:"file";s:19:"2012/11/images.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:19:"images-150x150.jpeg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(145, 27, '_thumbnail_id', '63'),
(146, 1, '_edit_lock', '1354032227:1'),
(147, 10, '_wp_page_template', 'default'),
(148, 68, '_edit_last', '1'),
(149, 68, '_edit_lock', '1355298093:1'),
(152, 73, '_edit_last', '1'),
(153, 73, '_edit_lock', '1356254869:1'),
(154, 77, '_edit_last', '1'),
(155, 77, '_edit_lock', '1356254902:1'),
(157, 86, '_edit_last', '1'),
(158, 86, '_edit_lock', '1356252201:1'),
(159, 87, '_edit_last', '1'),
(160, 87, '_edit_lock', '1356256741:1'),
(162, 89, '_wp_attached_file', '2012/11/7184212.jpg'),
(163, 89, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"200";s:6:"height";s:3:"150";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:19:"2012/11/7184212.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:19:"7184212-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(166, 90, '_wp_attached_file', '2012/11/71842121.jpg'),
(167, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"150";s:6:"height";s:3:"112";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:20:"2012/11/71842121.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(168, 20, '_thumbnail_id', '90'),
(169, 92, '_edit_last', '1'),
(170, 92, '_edit_lock', '1356253821:1'),
(171, 92, '_wp_trash_meta_status', 'draft'),
(172, 92, '_wp_trash_meta_time', '1356253939');

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_posts`
--

CREATE TABLE IF NOT EXISTS `kbtn_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `kbtn_posts`
--

INSERT INTO `kbtn_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-11-14 07:08:55', '2012-11-14 07:08:55', 'به وردپرس خوش آمدید.‌این نخستین نوشته‌‌ی شماست. می‌توانید ویرایش یا پاکش کنید و پس از آن وبلاگ نویسی را آغاز کنید!', 'سلام دنیا!', '', 'publish', 'open', 'open', '', '%d8%b3%d9%84%d8%a7%d9%85-%d8%af%d9%86%db%8c%d8%a7', '', '', '2012-11-14 07:08:55', '2012-11-14 07:08:55', '', 0, 'http://localhost/wp-ekbatan/?p=1', 0, 'post', '', 1),
(10, 1, '2012-11-14 18:49:35', '2012-11-14 18:49:35', '[contact]', 'فرم تماس', '', 'publish', 'open', 'open', '', '%d8%aa%d9%85%d8%a7%d8%b3', '', '', '2012-11-27 18:31:31', '2012-11-27 18:31:31', '', 0, 'http://localhost/wp-ekbatan/?page_id=10', 0, 'page', '', 0),
(11, 1, '2012-11-14 18:49:19', '2012-11-14 18:49:19', '', 'تماس', '', 'inherit', 'open', 'open', '', '10-revision', '', '', '2012-11-14 18:49:19', '2012-11-14 18:49:19', '', 10, 'http://localhost/wp-ekbatan/?p=11', 0, 'revision', '', 0),
(13, 1, '2012-11-22 13:31:23', '2012-11-22 13:31:23', 'هتل ۵ ستاره‌ای در جزیره کیش است که با سرمایه‌گذاری حسین ثابت ساخته شد. این هتل با الهام از تخت جمشید بصورت سمبلی از افتخار و عزت ایران باستان در دوران هخامنشیان ساخته شده‌است.<!--more-->\r\n\r\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/6.jpg"><img class="alignnone size-full wp-image-16" title="6" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/6.jpg" alt="" width="200" height="141" /></a>\r\nبه خواست اهورامزدا، من چنینم که راستی را دوست دارم و از دروغ روی گردانم. دوست ندارم که ناتوانی از حق کشی در رنج باشد. هم چنین دوست ندارم که به حقوق توانا به سبب کارهای ناتوان آسیب برسد. آن چه را که درست است من آن رادوست دارم. من دوست برده ی دروغ نیستم. من بد خشم نیستم. حتی وقتی خشم مرا می انگیزاند، آن را فرو می نشانم. من سخت بر هوس خود فرمانروا هستم.\r\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/dariush_155.jpg"><img class="alignnone size-full wp-image-17" title="dariush_155" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/dariush_155.jpg" alt="" width="200" height="210" /></a>\r\nویلاهای ساحلی هتل پس از بازسازی کامل جهت اسکان و اقامت رویایی میهمانان گرامی به بهره برداری رسید؛ این مجموعه که بصورت اتاق های ساحلی طراحی شده اند؛ در چند گامی سواحل خلیج نیلگون همیشه جاوید فارس و در مجاورت پلاژ آقایان و پیست دوچرخه سواری جزیره و زمین اختصاصی تنیس ، مجموعه غواصی اختصاصی و نیز دریاچه و قایقرانی ویژه هتل قرار دارند.\r\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/Hotel_9_3.jpg"><img class="alignnone size-full wp-image-15" title="Hotel_9_3" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/Hotel_9_3.jpg" alt="" width="200" height="143" /></a>\r\nآسانسورشیشه ای هتل مشرف به خلیج تا ابد فارس و دریاچه اختصاصی هتل جهت استفاده میهمانان گرامی هتل که در اتاق های ساحلی اقامت می نمایند و سایر میهمانان عزیزی که مایلند از غواصی ، زمین تنیس و قایقرانی استفاده نمایند؛به بهره برداری رسید.', 'هتل داریوش', 'هتل ۵ ستاره‌ای در جزیره کیش است که با سرمایه‌گذاری حسین ثابت ساخته شد. این هتل با الهام از تخت جمشید بصورت سمبلی از افتخار و عزت ایران باستان در دوران هخامنشیان ساخته شده‌است.', 'publish', 'closed', 'closed', '', '%d8%b4%d8%b1%da%a9%d8%aa-%d8%b4%d9%85%d8%a7%d8%b1%d9%87-1', '', '', '2012-11-23 09:05:04', '2012-11-23 09:05:04', '', 0, 'http://localhost/wp-ekbatan/?post_type=marketting&#038;p=13', 0, 'marketting', '', 0),
(14, 1, '2012-11-27 18:33:23', '2012-11-27 18:33:23', 'هتل ۵ ستاره‌ای در جزیره کیش است که با سرمایه‌گذاری حسین ثابت ساخته شد. این هتل با الهام از تخت جمشید بصورت سمبلی از افتخار و عزت ایران باستان در دوران هخامنشیان ساخته شده‌است.<!--more-->\n\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/6.jpg"><img class="alignnone size-full wp-image-16" title="6" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/6.jpg" alt="" width="200" height="141" /></a>\nبه خواست اهورامزدا، من چنینم که راستی را دوست دارم و از دروغ روی گردانم. دوست ندارم که ناتوانی از حق کشی در رنج باشد. هم چنین دوست ندارم که به حقوق توانا به سبب کارهای ناتوان آسیب برسد. آن چه را که درست است من آن رادوست دارم. من دوست برده ی دروغ نیستم. من بد خشم نیستم. حتی وقتی خشم مرا می انگیزاند، آن را فرو می نشانم. من سخت بر هوس خود فرمانروا هستم.\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/dariush_155.jpg"><img class="alignnone size-full wp-image-17" title="dariush_155" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/dariush_155.jpg" alt="" width="200" height="210" /></a>\nویلاهای ساحلی هتل پس از بازسازی کامل جهت اسکان و اقامت رویایی میهمانان گرامی به بهره برداری رسید؛ این مجموعه که بصورت اتاق های ساحلی طراحی شده اند؛ در چند گامی سواحل خلیج نیلگون همیشه جاوید فارس و در مجاورت پلاژ آقایان و پیست دوچرخه سواری جزیره و زمین اختصاصی تنیس ، مجموعه غواصی اختصاصی و نیز دریاچه و قایقرانی ویژه هتل قرار دارند.\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/Hotel_9_3.jpg"><img class="alignnone size-full wp-image-15" title="Hotel_9_3" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/Hotel_9_3.jpg" alt="" width="200" height="143" /></a>\nآسانسورشیشه ای هتل مشرف به خلیج تا ابد فارس و دریاچه اختصاصی هتل جهت استفاده میهمانان گرامی هتل که در اتاق های ساحلی اقامت می نمایند و سایر میهمانان عزیزی که مایلند از غواصی ، زمین تنیس و قایقرانی استفاده نمایند؛به بهره برداری رسید.', 'هتل داریوش', 'هتل ۵ ستاره‌ای در جزیره کیش است که با سرمایه‌گذاری حسین ثابت ساخته شد. این هتل با الهام از تخت جمشید بصورت سمبلی از افتخار و عزت ایران باستان در دوران هخامنشیان ساخته شده‌است.', 'inherit', 'open', 'open', '', '13-autosave', '', '', '2012-11-27 18:33:23', '2012-11-27 18:33:23', '', 13, 'http://localhost/wp-ekbatan/?p=14', 0, 'revision', '', 0),
(15, 1, '2012-11-23 07:19:33', '2012-11-23 07:19:33', '', 'Hotel_9_3', '', 'inherit', 'open', 'open', '', 'hotel_9_3', '', '', '2012-11-23 07:19:33', '2012-11-23 07:19:33', '', 13, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/Hotel_9_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2012-11-23 07:19:33', '2012-11-23 07:19:33', '', '6', '', 'inherit', 'open', 'open', '', '6', '', '', '2012-11-23 07:19:33', '2012-11-23 07:19:33', '', 13, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2012-11-23 07:19:34', '2012-11-23 07:19:34', '', 'dariush_155', '', 'inherit', 'open', 'open', '', 'dariush_155', '', '', '2012-11-23 07:19:34', '2012-11-23 07:19:34', '', 13, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/dariush_155.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2012-11-23 07:22:25', '2012-11-23 07:22:25', '', 'Hotel_9_3-m', '', 'inherit', 'open', 'open', '', 'hotel_9_3-m', '', '', '2012-11-23 07:22:25', '2012-11-23 07:22:25', '', 13, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/Hotel_9_3-m.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2012-11-23 07:26:23', '2012-11-23 07:26:23', 'که در جنوب شهر مومبای یا بمبئی در منطقهٔ «کـُّلابـه»، روبروی دروازه هند بنا شده است. یکی از بناهای زیبا و دیدنی هند و از هتل‌های معروف و بسیار گران‌قیمت و مجلل بمبئی به‌شمار می‌رود.http://google.com<!--more-->\r\n\r\nاین مجموعه شامل دو بنا است که از دیدگاه تاریخی و معماری متفاوت و قابل تفکیک می‌باشند. یکی «قصر تاج محل» و دیگری «برج تاج محل». برج تاج محل را با نام «تاج اینترکنتینانتال» نیز می‌‍شناسند.[۲]\r\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/800px-Mumbai_TajMahalHotel.jpg"><img class="alignnone size-full wp-image-21" title="800px-Mumbai_TajMahalHotel" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/800px-Mumbai_TajMahalHotel.jpg" alt="" width="200" height="125" /></a>\r\nهتل کاخ تاج‌محل دارای ۵۶۵ اتاق است.[۳] در تاریخ ۲۶ نوامبر ۲۰۰۸ میلادی، هتل بر اثر یک رشته عملیات‌های تروریستی در بمبئی خسارات عمده‌ای را متحمل شد و سقف هتل کاخ تاج‌محل به آتش کشیده و نابود شد.[۴]\r\n\r\nداستان احداث هتل کاخ تاج‌محل مومبای، مانند داستان بنای تاج محل اصلی در آگرا شنیدنی است. در زمان سلطه بریتانیا در هند، جمشیدجی تاتا، از بازرگانان پارسی یا زرتشتی هندی که بعدها پدر صنعت هندوستان لقب گرفت، می‌خواست برای یکی دو روز در هتل واتسن، از بهترین هتلهای بمبئی بماند. به او اجازه نمی‌دهند، چون هتل مختص سفیدها یا فرنگی‌ها بود. زخم این اهانت اجنبی‌ها در سینه، جمشیدجی تاتا می‌ماند تصمیم می‌گیرد هتلی بسازد که هتل واتسون را هم تحت‌الشعاع قرار دهد.\r\n\r\nجمشیدجی تاتا که یک پارسی هند (زرتشتی) و از سرمایه‌دارن بنام هندوستان بود، با کمک دو معمار هندی و یک معمار انگلیسی هتل مجلل کاخ را ساخت که روز ۱۶ دسامبر ۱۹۰۳ میلادی، درهایش را به روی میهمان‌ها باز کرد و اجازه داد که هندی‌ها هم مانند انگلیسی‌ها زیر یک سقف اقامت کنند و هیچ نوع تبعیض قومی و نژادی برای میهمانهایش قائل نبود.\r\n\r\nدر جریان جنگ جهانی اول، وارثان جمشیدجی تاتا، هتل تاج محل را به یک بیمارستان ۶۰۰ تخت خوابی تبدیل کردند. خود جمشیدجی تاتا در سال ۱۹۰۴، یک سال بعد از گشایش هتل تاج درگذشت.[۵]\r\n\r\n&nbsp;', 'هتل تاج محل', 'که در جنوب شهر مومبای یا بمبئی در منطقهٔ «کـُّلابـه»، روبروی دروازه هند بنا شده است. یکی از بناهای زیبا و دیدنی هند و از هتل‌های معروف و بسیار گران‌قیمت و مجلل بمبئی به‌شمار می‌رود.', 'publish', 'closed', 'closed', '', '%d9%87%d8%aa%d9%84-%d8%aa%d8%a7%d8%ac-%d9%85%d8%ad%d9%84', '', '', '2012-12-18 19:18:53', '2012-12-18 19:18:53', '', 0, 'http://localhost/wp-ekbatan/?post_type=marketting&#038;p=20', 0, 'marketting', '', 0),
(21, 1, '2012-11-23 07:26:14', '2012-11-23 07:26:14', '', '800px-Mumbai_TajMahalHotel', '', 'inherit', 'open', 'open', '', '800px-mumbai_tajmahalhotel', '', '', '2012-11-23 07:26:14', '2012-11-23 07:26:14', '', 20, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/800px-Mumbai_TajMahalHotel.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2012-11-23 07:30:58', '2012-11-23 07:30:58', '[gallery]', 'گالری تصاویر شبکه و کامپیوتر', '', 'publish', 'closed', 'closed', '', '%da%af%d8%a7%d9%84%d8%b1%db%8c-%d8%aa%d8%b5%d8%a7%d9%88%db%8c%d8%b1', '', '', '2012-12-23 09:17:23', '2012-12-23 09:17:23', '', 0, 'http://localhost/wp-ekbatan/?post_type=gallery&#038;p=23', 0, 'gallery', '', 0),
(24, 1, '2012-11-23 07:30:06', '2012-11-23 07:30:06', '', 'n00004565-b', '', 'inherit', 'open', 'open', '', 'n00004565-b', '', '', '2012-11-23 07:30:06', '2012-11-23 07:30:06', '', 23, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/n00004565-b.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2012-11-23 07:30:06', '2012-11-23 07:30:06', '', '2443212-lg', '', 'inherit', 'open', 'open', '', '2443212-lg', '', '', '2012-11-23 07:30:06', '2012-11-23 07:30:06', '', 23, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/2443212-lg.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2012-11-23 07:30:07', '2012-11-23 07:30:07', '', '01981011851996578518', '', 'inherit', 'open', 'open', '', '01981011851996578518', '', '', '2012-11-23 07:30:07', '2012-11-23 07:30:07', '', 23, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/01981011851996578518.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2012-11-23 07:34:26', '2012-11-23 07:34:26', '[gallery]', 'مجموعه فرهنگی', '', 'publish', 'closed', 'closed', '', '%d9%85%d8%ac%d9%85%d9%88%d8%b9%d9%87-%d9%81%d8%b1%d9%87%d9%86%da%af%db%8c', '', '', '2012-11-26 12:37:49', '2012-11-26 12:37:49', '', 0, 'http://localhost/wp-ekbatan/?post_type=gallery&#038;p=27', 0, 'gallery', '', 0),
(28, 1, '2012-11-23 07:33:34', '2012-11-23 07:33:34', '', 'tahajom2', '', 'inherit', 'open', 'open', '', 'tahajom2', '', '', '2012-11-23 07:33:34', '2012-11-23 07:33:34', '', 27, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/tahajom2.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2012-11-23 07:33:34', '2012-11-23 07:33:34', '', 'IMAGE634703402537620261', '', 'inherit', 'open', 'open', '', 'image634703402537620261', '', '', '2012-11-23 07:33:34', '2012-11-23 07:33:34', '', 27, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/IMAGE634703402537620261.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2012-11-23 07:33:35', '2012-11-23 07:33:35', '', 'jahangardi-logo', '', 'inherit', 'open', 'open', '', 'jahangardi-logo', '', '', '2012-11-23 07:33:35', '2012-11-23 07:33:35', '', 27, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/jahangardi-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2012-11-23 07:36:51', '2012-11-23 07:36:51', '[gallery]', 'مجموعه علمی', '', 'publish', 'closed', 'closed', '', '%d9%85%d8%ac%d9%85%d9%88%d8%b9%d9%87-%d8%b9%d9%84%d9%85%db%8c', '', '', '2012-12-23 10:10:52', '2012-12-23 10:10:52', '', 0, 'http://localhost/wp-ekbatan/?post_type=gallery&#038;p=31', 0, 'gallery', '', 0),
(33, 1, '2012-11-23 07:39:17', '2012-11-23 07:39:17', '10 Dec 2004 --- Chain of Molecules --- Image by © Digital Art/CORBIS', 'Chain of Molecules', '', 'inherit', 'open', 'open', '', 'chain-of-molecules', '', '', '2012-11-23 07:39:17', '2012-11-23 07:39:17', '', 31, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/AX933945.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2012-11-23 07:39:18', '2012-11-23 07:39:18', '', 'shape_shifting_robots_new_scientist', '', 'inherit', 'open', 'open', '', 'shape_shifting_robots_new_scientist', '', '', '2012-11-23 07:39:18', '2012-11-23 07:39:18', '', 31, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/shape_shifting_robots_new_scientist.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2012-11-23 07:39:19', '2012-11-23 07:39:19', '', '2564326600103368983S425x425Q85', '', 'inherit', 'open', 'open', '', '2564326600103368983s425x425q85', '', '', '2012-11-23 07:39:19', '2012-11-23 07:39:19', '', 31, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/2564326600103368983S425x425Q85.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2012-11-23 07:42:35', '2012-11-23 07:42:35', '<p style="color:red">تست</p>\r\n\r\n<p dir="RTL">شركت قدس نيرو يكي از بزرگ‌ترين شركت‌هاي مهندسي ايراني است كه در اجراي پروژه‌هاي صنايع انرژي،</p>\r\n  style="color:red;""p dir="RTL">شركت مهندسي قدس نيرو با بيش از 1000 نفر كاركنان خود كه حدود سه چهارم آن كادر تخصصي در زمينه‏هاي مختلف مي‌باشند، خدمات مهندسي را در سراسر ايران و ساير كشورها عرضه مي‌كند. كادر فني شركت</p>\r\n<p dir="RTL">با اتكاء به تجارب غني و با ارزش حاصله از اجراي پروژه‏هاي عظيم، شركت مهندسي قدس نيرو در حال حاضر از لحاظ كادر تخصصي، اطلاعااسي و امكانات دفتري يكي از بزرگترين شركت‌هاي مهندسي در زمينه صنعت برق در خاورميانه محسوب مي‌گردد، و آمادگي پذيرش و اجراي طرح‌هاي پيچيده صنعتي به شكل مستقل و يا با همكاري شركت‌هاي مشاوره‏اي و سازنده را در داخل و خارج ايران اسلامي دارا مي‌باشد.</p>\r\n<p dir="RTL">لازم به‌ذكر است، مهندسي قدس نيرو در مراحل اجرايي پروژه‏هاي خود خدمات ذيل را ارائـه مي‌نمايد.</p>\r\n<p dir="RTL">-   مطالعات امكان سنجي (Feasibility studies) شامل بررسي‌هاي فني- اقتصادي</p>\r\n<p dir="RTL">-   مطالعات امكان‌سنجي (تعيين محل) شامل مطالعات شبكه و پخش بار، زمين‏شناسي، ژئوتكنيك، محيط زيست، سوخت‏رساني، منابع آب، انتقال آب، جاده‏هاي دسترسي و موارد ديگر.</p>\r\n<p dir="RTL">-   مديريت، برنامه‌ريزي و كنترل پروژه</p>\r\n<p dir="RTL">-   مطالعات توجيهي فني- اقتصادي</p>\r\n<p dir="RTL">-   طراحي مقدماتي، تهيه مشخصات فني و تهيه اسناد مناقصه</p>\r\n<p dir="RTL">-   انجام تشريفات مناقصه، بررسي و ارزيابي فني و مالي، مذاكرات قراردادي، انتخاب پيمانكار، تهيه اسناد فني- قراردادي</p>\r\n<p dir="RTL">-   طراحي مفهومي، پايه و تفصيلي</p>\r\n<p dir="RTL">-   بازنگري و كنترل طراحي</p>\r\n<p dir="RTL">-   بازرسي فني ساخت و آزمايش تجهيزات در كارخانجات سازنده</p>\r\n<p dir="RTL">-   نظارت عاليه و كارگاهي بر اجراي كارهاي ساختماني و تاسيساتي، نصب، تست و راه‏اندازي تا مرحله تحويل قطعي</p>\r\n<p dir="RTL">-   ارائـه خدمات مهندسي در دوران بهره‏برداري و بهينه‌سازي تأسيسات و صنايع</p>\r\n<p dir="RTL">-   ايفاي نقش مديريت پيمان (MC) در پروژه‌هاي صنعت برق، آب، نفت و گاز براساس استانداردهاي به روز مديريت پروژه</p>\r\n<p dir="RTL">-   مشاركت در پروژه‌هاي B.O.O، B.O.T</p>\r\n<p dir="RTL">-   اجراي فرايند تأمين تجهيزات براي طرح‌هاي صنعت برق، آب و نفت و گاز</p>\r\n<p dir="RTL">-   مديريت اجراي پروژه‌هاي اجرايي از طريق به‌كارگيري زنجيره تأمين گسترده</p>\r\n<p dir="RTL">هدف شركت مهندسي قدس نيرو جلب رضايت كارفرمايان با ارائه پيشنهادهاي رقابتي و از طريق ارائـه خدمات طراحي و مهندسي مناسب با ايجاد مطلوبيت در سه فاكتور كيفيت، زمان و هزينه انجام پروژه مي‌باشد. تعهد و توجه عميق به برآورده نمودن نيازهاي كارفرمايان مشي اصلي كاركنان قدس‌نيرو بوده و به عنوان اصلي مهم از سوي ايشان در نظر گرفته مي‌شود.</p>', 'خدمات شبکه و کامپیوتر', '', 'publish', 'closed', 'closed', '', '%d8%ae%d8%af%d9%85%d8%a7%d8%aa-%d8%a7%da%a9%d8%a8%d8%a7%d8%aa%d8%a7%d9%86', '', '', '2012-12-23 10:04:42', '2012-12-23 10:04:42', '', 0, 'http://localhost/wp-ekbatan/?post_type=services&#038;p=36', 0, 'services', '', 0),
(37, 1, '2012-11-23 07:42:59', '2012-11-23 07:42:59', '&nbsp;\r\n\r\n&nbsp;\r\n\r\nمحور فعالیت های تجاری در شرکت باروژ بر روی پروژه های نرم افزاری متمرکز است که تاکنون نیز سیستم های نرم افزاری متفاوتی جهت مشتریان گوناگون طراحی و راه اندازی شده است.\r\n\r\nشرکت در حال حاضر دارای چهار دپارتمان نرم افزار، SharePoint، وب و فروش می باشد.\r\n\r\nدر دپارتمان نرم افزار، نرم افزارهای سفارش مشتری بر پایه تکنولوژی مایکروسافت طراحی و پیاده سازی می گردند. کلیه مراحل مربوط به تولید نرم افزارهای سفارش داده شده توسط مشتریان شامل برگزاری جلسات شناخت، آنالیز سیستم، طراحی مدل مفهومی، طراحی پروتوتایپ و بانکهای اطلاعاتی، پیاده سازی و پشتیبانی در این دپارتمان انجام می پذیرد. همچنین با توجه به نیاز آموزشگاه های کشور به سیستمی جهت مدیریت کلیه فعالیتهای داخل یک آموزشگاه، شرکت خورشید باروژ اقدام به تولید سیستم مدیریت آموزشگاه (Baruzh Institute Management System) که با نام اختصاری BIMS شناخته می شود، نموده است. دپارتمان نرم افزار، مسئولیت به روزآوری نسخه های مختلف و پشتیبانی مشتریان این سیستم نرم افزاری را دارد.\r\n\r\nسفارش های مشتریان در ارتباط با پورتال و وب سایت در دپارتمان وب انجام می پذیرد. با توجه به اینکه بستر آماده ای برای اجرای وب سایتها و پورتال ها در شرکت باروژ آماده شده است، اجرای سفارشات مشتریان در زمان بسیار کوتاه و با کیفیت بسیار بالایی قابل انجام است. همچنین نگهداری سرورها و مدیریت دامنه ها نیز در این دپارتمان انجام می پذیرد.\r\n\r\nبا توجه به نوپا بودن تکنولوژی SharePoint در ایران، دپارتمان SharePoint شرکت باروژ نیز بخش جدید و نوپایی به حساب می آید. با این وجود، با توانمندی متخصصان این حوزه در شرکت باروژ پروژه های عظیم، موثر و قابل اعتنایی در این زمینه انجام شده است که از آن جمله می توان راه اندازی Windows SharePoint Services 3.0 در شرکت ایرانسل و راه اندازی Microsoft Office SharePoint Server 2007 در سازمان گسترش و نوسازی صنایع ایران را نام برد.\r\n\r\nدپارتمان فروش شرکت خورشید باروژ امور مربوط به مشتریان و فروش و بازاریابی محصولات را پیگیری می نماید. این دپارتمان آماده است تا هرگونه درخواست مشتریان را به دقت شنیده و با کمک متخصصان فنی حوزه مربوطه، راه حلی برای آن تدارک ببیند.', 'خدمات گرافیک و تبلیغات', '', 'publish', 'closed', 'closed', '', '%d8%ae%d8%af%d9%85%d8%a7%d8%aa-%da%a9%d8%a7%d9%86%d9%88%d9%86', '', '', '2012-12-23 08:59:17', '2012-12-23 08:59:17', '', 0, 'http://localhost/wp-ekbatan/?post_type=services&#038;p=37', 0, 'services', '', 0),
(38, 1, '2012-11-23 07:45:12', '2012-11-23 07:45:12', 'گروهي از دانشمندان سازمان فضايي آمريكا با ارائه برنامه اي شگفت انگيز اعلام كردند به منظور نجات زمين از گرماي جهاني و افزايش طول عمر آن مي توان اين سياره را به مداري دورتر انتقال داد.<!--more-->\r\n\r\nبه گزارش خبرگزاري مهر، دانشمندان به منظور جلوگيري از افزايش حرارت زمين شيوه اي غير طبيعي را كشف كرده اند: حركت دادن زمين به نقطه اي خنك تر از منظومه خورشيدي. تنها ابزاري كه براي انجام اين انتقال نياز خواهد بود چند ستاره دنباله دار در نزديكي زمين است و پس از آن سياره زمين در منطقه اي ايمن و خنكتر از منظومه خورشيدي قرار خواهد گرفت.\r\n\r\nايده حركت دادن زمين به منظور بهبود دادن موقعيت بين سياره اي زاييده افكار گروهي از دانشمندان ناسا و اخترشناسان آمريكايي است كه معتقدند با انجام چنين كاري مي توان 6 بيليون سال ديگر به عمر مفيد زمين افزود.\r\n\r\nگرگ لاگلاين از مركز تحقيقاتي امز در اين باره معتقد است تغيير مدار زمين نيازمند فناوريهاي دور از ذهني نيست، براي انجام چنين كاري مي توان از شيوه اي كه اكنون براي منحرف كردن شهاب سنگها و ستاره هاي دنباله دار استفاده مي شوند كمك گرفت.\r\n\r\nبرنامه اي كه توسط اين محققان ارائه شده است هدايت كردن يك شهابسنگ يا ستاره دنباله دار است به شكلي كه از نزديك ترين فاصله ممكن از زمين عبور كند در اين صورت بخشي از نيروي گرانشي آن به زمين منتقل شده و در نتيجه سرعت مداري زمين افزايش پيدا خواهد كرد. به اين شكل سياره زمين به مداري بالاتر از موقعيت كنوني خود و در فاصله اي بيشتر از خورشيد قرار خواهد گرفت.\r\n\r\nبه گفته دانشمندان ناسا چنين راه حلي در كوتاه مدت مي تواند براي جلوگيري از بحران گرماي جهاني بسيار موثر باشد. براي هدايت اجرام كيهاني بايد از راكتي شيميايي استفاده كرده و در زمان مناسب به شهاب سنگ يا ستاره دنباله داري ضربه زد.\r\n\r\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/earthday.jpg"><img class="alignnone size-medium wp-image-39" title="earthday" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/earthday-298x300.jpg" alt="" width="298" height="300" /></a>\r\n\r\nبر اساس گزارش گاردين، با اين حال براي انجام چنين برنامه اي محاسبات بسيار دقيقي لازم است زيرا يك اشتباه بسيار كوچك مي تواند منجر به برخورد جرم كيهاني هدايت شده با زمين شود كه بر اساس تخمينها، برخورد جرمي با قطر 100 كيلومتر با زمين با سرعتي در مقياس سرعتهاي كيهاني مي تواند زمين را از حيات تهي كند.', 'ناسا زمين را جابجا مي‌كند!', 'گروهي از دانشمندان سازمان فضايي آمريكا با ارائه برنامه اي شگفت انگيز اعلام كردند به منظور نجات زمين از گرماي جهاني و افزايش طول عمر آن مي توان اين سياره را به مداري دورتر انتقال داد.\r\n\r\nبه گزارش خبرگزاري مهر، دانشمندان به منظور جلوگيري از افزايش حرارت زمين شيوه اي غير طبيعي را كشف كرده اند: حركت دادن زمين به نقطه اي خنك تر از منظومه خورشيدي. تنها ابزاري كه براي انجام اين انتقال نياز خواهد بود چند ستاره دنباله دار در نزديكي زمين است و پس از آن سياره زمين در منطقه اي ايمن و خنكتر از منظومه خورشيدي قرار خواهد گرفت.', 'publish', 'open', 'open', '', '%d9%86%d8%a7%d8%b3%d8%a7-%d8%b2%d9%85%d9%8a%d9%86-%d8%b1%d8%a7-%d8%ac%d8%a7%d8%a8%d8%ac%d8%a7-%d9%85%d9%8a%e2%80%8c%d9%83%d9%86%d8%af', '', '', '2012-12-02 21:43:28', '2012-12-02 21:43:28', '', 0, 'http://localhost/wp-ekbatan/?post_type=articles&#038;p=38', 0, 'articles', '', 1),
(39, 1, '2012-11-23 07:44:23', '2012-11-23 07:44:23', '', 'earthday', '', 'inherit', 'open', 'open', '', 'earthday', '', '', '2012-11-23 07:44:23', '2012-11-23 07:44:23', '', 38, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/earthday.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2012-11-23 07:51:33', '2012-11-23 07:51:33', 'گروهي از دانشمندان سازمان فضايي آمريكا با ارائه برنامه اي شگفت انگيز اعلام كردند به منظور نجات زمين از گرماي جهاني و افزايش طول عمر آن مي توان اين سياره را به مداري دورتر انتقال داد.\n\nبه گزارش خبرگزاري مهر، دانشمندان به منظور جلوگيري از افزايش حرارت زمين شيوه اي غير طبيعي را كشف كرده اند: حركت دادن زمين به نقطه اي خنك تر از منظومه خورشيدي. تنها ابزاري كه براي انجام اين انتقال نياز خواهد بود چند ستاره دنباله دار در نزديكي زمين است و پس از آن سياره زمين در منطقه اي ايمن و خنكتر از منظومه خورشيدي قرار خواهد گرفت.\n\nايده حركت دادن زمين به منظور بهبود دادن موقعيت بين سياره اي زاييده افكار گروهي از دانشمندان ناسا و اخترشناسان آمريكايي است كه معتقدند با انجام چنين كاري مي توان 6 بيليون سال ديگر به عمر مفيد زمين افزود.\n\nگرگ لاگلاين از مركز تحقيقاتي امز در اين باره معتقد است تغيير مدار زمين نيازمند فناوريهاي دور از ذهني نيست، براي انجام چنين كاري مي توان از شيوه اي كه اكنون براي منحرف كردن شهاب سنگها و ستاره هاي دنباله دار استفاده مي شوند كمك گرفت.\n\nبرنامه اي كه توسط اين محققان ارائه شده است هدايت كردن يك شهابسنگ يا ستاره دنباله دار است به شكلي كه از نزديك ترين فاصله ممكن از زمين عبور كند در اين صورت بخشي از نيروي گرانشي آن به زمين منتقل شده و در نتيجه سرعت مداري زمين افزايش پيدا خواهد كرد. به اين شكل سياره زمين به مداري بالاتر از موقعيت كنوني خود و در فاصله اي بيشتر از خورشيد قرار خواهد گرفت.\n\nبه گفته دانشمندان ناسا چنين راه حلي در كوتاه مدت مي تواند براي جلوگيري از بحران گرماي جهاني بسيار موثر باشد. براي هدايت اجرام كيهاني بايد از راكتي شيميايي استفاده كرده و در زمان مناسب به شهاب سنگ يا ستاره دنباله داري ضربه زد.\n\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/earthday.jpg"><img class="alignnone size-medium wp-image-39" title="earthday" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/earthday-298x300.jpg" alt="" width="298" height="300" /></a>\n\n&nbsp;', 'ناسا زمين را جابجا مي‌كند!', 'گروهي از دانشمندان سازمان فضايي آمريكا با ارائه برنامه اي شگفت انگيز اعلام كردند به منظور نجات زمين از گرماي جهاني و افزايش طول عمر آن مي توان اين سياره را به مداري دورتر انتقال داد.\n\nبه گزارش خبرگزاري مهر، دانشمندان به منظور جلوگيري از افزايش حرارت زمين شيوه اي غير طبيعي را كشف كرده اند: حركت دادن زمين به نقطه اي خنك تر از منظومه خورشيدي. تنها ابزاري كه براي انجام اين انتقال نياز خواهد بود چند ستاره دنباله دار در نزديكي زمين است و پس از آن سياره زمين در منطقه اي ايمن و خنكتر از منظومه خورشيدي قرار خواهد گرفت.', 'inherit', 'open', 'open', '', '38-autosave', '', '', '2012-11-23 07:51:33', '2012-11-23 07:51:33', '', 38, 'http://localhost/wp-ekbatan/?p=40', 0, 'revision', '', 0),
(41, 1, '2012-11-23 07:55:05', '2012-11-23 07:55:05', '<p dir="rtl">در تلسكوپ شكستي ، عدسي هاي شيئي معمولا از دو عدسي با جنس هاي متفاوت شيشه اي تشكيل شده اند. اين قبيل عدسي ، آكرومات (عدسي ساده) ناميده مي شود. منشور شيشه اي مي تواند براي ساخت رنگين كمان از نور سفيد استفاده شود. اين به دليل اين است كه شيشه، رنگهاي نور را به درجات مختلف منحرف ميكند.<!--more--></p>\r\n<p dir="rtl">زماني كه كسي تصوير واضح و تيزي (نوك دار) را از چيزي كه به آن مي نگرد، مي‌خواهد داشته باشد، اين تاثير آزار دهنده مي شود كه بهنام خطاي رنگي<a title="" name="_ftnref1"></a>[1] (ابيراهي رنگ) شناخته مي شود. آكرومات براي از بين بردن اين تاثير با استفاده از عدسي هايي از دو نوع شيشه طراحي شده است. يكي از عدسي ها كوژ است و جنس آن از شيشه ي گرد<a title="" name="_ftnref2"></a>[2]است. عدسي ديگر كاو است و از جنس ظرف بلور، چيزي كه اگر مقارن يك عدسي هم شكلش ساخته شود ، متراكم تر و انحراف نور در آن قوي تر از شيشه ي گرد است. اگرچه، همچنين اين انحراف نور بيشتر بطور قوي صورت مي گيرد اما همچنين اختلاف در چگونگي انحراف نورها با رنگهاي مختلف ،حتي به نسبت افزايش مقدار زيادي از انحراف، بيشتر بيان شده است.</p>\r\n<p dir="rtl">بنابراين ،مي توان دو عدسي نزديك به هم، يكي از شيشه ي بلوري و يكي از شيشه ي گرد ساخته شود كه نور را به دو راه مخالف انحراف دهند. بنابراين اين اختلاف در انحراف رنگها ، اين تاثيرات را از بين مي برد ، اما اين عدسي هنوز خودش يك كار اساسي از انحراف نور گذرنده از ميان آن در يك راستا را ايفا مي كند.</p>\r\n<p dir="rtl">هرچند ، به علت رفتار رنگهاي مختلف نور در شيشه، يك قانون ساده ي ثابت را دنبال نمي كند، اين حذف كردن ميتواند تنها براين دو رنگ تحميل شود. اين هنوز يك پيشرفت بزرگ خارج از ميدان عدسي است. اما بعضي اوقات يك پيشرفت بزرگتر مطلوب است و سپس يك عدسي از 3 عدسي شيئي براي تلسكوپهاي كمي بيشتر گران قيمت طراحي شد.</p>\r\n<p dir="rtl">عدسي شيئي روي تلسكوپ، به جاي شبيه بودن به يك بزرگ كننده معمولي عدسي شيشه اي در شكل، بطور مساوي بر هر دو وجه برآمده است، معمولا يك شكل هلالي شده دارد ، و اين قبيل عدسي، عدسي هلالي<a title="" name="_ftnref3"></a>[3] ناميده مي شوند.</p>\r\n<p dir="rtl">اين براي كم كرن انحراف ديگري، به نام خطاي كروي <a title="" name="_ftnref4"></a>[4] انجام شده است. انحراف نور با يك عدسي از قانوني رياضي به نام قانون هاي شكست نور (قانون اسنل) <a title="" name="_ftnref5"></a>[5] پيروي مي كند ، و اين ناشي از حقيقت نور گذرنده است كه در شيشه آرامتر از آن چه در هوا مي پيمايد، سرعت دارد.</p>\r\n<p dir="rtl">يك سطح كروي بطور متناسب براي ساخت زمان ساييدن عدسيها آسان است، اما اين تنها يك شباهت زياد، به شكلي است كه سطح آن، مايل به متمركز كرن پرتوهاي وارد آينده به آن در تنها يك نقطه در تصوير است.</p>\r\n<p dir="rtl">گاهي ، مخصوصا زماني كه خيلي از عدسي ها براي تثبيت هدف، با قالب گرفته شدن از پلاستيك ، ساخته مي شوند، اين بدترين هزينه براي ساخت قالب ضروري كامل تصوير به منظور ساختن سطح ايده آلي از انحراف نور در تصوير است. عدسي هاي شبيه اين با نام عدسي هاي كروي ناميده مي شوند.</p>\r\n<p dir="rtl">گاهي حتي از اين قبيل عدسي ها از جنس شيشه براي منظورهاي خاصي ساخته مي شوند ، اما اين قبيل عدسي ها گران گرانهستند و بنابراين استفاده ي عمومي ندارند.</p>\r\n<p dir="rtl">اصطلاح انحنادار، زيرا اين به معناي «غيركروي» است، گاهي ديگر انواع عدسي ها كه ساختن آنها دشوار نيست، استفاده مي شوند. آنها هنوز سطح خميده دارند چيزي كه دايره هايي به جاي خم هاي پيچيده براي ساختن تصاوير كامل را نياز مي شود. براي نمونه، تو شايد عدسي‌هاي استوانه‌اي را كه مي‌تواند يك خط منتشره ي بلندتر را بسازد ، ديده باشي، حتي در ميان آنها ، اين را عريض تر نمي سازد. ازاين قبيل عدسي ها مي توان ابزارهاي نوري كه يك چيز در يك جهت را انجام مي‌دهند و اشيا مختلف ديگر ساخت.</p>\r\n<p dir="rtl">يك كاربرد اين عدسي هاي تغيير شكل دهنده<a title="" name="_ftnref6"></a>[6] استفاده براي فشردن عرض تصوير روي پرده‌ي فيلم (2.35 برابر به همان پهناي درازا) در قاب تصوير متحرك فيلم طراحي شده براي تصوير متحرك اصلي به نسبت صفحه كه 1.33 برابر ، به همان پهناي درازا است ، شبيه تصوير روي تلويزيون تو است. (درواقع از زمان اديسون تصوير متحرك استاندارد كمي براي ساختن فيلم هاي معمولي به نسبت صفحه 1.37 : 1 تغيير داده شد. هر چند فيلمها 2.35 :1 به نسبت صفحه هستند، در يك محدوده روي فيلم ضبط شده اند اما فيلم همچنين چندين آثار صداي بزرگ را به خوبي نگه داشت)</p>\r\n<p dir="rtl">ديگر كاربرد آن عينك است. عدسي هاي عينك معمولا حلقوي هستند و نه كروي ، بطوريكه همچنين مي تواند براي اشتباه روي هم رفته ي فاصله كانوني در عدسي هاي چشمي را تصحيح كند بهاستثناي اختلاف‌ها در فاصله كانوني در جهات گوناگون يا ناهم خوانيهاي بينايي<a title="" name="_ftnref7"></a>[7] .</p>\r\n<p dir="rtl">معمولا عدسي هاي شيئي تلسكوپ در تلسكوپهاي شكستي نجومي از ابزار كروي استفاده نمي كنند.</p>\r\n<p dir="rtl">دو مثال براي تلسكوپ شكستي درمقابل تصوير شده است:</p>\r\n<p dir="rtl"><img alt="" width="478" /></p>\r\n<p dir="rtl">عدسي هاي باريك، خطاي كروي كمتري از عدسي هاي كلفت دارند. حتي بعد از تصحيح براي رفع انحراف رنگي ، دو ابزار شيئي، مختصري كلفت تر از يك عدسي شامل تنها يك ابزار ساخته است، باز هم خطاي كروي هنوز بطور مساعد ضعيف مي باشد.</p>\r\n<p dir="rtl"> درست كردن عملي يك عدسي هلالي، آن را به حداقل مي رساند، زيرا هنگاميكه روي هم رفته شكل عدسي ، سطح منحني را دنبال مي كند تا جايي كه جريان پرتوهاي نور منحرف مي‌شود به جهت مطلوب جديد، هنگامي است كه نگاه داشتن فضاي يكنواخت بين آنها ، ازدست نرود. (البته، چرا آن بايد يك اختلاف پيچيده بسازد.)</p>\r\n<p dir="rtl">همچنين ممكن است توجه بشود كه انحناها بر عدسي ها در شكل بالا، براي هدفهاي تصويري اغراق شده است.</p>\r\n<p dir="rtl"> زماني كه در جلوي سطح شديدا كوژ شده باشد، در فاصله كانون كوتاهتر تلسكوپ در قسمت پايين تر شكل نشان داده شده است ، تراز كردن نوار انحراف بين دو سطح هدايت كننده به سطح پشتي ،كوژ به جاي كاو مي شود، اما با انحناي سطح كمتر قوي. اين تلسكوپ سومين ابزار را نياز دارد ، همچنين ساخت از فلوئوريت كلسيم يا از گونه خاصي شيشه ، براي تنظيم كردن بيشتر سراسر آن را براي گرايش شيشه به منحرف ساختن نور آبي بيشتر قوي از نور زرد و نور زرد بيشتر قوي از نور قرمز. با دو ابزار ، يك عدسي آكروماتيك مي تواند هر دو نور قرمز و آبي به كانون يكسان بياورد اما نور زرد نيز به جاي كانوني شدن در يك نقطه، به طول معمولي شيشه هاي گرد و بلوري است ، استفاده مي شوند ، انحراف بيشتر قوي و زودتر به كانون آوردن.</p>\r\n<p dir="rtl">استفاده از 3 ابزار و بطور بيشتر مهم ، ابزاري كه شيشه معمولي نيستند، به 3 رنگ اجازه مي دهد تا به كانون يكساني آورده شوند، اما اين نيز زماني كه كانوني شدن رنگها در بين داشتن اشتباه هاي خيلي كمتر، به خوبي صورت بگيرد ،منجرمي شود.</p>\r\n<p dir="rtl">اين گونه عدسي ها با توجه به بالا، آكروماتيك هستند. طراحي كردن عدسي آكروماتيك بدون استفاده از فلوئوريت يا مواد شبيه آن ممكن است. پلاستيك ها، از قبيل آكريليك ، نيز با شيشه هاي نوري در دومين قابل فرق مي كنند، گرچه آنها خيلي زياد نسبت به دما از شيشه حساس هستند. همچنين، اينجا اختلاف بين شيشه هاي نوري معمولي كه اجازه بدهد به آنها تا براي ساخت آكروماتيك، به خوبي استفاده شود، وجود دارد.</p>\r\n<p dir="rtl"> اچ دنيس تيلور<a title="" name="_ftnref8"></a>[8] يك شي نوري–بصري در سال 1895 طراحي كرد چيزي كه به فلوئوريت يا پودر گرد با هم نياز نداشت.</p>', 'آشنايي با انواع تلسكوپ', '', 'publish', 'open', 'open', '', '%d8%a2%d8%b4%d9%86%d8%a7%d9%8a%d9%8a-%d8%a8%d8%a7-%d8%a7%d9%86%d9%88%d8%a7%d8%b9-%d8%aa%d9%84%d8%b3%d9%83%d9%88%d9%be', '', '', '2012-12-02 21:57:17', '2012-12-02 21:57:17', '', 0, 'http://localhost/wp-ekbatan/?post_type=articles&#038;p=41', 0, 'articles', '', 1),
(43, 1, '2012-11-14 18:49:35', '2012-11-14 18:49:35', '[simple-contact]', 'تماس', '', 'inherit', 'open', 'open', '', '10-revision-2', '', '', '2012-11-14 18:49:35', '2012-11-14 18:49:35', '', 10, 'http://localhost/wp-ekbatan/?p=43', 0, 'revision', '', 0),
(44, 1, '2012-11-27 18:10:38', '2012-11-27 18:10:38', '[contact]', 'فرم تماس', '', 'inherit', 'open', 'open', '', '10-autosave', '', '', '2012-11-27 18:10:38', '2012-11-27 18:10:38', '', 10, 'http://localhost/wp-ekbatan/?p=44', 0, 'revision', '', 0),
(45, 1, '2012-11-23 07:55:34', '2012-11-23 07:55:34', '[simple-contact]', 'فرم تماس', '', 'inherit', 'open', 'open', '', '10-revision-3', '', '', '2012-11-23 07:55:34', '2012-11-23 07:55:34', '', 10, 'http://localhost/wp-ekbatan/?p=45', 0, 'revision', '', 0);
INSERT INTO `kbtn_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(46, 1, '2012-12-18 19:19:54', '2012-12-18 19:19:54', 'که در جنوب شهر مومبای یا بمبئی در منطقهٔ «کـُّلابـه»، روبروی دروازه هند بنا شده است. یکی از بناهای زیبا و دیدنی هند و از هتل‌های معروف و بسیار گران‌قیمت و مجلل بمبئی به‌شمار می‌رود.http://google.com<!--more-->\n\nاین مجموعه شامل دو بنا است که از دیدگاه تاریخی و معماری متفاوت و قابل تفکیک می‌باشند. یکی «قصر تاج محل» و دیگری «برج تاج محل». برج تاج محل را با نام «تاج اینترکنتینانتال» نیز می‌‍شناسند.[۲]\n<a href="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/800px-Mumbai_TajMahalHotel.jpg"><img class="alignnone size-full wp-image-21" title="800px-Mumbai_TajMahalHotel" src="http://localhost/wp-ekbatan/wp-content/uploads/2012/11/800px-Mumbai_TajMahalHotel.jpg" alt="" width="200" height="125" /></a>\nهتل کاخ تاج‌محل دارای ۵۶۵ اتاق است.[۳] در تاریخ ۲۶ نوامبر ۲۰۰۸ میلادی، هتل بر اثر یک رشته عملیات‌های تروریستی در بمبئی خسارات عمده‌ای را متحمل شد و سقف هتل کاخ تاج‌محل به آتش کشیده و نابود شد.[۴]\n\nداستان احداث هتل کاخ تاج‌محل مومبای، مانند داستان بنای تاج محل اصلی در آگرا شنیدنی است. در زمان سلطه بریتانیا در هند، جمشیدجی تاتا، از بازرگانان پارسی یا زرتشتی هندی که بعدها پدر صنعت هندوستان لقب گرفت، می‌خواست برای یکی دو روز در هتل واتسن، از بهترین هتلهای بمبئی بماند. به او اجازه نمی‌دهند، چون هتل مختص سفیدها یا فرنگی‌ها بود. زخم این اهانت اجنبی‌ها در سینه، جمشیدجی تاتا می‌ماند تصمیم می‌گیرد هتلی بسازد که هتل واتسون را هم تحت‌الشعاع قرار دهد.\n\nجمشیدجی تاتا که یک پارسی هند (زرتشتی) و از سرمایه‌دارن بنام هندوستان بود، با کمک دو معمار هندی و یک معمار انگلیسی هتل مجلل کاخ را ساخت که روز ۱۶ دسامبر ۱۹۰۳ میلادی، درهایش را به روی میهمان‌ها باز کرد و اجازه داد که هندی‌ها هم مانند انگلیسی‌ها زیر یک سقف اقامت کنند و هیچ نوع تبعیض قومی و نژادی برای میهمانهایش قائل نبود.\n\nدر جریان جنگ جهانی اول، وارثان جمشیدجی تاتا، هتل تاج محل را به یک بیمارستان ۶۰۰ تخت خوابی تبدیل کردند. خود جمشیدجی تاتا در سال ۱۹۰۴، یک سال بعد از گشایش هتل تاج درگذشت.[۵]\n\n&nbsp;', 'هتل تاج محل', 'که در جنوب شهر مومبای یا بمبئی در منطقهٔ «کـُّلابـه»، روبروی دروازه هند بنا شده است. یکی از بناهای زیبا و دیدنی هند و از هتل‌های معروف و بسیار گران‌قیمت و مجلل بمبئی به‌شمار می‌رود.', 'inherit', 'open', 'open', '', '20-autosave', '', '', '2012-12-18 19:19:54', '2012-12-18 19:19:54', '', 20, 'http://localhost/wp-ekbatan/?p=46', 0, 'revision', '', 0),
(47, 1, '2012-11-23 12:00:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2012-11-23 12:00:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ekbatan/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2012-11-23 12:00:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2012-11-23 12:00:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ekbatan/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2012-11-23 12:01:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2012-11-23 12:01:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ekbatan/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2012-11-23 12:01:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2012-11-23 12:01:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ekbatan/?p=50', 1, 'nav_menu_item', '', 0),
(52, 1, '2012-11-26 12:39:14', '2012-11-26 12:39:14', '[gallery]', 'مجموعه فرهنگی', '', 'inherit', 'open', 'open', '', '27-autosave', '', '', '2012-11-26 12:39:14', '2012-11-26 12:39:14', '', 27, 'http://localhost/wp-ekbatan/?p=52', 0, 'revision', '', 0),
(54, 1, '2012-12-23 09:00:18', '2012-12-23 09:00:18', '&nbsp;\n\n&nbsp;\n\nمحور فعالیت های تجاری در شرکت باروژ بر روی پروژه های نرم افزاری متمرکز است که تاکنون نیز سیستم های نرم افزاری متفاوتی جهت مشتریان گوناگون طراحی و راه اندازی شده است.\n\nشرکت در حال حاضر دارای چهار دپارتمان نرم افزار، SharePoint، وب و فروش می باشد.\n\nدر دپارتمان نرم افزار، نرم افزارهای سفارش مشتری بر پایه تکنولوژی مایکروسافت طراحی و پیاده سازی می گردند. کلیه مراحل مربوط به تولید نرم افزارهای سفارش داده شده توسط مشتریان شامل برگزاری جلسات شناخت، آنالیز سیستم، طراحی مدل مفهومی، طراحی پروتوتایپ و بانکهای اطلاعاتی، پیاده سازی و پشتیبانی در این دپارتمان انجام می پذیرد. همچنین با توجه به نیاز آموزشگاه های کشور به سیستمی جهت مدیریت کلیه فعالیتهای داخل یک آموزشگاه، شرکت خورشید باروژ اقدام به تولید سیستم مدیریت آموزشگاه (Baruzh Institute Management System) که با نام اختصاری BIMS شناخته می شود، نموده است. دپارتمان نرم افزار، مسئولیت به روزآوری نسخه های مختلف و پشتیبانی مشتریان این سیستم نرم افزاری را دارد.\n\nسفارش های مشتریان در ارتباط با پورتال و وب سایت در دپارتمان وب انجام می پذیرد. با توجه به اینکه بستر آماده ای برای اجرای وب سایتها و پورتال ها در شرکت باروژ آماده شده است، اجرای سفارشات مشتریان در زمان بسیار کوتاه و با کیفیت بسیار بالایی قابل انجام است. همچنین نگهداری سرورها و مدیریت دامنه ها نیز در این دپارتمان انجام می پذیرد.\n\nبا توجه به نوپا بودن تکنولوژی SharePoint در ایران، دپارتمان SharePoint شرکت باروژ نیز بخش جدید و نوپایی به حساب می آید. با این وجود، با توانمندی متخصصان این حوزه در شرکت باروژ پروژه های عظیم، موثر و قابل اعتنایی در این زمینه انجام شده است که از آن جمله می توان راه اندازی Windows SharePoint Services 3.0 در شرکت ایرانسل و راه اندازی Microsoft Office SharePoint Server 2007 در سازمان گسترش و نوسازی صنایع ایران را نام برد.\n\nدپارتمان فروش شرکت خورشید باروژ امور مربوط به مشتریان و فروش و بازاریابی محصولات را پیگیری می نماید. این دپارتمان آماده است تا هرگونه درخواست مشتریان را به دقت شنیده و با کمک متخصصان فنی حوزه مربوطه، راه حلی برای آن تدارک ببیند.', 'خدمات گرافیک و تبلیغات', '', 'inherit', 'open', 'open', '', '37-autosave', '', '', '2012-12-23 09:00:18', '2012-12-23 09:00:18', '', 37, 'http://localhost/wp-ekbatan/?p=54', 0, 'revision', '', 0),
(55, 1, '2012-12-23 10:04:14', '2012-12-23 10:04:14', '<p style="color:red"<\nتست\n</p>\n\n\n<p dir="RTL">شركت قدس نيرو يكي از بزرگ‌ترين شركت‌هاي مهندسي ايراني است كه در اجراي پروژه‌هاي صنايع انرژي،</p>\n  style="color:red;""p dir="RTL">شركت مهندسي قدس نيرو با بيش از 1000 نفر كاركنان خود كه حدود سه چهارم آن كادر تخصصي در زمينه‏هاي مختلف مي‌باشند، خدمات مهندسي را در سراسر ايران و ساير كشورها عرضه مي‌كند. كادر فني شركت</p>\n<p dir="RTL">با اتكاء به تجارب غني و با ارزش حاصله از اجراي پروژه‏هاي عظيم، شركت مهندسي قدس نيرو در حال حاضر از لحاظ كادر تخصصي، اطلاعااسي و امكانات دفتري يكي از بزرگترين شركت‌هاي مهندسي در زمينه صنعت برق در خاورميانه محسوب مي‌گردد، و آمادگي پذيرش و اجراي طرح‌هاي پيچيده صنعتي به شكل مستقل و يا با همكاري شركت‌هاي مشاوره‏اي و سازنده را در داخل و خارج ايران اسلامي دارا مي‌باشد.</p>\n<p dir="RTL">لازم به‌ذكر است، مهندسي قدس نيرو در مراحل اجرايي پروژه‏هاي خود خدمات ذيل را ارائـه مي‌نمايد.</p>\n<p dir="RTL">-   مطالعات امكان سنجي (Feasibility studies) شامل بررسي‌هاي فني- اقتصادي</p>\n<p dir="RTL">-   مطالعات امكان‌سنجي (تعيين محل) شامل مطالعات شبكه و پخش بار، زمين‏شناسي، ژئوتكنيك، محيط زيست، سوخت‏رساني، منابع آب، انتقال آب، جاده‏هاي دسترسي و موارد ديگر.</p>\n<p dir="RTL">-   مديريت، برنامه‌ريزي و كنترل پروژه</p>\n<p dir="RTL">-   مطالعات توجيهي فني- اقتصادي</p>\n<p dir="RTL">-   طراحي مقدماتي، تهيه مشخصات فني و تهيه اسناد مناقصه</p>\n<p dir="RTL">-   انجام تشريفات مناقصه، بررسي و ارزيابي فني و مالي، مذاكرات قراردادي، انتخاب پيمانكار، تهيه اسناد فني- قراردادي</p>\n<p dir="RTL">-   طراحي مفهومي، پايه و تفصيلي</p>\n<p dir="RTL">-   بازنگري و كنترل طراحي</p>\n<p dir="RTL">-   بازرسي فني ساخت و آزمايش تجهيزات در كارخانجات سازنده</p>\n<p dir="RTL">-   نظارت عاليه و كارگاهي بر اجراي كارهاي ساختماني و تاسيساتي، نصب، تست و راه‏اندازي تا مرحله تحويل قطعي</p>\n<p dir="RTL">-   ارائـه خدمات مهندسي در دوران بهره‏برداري و بهينه‌سازي تأسيسات و صنايع</p>\n<p dir="RTL">-   ايفاي نقش مديريت پيمان (MC) در پروژه‌هاي صنعت برق، آب، نفت و گاز براساس استانداردهاي به روز مديريت پروژه</p>\n<p dir="RTL">-   مشاركت در پروژه‌هاي B.O.O، B.O.T</p>\n<p dir="RTL">-   اجراي فرايند تأمين تجهيزات براي طرح‌هاي صنعت برق، آب و نفت و گاز</p>\n<p dir="RTL">-   مديريت اجراي پروژه‌هاي اجرايي از طريق به‌كارگيري زنجيره تأمين گسترده</p>\n<p dir="RTL">هدف شركت مهندسي قدس نيرو جلب رضايت كارفرمايان با ارائه پيشنهادهاي رقابتي و از طريق ارائـه خدمات طراحي و مهندسي مناسب با ايجاد مطلوبيت در سه فاكتور كيفيت، زمان و هزينه انجام پروژه مي‌باشد. تعهد و توجه عميق به برآورده نمودن نيازهاي كارفرمايان مشي اصلي كاركنان قدس‌نيرو بوده و به عنوان اصلي مهم از سوي ايشان در نظر گرفته مي‌شود.</p>', 'خدمات شبکه و کامپیوتر', '', 'inherit', 'open', 'open', '', '36-autosave', '', '', '2012-12-23 10:04:14', '2012-12-23 10:04:14', '', 36, 'http://localhost/wp-ekbatan/?p=55', 0, 'revision', '', 0),
(56, 1, '2012-11-23 15:30:05', '2012-11-23 15:30:05', '', 'گرافیک و تبلیغات', '', 'publish', 'open', 'open', '', '56', '', '', '2012-12-23 08:52:26', '2012-12-23 08:52:26', '', 0, 'http://localhost/wp-ekbatan/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2012-11-23 15:30:05', '2012-11-23 15:30:05', '', 'شبکه و کامپیوتر', '', 'publish', 'open', 'open', '', '57', '', '', '2012-12-23 08:52:26', '2012-12-23 08:52:26', '', 0, 'http://localhost/wp-ekbatan/?p=57', 2, 'nav_menu_item', '', 0),
(58, 1, '2012-12-11 13:17:34', '2012-12-11 13:17:34', '[gallery]', 'مجموعه علمی', '', 'inherit', 'open', 'open', '', '31-autosave', '', '', '2012-12-11 13:17:34', '2012-12-11 13:17:34', '', 31, 'http://localhost/wp-ekbatan/?p=58', 0, 'revision', '', 0),
(59, 1, '2012-11-26 12:12:07', '2012-11-26 12:12:07', '', 'مجموعه علمی', '', 'inherit', 'open', 'open', '', 'evt110511045700161', '', '', '2012-11-26 12:12:07', '2012-11-26 12:12:07', '', 31, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/evt110511045700161.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2012-11-26 12:37:36', '2012-11-26 12:37:36', '', 'images', '', 'inherit', 'open', 'open', '', 'images', '', '', '2012-11-26 12:37:36', '2012-11-26 12:37:36', '', 27, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2012-11-27 14:59:15', '2012-11-27 14:59:15', 'به وردپرس خوش آمدید.‌این نخستین نوشته‌‌ی شماست. می‌توانید ویرایش یا پاکش کنید و پس از آن وبلاگ نویسی را آغاز کنید!', 'سلام دنیا!', '', 'inherit', 'open', 'open', '', '1-autosave', '', '', '2012-11-27 14:59:15', '2012-11-27 14:59:15', '', 1, 'http://localhost/wp-ekbatan/?p=64', 0, 'revision', '', 0),
(65, 1, '2012-11-23 07:57:07', '2012-11-23 07:57:07', '[contact]', 'فرم تماس', '', 'inherit', 'open', 'open', '', '10-revision-4', '', '', '2012-11-23 07:57:07', '2012-11-23 07:57:07', '', 10, 'http://localhost/wp-ekbatan/?p=65', 0, 'revision', '', 0),
(66, 1, '2012-11-27 18:09:36', '2012-11-27 18:09:36', '[contact]', 'فرم تماس', '', 'inherit', 'open', 'open', '', '10-revision-5', '', '', '2012-11-27 18:09:36', '2012-11-27 18:09:36', '', 10, 'http://localhost/wp-ekbatan/?p=66', 0, 'revision', '', 0),
(68, 1, '2012-11-29 17:58:14', '2012-11-29 17:58:14', '[viewpoint]', 'ایده های اکباتان', '', 'pending', 'open', 'open', '', '%d8%a7%db%8c%d8%af%d9%87-%d9%87%d8%a7%db%8c-%d8%a7%da%a9%d8%a8%d8%a7%d8%aa%d8%a7%d9%86', '', '', '2012-12-12 07:41:33', '2012-12-12 07:41:33', '', 0, 'http://localhost/wp-ekbatan/?page_id=68', 0, 'page', '', 1),
(69, 1, '2012-11-29 17:58:12', '2012-11-29 17:58:12', '', 'ایده های اکباتان', '', 'inherit', 'open', 'open', '', '68-revision', '', '', '2012-11-29 17:58:12', '2012-11-29 17:58:12', '', 68, 'http://localhost/wp-ekbatan/?p=69', 0, 'revision', '', 0),
(72, 1, '2012-11-29 17:58:14', '2012-11-29 17:58:14', '', 'ایده های اکباتان', '', 'inherit', 'open', 'open', '', '68-revision-2', '', '', '2012-11-29 17:58:14', '2012-11-29 17:58:14', '', 68, 'http://localhost/wp-ekbatan/?p=72', 0, 'revision', '', 0),
(73, 1, '2012-11-29 18:07:57', '2012-11-29 18:07:57', '', 'ایده های شبکه و کامپیوتر', '', 'publish', 'closed', 'closed', '', '%d8%a7%db%8c%d8%af%d9%87-%d9%87%d8%a7%db%8c-%da%a9%d8%a7%d9%86%d9%88%d9%86', '', '', '2012-12-23 09:29:12', '2012-12-23 09:29:12', '', 0, 'http://localhost/wp-ekbatan/?post_type=coments&#038;p=73', 0, 'coments', '', 2),
(74, 1, '2012-11-29 18:07:22', '2012-11-29 18:07:22', '', 'ایده های اکباتان', '', 'inherit', 'open', 'open', '', '68-revision-3', '', '', '2012-11-29 18:07:22', '2012-11-29 18:07:22', '', 68, 'http://localhost/wp-ekbatan/?p=74', 0, 'revision', '', 0),
(75, 1, '2012-11-29 18:14:37', '2012-11-29 18:14:37', '', 'ایده های اکباتان', '', 'inherit', 'open', 'open', '', '68-revision-4', '', '', '2012-11-29 18:14:37', '2012-11-29 18:14:37', '', 68, 'http://localhost/wp-ekbatan/?p=75', 0, 'revision', '', 0),
(76, 1, '2012-12-11 13:41:05', '2012-12-11 13:41:05', '[viewpoint]', 'ایده های اکباتان', '', 'inherit', 'open', 'open', '', '68-autosave', '', '', '2012-12-11 13:41:05', '2012-12-11 13:41:05', '', 68, 'http://localhost/wp-ekbatan/?p=76', 0, 'revision', '', 0),
(77, 1, '2012-11-29 18:49:47', '2012-11-29 18:49:47', '', 'ایده های گرافیک و تبلیغات', '', 'publish', 'closed', 'closed', '', '%d8%a7%db%8c%d8%af%d9%87-%d9%87%d8%a7%db%8c-%da%a9%d8%a7%d9%86%d9%88%d9%86-2', '', '', '2012-12-23 09:30:13', '2012-12-23 09:30:13', '', 0, 'http://localhost/wp-ekbatan/?post_type=coments&#038;p=77', 0, 'coments', '', 1),
(78, 1, '2012-11-29 18:14:54', '2012-11-29 18:14:54', '', 'ایده های اکباتان', '', 'inherit', 'closed', 'open', '', '68-revision-5', '', '', '2012-11-29 18:14:54', '2012-11-29 18:14:54', '', 68, 'http://localhost/wp-ekbatan/?p=78', 0, 'revision', '', 0),
(79, 1, '2012-11-30 21:03:50', '2012-11-30 21:03:50', '[viewpoint]', 'ایده های اکباتان', '', 'inherit', 'closed', 'open', '', '68-revision-6', '', '', '2012-11-30 21:03:50', '2012-11-30 21:03:50', '', 68, 'http://localhost/wp-ekbatan/?p=79', 0, 'revision', '', 0),
(81, 1, '2012-12-11 13:37:54', '2012-12-11 13:37:54', '<p dir="rtl">در تلسكوپ شكستي ، عدسي هاي شيئي معمولا از دو عدسي با جنس هاي متفاوت شيشه اي تشكيل شده اند. اين قبيل عدسي ، آكرومات (عدسي ساده) ناميده مي شود. منشور شيشه اي مي تواند براي ساخت رنگين كمان از نور سفيد استفاده شود. اين به دليل اين است كه شيشه، رنگهاي نور را به درجات مختلف منحرف ميكند.<!--more--></p>\n<p dir="rtl">زماني كه كسي تصوير واضح و تيزي (نوك دار) را از چيزي كه به آن مي نگرد، مي‌خواهد داشته باشد، اين تاثير آزار دهنده مي شود كه بهنام خطاي رنگي<a title="" name="_ftnref1"></a>[1] (ابيراهي رنگ) شناخته مي شود. آكرومات براي از بين بردن اين تاثير با استفاده از عدسي هايي از دو نوع شيشه طراحي شده است. يكي از عدسي ها كوژ است و جنس آن از شيشه ي گرد<a title="" name="_ftnref2"></a>[2]است. عدسي ديگر كاو است و از جنس ظرف بلور، چيزي كه اگر مقارن يك عدسي هم شكلش ساخته شود ، متراكم تر و انحراف نور در آن قوي تر از شيشه ي گرد است. اگرچه، همچنين اين انحراف نور بيشتر بطور قوي صورت مي گيرد اما همچنين اختلاف در چگونگي انحراف نورها با رنگهاي مختلف ،حتي به نسبت افزايش مقدار زيادي از انحراف، بيشتر بيان شده است.</p>\n<p dir="rtl">بنابراين ،مي توان دو عدسي نزديك به هم، يكي از شيشه ي بلوري و يكي از شيشه ي گرد ساخته شود كه نور را به دو راه مخالف انحراف دهند. بنابراين اين اختلاف در انحراف رنگها ، اين تاثيرات را از بين مي برد ، اما اين عدسي هنوز خودش يك كار اساسي از انحراف نور گذرنده از ميان آن در يك راستا را ايفا مي كند.</p>\n<p dir="rtl">هرچند ، به علت رفتار رنگهاي مختلف نور در شيشه، يك قانون ساده ي ثابت را دنبال نمي كند، اين حذف كردن ميتواند تنها براين دو رنگ تحميل شود. اين هنوز يك پيشرفت بزرگ خارج از ميدان عدسي است. اما بعضي اوقات يك پيشرفت بزرگتر مطلوب است و سپس يك عدسي از 3 عدسي شيئي براي تلسكوپهاي كمي بيشتر گران قيمت طراحي شد.</p>\n<p dir="rtl">عدسي شيئي روي تلسكوپ، به جاي شبيه بودن به يك بزرگ كننده معمولي عدسي شيشه اي در شكل، بطور مساوي بر هر دو وجه برآمده است، معمولا يك شكل هلالي شده دارد ، و اين قبيل عدسي، عدسي هلالي<a title="" name="_ftnref3"></a>[3] ناميده مي شوند.</p>\n<p dir="rtl">اين براي كم كرن انحراف ديگري، به نام خطاي كروي <a title="" name="_ftnref4"></a>[4] انجام شده است. انحراف نور با يك عدسي از قانوني رياضي به نام قانون هاي شكست نور (قانون اسنل) <a title="" name="_ftnref5"></a>[5] پيروي مي كند ، و اين ناشي از حقيقت نور گذرنده است كه در شيشه آرامتر از آن چه در هوا مي پيمايد، سرعت دارد.</p>\n<p dir="rtl">يك سطح كروي بطور متناسب براي ساخت زمان ساييدن عدسيها آسان است، اما اين تنها يك شباهت زياد، به شكلي است كه سطح آن، مايل به متمركز كرن پرتوهاي وارد آينده به آن در تنها يك نقطه در تصوير است.</p>\n<p dir="rtl">گاهي ، مخصوصا زماني كه خيلي از عدسي ها براي تثبيت هدف، با قالب گرفته شدن از پلاستيك ، ساخته مي شوند، اين بدترين هزينه براي ساخت قالب ضروري كامل تصوير به منظور ساختن سطح ايده آلي از انحراف نور در تصوير است. عدسي هاي شبيه اين با نام عدسي هاي كروي ناميده مي شوند.</p>\n<p dir="rtl">گاهي حتي از اين قبيل عدسي ها از جنس شيشه براي منظورهاي خاصي ساخته مي شوند ، اما اين قبيل عدسي ها گران گرانهستند و بنابراين استفاده ي عمومي ندارند.</p>\n<p dir="rtl">اصطلاح انحنادار، زيرا اين به معناي «غيركروي» است، گاهي ديگر انواع عدسي ها كه ساختن آنها دشوار نيست، استفاده مي شوند. آنها هنوز سطح خميده دارند چيزي كه دايره هايي به جاي خم هاي پيچيده براي ساختن تصاوير كامل را نياز مي شود. براي نمونه، تو شايد عدسي‌هاي استوانه‌اي را كه مي‌تواند يك خط منتشره ي بلندتر را بسازد ، ديده باشي، حتي در ميان آنها ، اين را عريض تر نمي سازد. ازاين قبيل عدسي ها مي توان ابزارهاي نوري كه يك چيز در يك جهت را انجام مي‌دهند و اشيا مختلف ديگر ساخت.</p>\n<p dir="rtl">يك كاربرد اين عدسي هاي تغيير شكل دهنده<a title="" name="_ftnref6"></a>[6] استفاده براي فشردن عرض تصوير روي پرده‌ي فيلم (2.35 برابر به همان پهناي درازا) در قاب تصوير متحرك فيلم طراحي شده براي تصوير متحرك اصلي به نسبت صفحه كه 1.33 برابر ، به همان پهناي درازا است ، شبيه تصوير روي تلويزيون تو است. (درواقع از زمان اديسون تصوير متحرك استاندارد كمي براي ساختن فيلم هاي معمولي به نسبت صفحه 1.37 : 1 تغيير داده شد. هر چند فيلمها 2.35 :1 به نسبت صفحه هستند، در يك محدوده روي فيلم ضبط شده اند اما فيلم همچنين چندين آثار صداي بزرگ را به خوبي نگه داشت)</p>\n<p dir="rtl">ديگر كاربرد آن عينك است. عدسي هاي عينك معمولا حلقوي هستند و نه كروي ، بطوريكه همچنين مي تواند براي اشتباه روي هم رفته ي فاصله كانوني در عدسي هاي چشمي را تصحيح كند بهاستثناي اختلاف‌ها در فاصله كانوني در جهات گوناگون يا ناهم خوانيهاي بينايي<a title="" name="_ftnref7"></a>[7] .</p>\n<p dir="rtl">معمولا عدسي هاي شيئي تلسكوپ در تلسكوپهاي شكستي نجومي از ابزار كروي استفاده نمي كنند.</p>\n<p dir="rtl">دو مثال براي تلسكوپ شكستي درمقابل تصوير شده است:</p>\n<p dir="rtl"><img alt="" width="478" /></p>\n<p dir="rtl">عدسي هاي باريك، خطاي كروي كمتري از عدسي هاي كلفت دارند. حتي بعد از تصحيح براي رفع انحراف رنگي ، دو ابزار شيئي، مختصري كلفت تر از يك عدسي شامل تنها يك ابزار ساخته است، باز هم خطاي كروي هنوز بطور مساعد ضعيف مي باشد.</p>\n<p dir="rtl"> درست كردن عملي يك عدسي هلالي، آن را به حداقل مي رساند، زيرا هنگاميكه روي هم رفته شكل عدسي ، سطح منحني را دنبال مي كند تا جايي كه جريان پرتوهاي نور منحرف مي‌شود به جهت مطلوب جديد، هنگامي است كه نگاه داشتن فضاي يكنواخت بين آنها ، ازدست نرود. (البته، چرا آن بايد يك اختلاف پيچيده بسازد.)</p>\n<p dir="rtl">همچنين ممكن است توجه بشود كه انحناها بر عدسي ها در شكل بالا، براي هدفهاي تصويري اغراق شده است.</p>\n<p dir="rtl"> زماني كه در جلوي سطح شديدا كوژ شده باشد، در فاصله كانون كوتاهتر تلسكوپ در قسمت پايين تر شكل نشان داده شده است ، تراز كردن نوار انحراف بين دو سطح هدايت كننده به سطح پشتي ،كوژ به جاي كاو مي شود، اما با انحناي سطح كمتر قوي. اين تلسكوپ سومين ابزار را نياز دارد ، همچنين ساخت از فلوئوريت كلسيم يا از گونه خاصي شيشه ، براي تنظيم كردن بيشتر سراسر آن را براي گرايش شيشه به منحرف ساختن نور آبي بيشتر قوي از نور زرد و نور زرد بيشتر قوي از نور قرمز. با دو ابزار ، يك عدسي آكروماتيك مي تواند هر دو نور قرمز و آبي به كانون يكسان بياورد اما نور زرد نيز به جاي كانوني شدن در يك نقطه، به طول معمولي شيشه هاي گرد و بلوري است ، استفاده مي شوند ، انحراف بيشتر قوي و زودتر به كانون آوردن.</p>\n<p dir="rtl">استفاده از 3 ابزار و بطور بيشتر مهم ، ابزاري كه شيشه معمولي نيستند، به 3 رنگ اجازه مي دهد تا به كانون يكساني آورده شوند، اما اين نيز زماني كه كانوني شدن رنگها در بين داشتن اشتباه هاي خيلي كمتر، به خوبي صورت بگيرد ،منجرمي شود.</p>\n<p dir="rtl">اين گونه عدسي ها با توجه به بالا، آكروماتيك هستند. طراحي كردن عدسي آكروماتيك بدون استفاده از فلوئوريت يا مواد شبيه آن ممكن است. پلاستيك ها، از قبيل آكريليك ، نيز با شيشه هاي نوري در دومين قابل فرق مي كنند، گرچه آنها خيلي زياد نسبت به دما از شيشه حساس هستند. همچنين، اينجا اختلاف بين شيشه هاي نوري معمولي كه اجازه بدهد به آنها تا براي ساخت آكروماتيك، به خوبي استفاده شود، وجود دارد.</p>\n<p dir="rtl"> اچ دنيس تيلور<a title="" name="_ftnref8"></a>[8] يك شي نوري–بصري در سال 1895 طراحي كرد چيزي كه به فلوئوريت يا پودر گرد با هم نياز نداشت.</p>', 'آشنايي با انواع تلسكوپ', '', 'inherit', 'closed', 'open', '', '41-autosave', '', '', '2012-12-11 13:37:54', '2012-12-11 13:37:54', '', 41, 'http://localhost/wp-ekbatan/?p=81', 0, 'revision', '', 0),
(82, 1, '2012-12-02 22:09:11', '2012-12-02 22:09:11', '[viewpoint]', 'ایده های اکباتان', '', 'inherit', 'closed', 'open', '', '68-revision-7', '', '', '2012-12-02 22:09:11', '2012-12-02 22:09:11', '', 68, 'http://localhost/wp-ekbatan/?p=82', 0, 'revision', '', 0),
(83, 1, '2012-12-11 13:40:03', '2012-12-11 13:40:03', '[viewpoint]', 'ایده های اکباتان', '', 'inherit', 'closed', 'open', '', '68-revision-8', '', '', '2012-12-11 13:40:03', '2012-12-11 13:40:03', '', 68, 'http://localhost/wp-ekbatan/?p=83', 0, 'revision', '', 0),
(84, 1, '2012-12-18 07:29:00', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2012-12-18 07:29:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ekbatan/?p=84', 0, 'post', '', 0),
(85, 1, '2012-12-18 18:11:06', '2012-12-18 18:11:06', '[gallery]', 'گالری تصاویر اکباتان', '', 'inherit', 'closed', 'open', '', '23-autosave', '', '', '2012-12-18 18:11:06', '2012-12-18 18:11:06', '', 23, 'http://localhost/wp-ekbatan/?p=85', 0, 'revision', '', 0),
(86, 1, '2012-12-18 18:39:11', '2012-12-18 18:39:11', 'روش‌های متعدی برای ارسال پیام وجود دارد. در قدیم بیشتر پیام‌ها به‌وسیله <a title="پیک" href="http://fa.wikipedia.org/wiki/%D9%BE%DB%8C%DA%A9">پیک‌ها</a> و یا <a title="پرنده نامه‌رسان (صفحه وجود ندارد)" href="http://fa.wikipedia.org/w/index.php?title=%D9%BE%D8%B1%D9%86%D8%AF%D9%87_%D9%86%D8%A7%D9%85%D9%87%E2%80%8C%D8%B1%D8%B3%D8%A7%D9%86&amp;action=edit&amp;redlink=1&amp;preload=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%B3%D8%AA%D8%AE%D9%88%D8%A7%D9%86%E2%80%8C%D8%A8%D9%86%D8%AF%DB%8C&amp;editintro=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%AF%DB%8C%D8%AA%E2%80%8C%D9%86%D9%88%D8%AA%DB%8C%D8%B3&amp;summary=%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%DB%8C%DA%A9+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D9%86%D9%88+%D8%A7%D8%B2+%D8%B7%D8%B1%DB%8C%D9%82+%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF%DA%AF%D8%B1&amp;nosummary=&amp;prefix=&amp;minor=&amp;create=%D8%AF%D8%B1%D8%B3%D8%AA+%DA%A9%D8%B1%D8%AF%D9%86+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D8%AC%D8%AF%DB%8C%D8%AF">پرنده‌های نامه‌رسان</a> فرستاده می‌شد. امروزه می‌توان پیام‌ها را از راه‌های الکترونیک با <a title="تلفن" href="http://fa.wikipedia.org/wiki/%D8%AA%D9%84%D9%81%D9%86">تلفن</a>، <a title="ایمیل" href="http://fa.wikipedia.org/wiki/%D8%A7%DB%8C%D9%85%DB%8C%D9%84">ایمیل</a> و دیگر راه‌ها ارسال کرد. امروزه هم‌چنین امکان ضبط پیام‌ها و خواندن و شنیدن مکرر آن‌ها وجود دارد. در تلفن‌ها این‌کار از طریق <a title="پیام‌گیر تلفنی (صفحه وجود ندارد)" href="http://fa.wikipedia.org/w/index.php?title=%D9%BE%DB%8C%D8%A7%D9%85%E2%80%8C%DA%AF%DB%8C%D8%B1_%D8%AA%D9%84%D9%81%D9%86%DB%8C&amp;action=edit&amp;redlink=1&amp;preload=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%B3%D8%AA%D8%AE%D9%88%D8%A7%D9%86%E2%80%8C%D8%A8%D9%86%D8%AF%DB%8C&amp;editintro=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%AF%DB%8C%D8%AA%E2%80%8C%D9%86%D9%88%D8%AA%DB%8C%D8%B3&amp;summary=%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%DB%8C%DA%A9+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D9%86%D9%88+%D8%A7%D8%B2+%D8%B7%D8%B1%DB%8C%D9%82+%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF%DA%AF%D8%B1&amp;nosummary=&amp;prefix=&amp;minor=&amp;create=%D8%AF%D8%B1%D8%B3%D8%AA+%DA%A9%D8%B1%D8%AF%D9%86+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D8%AC%D8%AF%DB%8C%D8%AF">پیام‌گیر تلفنی</a> انجام می‌شود.', 'پیام شماره1', '', 'publish', 'closed', 'closed', '', '%d9%be%db%8c%d8%a7%d9%85-%d8%b4%d9%85%d8%a7%d8%b1%d9%871', '', '', '2012-12-18 18:39:11', '2012-12-18 18:39:11', '', 0, 'http://localhost/wp-ekbatan/?post_type=massages&#038;p=86', 0, 'massages', '', 0),
(87, 1, '2012-12-18 18:39:36', '2012-12-18 18:39:36', '<strong>به پیام کوچک به صورت یک نوشته متنی که توسط <a title="تلفن همراه" href="http://fa.wikipedia.org/wiki/%D8%AA%D9%84%D9%81%D9%86_%D9%87%D9%85%D8%B1%D8%A7%D9%87">تلفن همراه</a> و سامانه مخابرات سیار ارسال شود <a title="پیامک" href="http://fa.wikipedia.org/wiki/%D9%BE%DB%8C%D8%A7%D9%85%DA%A9">پیامک</a> می‌گویند.</strong>\r\n</br>\r\n\r\n\r\n\r\n\r\n<strong>امروزه به سامانه‌ای است که اطلاعات مورد نیاز روزانه از قبیل کالاها و ساعات پرواز هواپیماها و اخبار مهم سیاسی و اجتماعی را به صورت نوشته، بر روی صفحهٔ تلویزیون ظاهر کند <a title="پیام‌نما (صفحه وجود ندارد)" href="http://fa.wikipedia.org/w/index.php?title=%D9%BE%DB%8C%D8%A7%D9%85%E2%80%8C%D9%86%D9%85%D8%A7&amp;action=edit&amp;redlink=1&amp;preload=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%B3%D8%AA%D8%AE%D9%88%D8%A7%D9%86%E2%80%8C%D8%A8%D9%86%D8%AF%DB%8C&amp;editintro=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%AF%DB%8C%D8%AA%E2%80%8C%D9%86%D9%88%D8%AA%DB%8C%D8%B3&amp;summary=%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%DB%8C%DA%A9+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D9%86%D9%88+%D8%A7%D8%B2+%D8%B7%D8%B1%DB%8C%D9%82+%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF%DA%AF%D8%B1&amp;nosummary=&amp;prefix=&amp;minor=&amp;create=%D8%AF%D8%B1%D8%B3%D8%AA+%DA%A9%D8%B1%D8%AF%D9%86+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D8%AC%D8%AF%DB%8C%D8%AF">پیام‌نما</a> گفته می‌شود.</strong>', 'پیام شماره 2', '', 'publish', 'closed', 'closed', '', '%d9%be%db%8c%d8%a7%d9%85-%d8%b4%d9%85%d8%a7%d8%b1%d9%87', '', '', '2012-12-23 09:49:00', '2012-12-23 09:49:00', '', 0, 'http://localhost/wp-ekbatan/?post_type=massages&#038;p=87', 0, 'massages', '', 0),
(88, 1, '2012-12-18 18:59:06', '2012-12-18 18:59:06', 'روش‌های متعدی برای ارسال پیام وجود دارد. در قدیم بیشتر پیام‌ها به‌وسیله <a title="پیک" href="http://fa.wikipedia.org/wiki/%D9%BE%DB%8C%DA%A9">پیک‌ها</a> و یا <a title="پرنده نامه‌رسان (صفحه وجود ندارد)" href="http://fa.wikipedia.org/w/index.php?title=%D9%BE%D8%B1%D9%86%D8%AF%D9%87_%D9%86%D8%A7%D9%85%D9%87%E2%80%8C%D8%B1%D8%B3%D8%A7%D9%86&amp;action=edit&amp;redlink=1&amp;preload=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%B3%D8%AA%D8%AE%D9%88%D8%A7%D9%86%E2%80%8C%D8%A8%D9%86%D8%AF%DB%8C&amp;editintro=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%AF%DB%8C%D8%AA%E2%80%8C%D9%86%D9%88%D8%AA%DB%8C%D8%B3&amp;summary=%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%DB%8C%DA%A9+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D9%86%D9%88+%D8%A7%D8%B2+%D8%B7%D8%B1%DB%8C%D9%82+%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF%DA%AF%D8%B1&amp;nosummary=&amp;prefix=&amp;minor=&amp;create=%D8%AF%D8%B1%D8%B3%D8%AA+%DA%A9%D8%B1%D8%AF%D9%86+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D8%AC%D8%AF%DB%8C%D8%AF">پرنده‌های نامه‌رسان</a> فرستاده می‌شد. امروزه می‌توان پیام‌ها را از راه‌های الکترونیک با <a title="تلفن" href="http://fa.wikipedia.org/wiki/%D8%AA%D9%84%D9%81%D9%86">تلفن</a>، <a title="ایمیل" href="http://fa.wikipedia.org/wiki/%D8%A7%DB%8C%D9%85%DB%8C%D9%84">ایمیل</a> و دیگر راه‌ها ارسال کرد. امروزه هم‌چنین امکان ضبط پیام‌ها و خواندن و شنیدن مکرر آن‌ها وجود دارد. در تلفن‌ها این‌کار از طریق <a title="پیام‌گیر تلفنی (صفحه وجود ندارد)" href="http://fa.wikipedia.org/w/index.php?title=%D9%BE%DB%8C%D8%A7%D9%85%E2%80%8C%DA%AF%DB%8C%D8%B1_%D8%AA%D9%84%D9%81%D9%86%DB%8C&amp;action=edit&amp;redlink=1&amp;preload=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%B3%D8%AA%D8%AE%D9%88%D8%A7%D9%86%E2%80%8C%D8%A8%D9%86%D8%AF%DB%8C&amp;editintro=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%AF%DB%8C%D8%AA%E2%80%8C%D9%86%D9%88%D8%AA%DB%8C%D8%B3&amp;summary=%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%DB%8C%DA%A9+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D9%86%D9%88+%D8%A7%D8%B2+%D8%B7%D8%B1%DB%8C%D9%82+%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF%DA%AF%D8%B1&amp;nosummary=&amp;prefix=&amp;minor=&amp;create=%D8%AF%D8%B1%D8%B3%D8%AA+%DA%A9%D8%B1%D8%AF%D9%86+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D8%AC%D8%AF%DB%8C%D8%AF">پیام‌گیر تلفنی</a> انجام می‌شود.', 'پیام شماره1', '', 'inherit', 'closed', 'open', '', '86-autosave', '', '', '2012-12-18 18:59:06', '2012-12-18 18:59:06', '', 86, 'http://localhost/wp-ekbatan/?p=88', 0, 'revision', '', 0),
(89, 1, '2012-12-18 19:17:00', '2012-12-18 19:17:00', '', '7184212', '', 'inherit', 'closed', 'open', '', '7184212', '', '', '2012-12-18 19:17:00', '2012-12-18 19:17:00', '', 20, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/7184212.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2012-12-18 19:18:40', '2012-12-18 19:18:40', '', '7184212', '', 'inherit', 'closed', 'open', '', '7184212-2', '', '', '2012-12-18 19:18:40', '2012-12-18 19:18:40', '', 20, 'http://localhost/wp-ekbatan/wp-content/uploads/2012/11/71842121.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2012-12-23 08:45:19', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2012-12-23 08:45:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ekbatan/?post_type=massages&p=91', 0, 'massages', '', 0),
(92, 1, '2012-12-23 09:10:21', '2012-12-23 09:10:21', 'تذتذدئ', '', '', 'trash', 'closed', 'closed', '', '92', '', '', '2012-12-23 09:12:19', '2012-12-23 09:12:19', '', 0, 'http://localhost/wp-ekbatan/?post_type=marketting&#038;p=92', 0, 'marketting', '', 0),
(93, 1, '2012-12-23 09:37:23', '2012-12-23 09:37:23', 'به پیام کوچک به صورت یک نوشته متنی که توسط <a title="تلفن همراه" href="http://fa.wikipedia.org/wiki/%D8%AA%D9%84%D9%81%D9%86_%D9%87%D9%85%D8%B1%D8%A7%D9%87">تلفن همراه</a> و سامانه مخابرات سیار ارسال شود <a title="پیامک" href="http://fa.wikipedia.org/wiki/%D9%BE%DB%8C%D8%A7%D9%85%DA%A9">پیامک</a> می‌گویند.\n\nامروزه به سامانه‌ای است که اطلاعات مورد نیاز روزانه از قبیل کالاها و ساعات پرواز هواپیماها و اخبار مهم سیاسی و اجتماعی را به صورت نوشته، بر روی صفحهٔ تلویزیون ظاهر کند <a title="پیام‌نما (صفحه وجود ندارد)" href="http://fa.wikipedia.org/w/index.php?title=%D9%BE%DB%8C%D8%A7%D9%85%E2%80%8C%D9%86%D9%85%D8%A7&amp;action=edit&amp;redlink=1&amp;preload=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%B3%D8%AA%D8%AE%D9%88%D8%A7%D9%86%E2%80%8C%D8%A8%D9%86%D8%AF%DB%8C&amp;editintro=%D8%A7%D9%84%DA%AF%D9%88:%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%D9%85%D9%82%D8%A7%D9%84%D9%87/%D8%A7%D8%AF%DB%8C%D8%AA%E2%80%8C%D9%86%D9%88%D8%AA%DB%8C%D8%B3&amp;summary=%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF+%DB%8C%DA%A9+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D9%86%D9%88+%D8%A7%D8%B2+%D8%B7%D8%B1%DB%8C%D9%82+%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF%DA%AF%D8%B1&amp;nosummary=&amp;prefix=&amp;minor=&amp;create=%D8%AF%D8%B1%D8%B3%D8%AA+%DA%A9%D8%B1%D8%AF%D9%86+%D9%85%D9%82%D8%A7%D9%84%D9%87+%D8%AC%D8%AF%DB%8C%D8%AF">پیام‌نما</a> گفته می‌شود.', 'پیام شماره 2', '', 'inherit', 'closed', 'open', '', '87-autosave', '', '', '2012-12-23 09:37:23', '2012-12-23 09:37:23', '', 87, 'http://localhost/wp-ekbatan/?p=93', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_statistics_date`
--

CREATE TABLE IF NOT EXISTS `kbtn_statistics_date` (
  `last_counter` date DEFAULT NULL,
  `last_week` int(2) DEFAULT NULL,
  `last_month` int(2) DEFAULT NULL,
  `last_year` int(5) DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kbtn_statistics_date`
--

INSERT INTO `kbtn_statistics_date` (`last_counter`, `last_week`, `last_month`, `last_year`, `timestamp`, `last_visit`) VALUES
('0000-00-00', 0, 0, 0, 11, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_statistics_reffered`
--

CREATE TABLE IF NOT EXISTS `kbtn_statistics_reffered` (
  `referred` text,
  `ip` char(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `agent` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_statistics_useronline`
--

CREATE TABLE IF NOT EXISTS `kbtn_statistics_useronline` (
  `ip` char(20) DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `referred` text,
  `agent` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kbtn_statistics_useronline`
--

INSERT INTO `kbtn_statistics_useronline` (`ip`, `timestamp`, `time`, `referred`, `agent`) VALUES
('127.0.0.1', 1356337299, '2012-12-24 08:21:38', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11');

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_statistics_visits`
--

CREATE TABLE IF NOT EXISTS `kbtn_statistics_visits` (
  `today` int(10) DEFAULT NULL,
  `yesterday` int(10) DEFAULT NULL,
  `week` int(20) DEFAULT NULL,
  `month` int(20) DEFAULT NULL,
  `year` int(20) DEFAULT NULL,
  `total` int(20) DEFAULT NULL,
  `google` int(10) DEFAULT NULL,
  `yahoo` int(10) DEFAULT NULL,
  `bing` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kbtn_statistics_visits`
--

INSERT INTO `kbtn_statistics_visits` (`today`, `yesterday`, `week`, `month`, `year`, `total`, `google`, `yahoo`, `bing`) VALUES
(0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_terms`
--

CREATE TABLE IF NOT EXISTS `kbtn_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `kbtn_terms`
--

INSERT INTO `kbtn_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'دسته‌بندی نشده', '%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87', 0),
(2, 'Blogroll', '%d9%be%db%8c%d9%88%d9%86%d8%af%d9%87%d8%a7', 0),
(7, 'شبکه و کامپیوتر', 'ekbatan', 0),
(8, 'گرافیک و تبلیغات', 'kanoon', 0),
(11, 'مجموعه علمی', '%d9%85%d8%ac%d9%85%d9%88%d8%b9%d9%87-%d8%b9%d9%84%d9%85%db%8c', 0),
(12, 'مجموعه فرهنگی', '%d9%85%d8%ac%d9%85%d9%88%d8%b9%d9%87-%d9%81%d8%b1%d9%87%d9%86%da%af%db%8c', 0),
(13, 'فهرست اصلی', '%d9%81%d9%87%d8%b1%d8%b3%d8%aa-%d8%a7%d8%b5%d9%84%db%8c', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_term_relationships`
--

CREATE TABLE IF NOT EXISTS `kbtn_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kbtn_term_relationships`
--

INSERT INTO `kbtn_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(23, 7, 0),
(23, 17, 0),
(27, 8, 0),
(27, 12, 0),
(27, 16, 0),
(31, 8, 0),
(31, 11, 0),
(31, 16, 0),
(36, 7, 0),
(36, 17, 0),
(37, 8, 0),
(37, 16, 0),
(38, 16, 0),
(41, 17, 0),
(56, 13, 0),
(57, 13, 0),
(73, 17, 0),
(77, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `kbtn_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `kbtn_term_taxonomy`
--

INSERT INTO `kbtn_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'link_category', '', 0, 7),
(7, 7, 'دپارتمان', '', 0, 2),
(8, 8, 'دپارتمان', '', 0, 3),
(11, 11, 'مجموعه گالری', '', 0, 1),
(12, 12, 'مجموعه گالری', '', 0, 1),
(13, 13, 'nav_menu', '', 0, 2),
(16, 8, 'department', '', 0, 5),
(17, 7, 'department', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_usermeta`
--

CREATE TABLE IF NOT EXISTS `kbtn_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `kbtn_usermeta`
--

INSERT INTO `kbtn_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'kbtn_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'kbtn_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'kbtn_dashboard_quick_press_last_post_id', '84'),
(15, 1, 'kbtn_user-settings', 'editor=html&imgsize=thumbnail'),
(16, 1, 'kbtn_user-settings-time', '1356256929'),
(17, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:8:"add-post";i:1;s:14:"add-marketting";i:2;s:11:"add-gallery";i:3;s:12:"add-services";i:4;s:12:"add-articles";i:5;s:12:"add-post_tag";i:6;s:27:"add-مجموعه گالری";}'),
(19, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(20, 1, 'nav_menu_recently_edited', '13'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";i:2;s:9:"authordiv";i:3;s:12:"revisionsdiv";}'),
(23, 1, 'closedpostboxes_coments', 'a:0:{}'),
(24, 1, 'metaboxhidden_coments', 'a:1:{i:0;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `kbtn_users`
--

CREATE TABLE IF NOT EXISTS `kbtn_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kbtn_users`
--

INSERT INTO `kbtn_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BWamfDvMyFfiiaCIWDdTCzOvijkCLu0', 'admin', 'mahlad365@gmail.com', '', '2012-11-14 07:08:55', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
