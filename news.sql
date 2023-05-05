-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2020 at 11:10 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(1, 'Programming and Tech', 3),
(2, 'Content Writing', 2),
(3, 'Designs', 0),
(4, 'Blogging', 2),
(5, 'Virtual Assistance', 0),
(7, 'Freelancing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(10, 'I am post 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue velit erat, non euismod urna aliquam quis. Nam consequat leo nec suscipit eleifend. Aliquam malesuada ex sit amet leo blandit, quis gravida lectus lacinia. Nulla id tincidunt dolor, a rhoncus arcu. Duis erat turpis, ultrices id viverra nec, pellentesque sit amet massa. Donec ac tristique nisi. Ut eu mollis massa, eu dictum leo. Pellentesque eu est malesuada erat aliquam posuere. In quis tellus efficitur, imperdiet nisl in, convallis nisl.\r\n\r\nAliquam vitae ipsum quis eros fringilla bibendum. Nulla ac sagittis lectus, in lacinia lectus. Quisque vitae est quis massa convallis ultricies. In orci quam, facilisis ut venenatis vel, imperdiet eget lacus. Nullam porttitor augue massa, sed laoreet nulla laoreet at. Donec quis mauris urna. Aenean in velit tincidunt, elementum nunc in, malesuada orci. Integer faucibus ultrices elit, et efficitur ex luctus malesuada. Praesent ut magna non turpis tempus scelerisque. Pellentesque bibendum non dolor tincidunt porttitor. Cras ornare massa ullamcorper odio rhoncus, ut mattis mi euismod. Morbi non ex vitae orci ornare vehicula quis eget mauris.', '2', '31 Aug, 2020', 1, 'BE YOUR FRONT END DEVELOPER.png'),
(9, 'I am Admin of this site', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue velit erat, non euismod urna aliquam quis. Nam consequat leo nec suscipit eleifend. Aliquam malesuada ex sit amet leo blandit, quis gravida lectus lacinia. Nulla id tincidunt dolor, a rhoncus arcu. Duis erat turpis, ultrices id viverra nec, pellentesque sit amet massa. Donec ac tristique nisi. Ut eu mollis massa, eu dictum leo. Pellentesque eu est malesuada erat aliquam posuere. In quis tellus efficitur, imperdiet nisl in, convallis nisl.\r\n\r\nAliquam vitae ipsum quis eros fringilla bibendum. Nulla ac sagittis lectus, in lacinia lectus. Quisque vitae est quis massa convallis ultricies. In orci quam, facilisis ut venenatis vel, imperdiet eget lacus. Nullam porttitor augue massa, sed laoreet nulla laoreet at. Donec quis mauris urna. Aenean in velit tincidunt, elementum nunc in, malesuada orci. Integer faucibus ultrices elit, et efficitur ex luctus malesuada. Praesent ut magna non turpis tempus scelerisque. Pellentesque bibendum non dolor tincidunt porttitor. Cras ornare massa ullamcorper odio rhoncus, ut mattis mi euismod. Morbi non ex vitae orci ornare vehicula quis eget mauris.', '4', '31 Aug, 2020', 10, 'Windows-10-Wallpapers-21-3840-x-2160.jpg'),
(11, 'Freelancing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue velit erat, non euismod urna aliquam quis. Nam consequat leo nec suscipit eleifend. Aliquam malesuada ex sit amet leo blandit, quis gravida lectus lacinia. Nulla id tincidunt dolor, a rhoncus arcu. Duis erat turpis, ultrices id viverra nec, pellentesque sit amet massa. Donec ac tristique nisi. Ut eu mollis massa, eu dictum leo. Pellentesque eu est malesuada erat aliquam posuere. In quis tellus efficitur, imperdiet nisl in, convallis nisl.\r\n\r\nAliquam vitae ipsum quis eros fringilla bibendum. Nulla ac sagittis lectus, in lacinia lectus. Quisque vitae est quis massa convallis ultricies. In orci quam, facilisis ut venenatis vel, imperdiet eget lacus. Nullam porttitor augue massa, sed laoreet nulla laoreet at. Donec quis mauris urna. Aenean in velit tincidunt, elementum nunc in, malesuada orci. Integer faucibus ultrices elit, et efficitur ex luctus malesuada. Praesent ut magna non turpis tempus scelerisque. Pellentesque bibendum non dolor tincidunt porttitor. Cras ornare massa ullamcorper odio rhoncus, ut mattis mi euismod. Morbi non ex vitae orci ornare vehicula quis eget mauris.', '7', '31 Aug, 2020', 1, 'hqdefault.jpg'),
(12, 'I am Abdullah Javed', 'rem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue velit erat, non euismod urna aliquam quis. Nam consequat leo nec suscipit eleifend. Aliquam malesuada ex sit amet leo blandit, quis gravida lectus lacinia. Nulla id tincidunt dolor, a rhoncus arcu. Duis erat turpis, ultrices id viverra nec, pellentesque sit amet massa. Donec ac tristique nisi. Ut eu mollis massa, eu dictum leo. Pellentesque eu est malesuada erat aliquam posuere. In quis tellus efficitur, imperdiet nisl in, convallis nisl. Aliquam vitae ipsum quis eros fringilla bibendum. Nulla ac sagittis lectus, in lacinia lectus. Quisque vitae est quis massa convallis ultricies. In orci quam, facilisis ut venenatis vel, imperdiet eget lacus. Nullam porttitor augue massa, sed laoreet nulla laoreet at. Donec quis mauris urna. Aenean in velit tincidunt, elementum nunc in, malesuada orci. Integer faucibus ultrices elit, et efficitu', '1', '31 Aug, 2020', 1, 'abdullah.jpg'),
(17, 'I am Stranger', 'uam quis. Nam consequat leo nec suscipit eleifend. Aliquam malesuada ex sit amet leo blandit, quis gravida lectus lacinia. Nulla id tincidunt dolor, a rhoncus arcu. Duis erat turpis, ultrices id viverra nec, pellentesque sit amet massa. Donec ac tristique nisi. Ut eu mollis massa, eu dictum leo. Pellentesque eu est malesuada erat aliquam posuere. In quis tellus efficitur, imperdiet nisl in, convallis nisl. Aliquam vitae ipsum quis eros fringilla bibendum. Nulla ac sagittis lectus, in lacinia lectus. Quisque vitae est quis massa convallis ultricies. In orci quam, facilisis ut venenatis vel, imperdiet eget lacus. Nullam porttitor augue massa, sed laoreet nulla laoreet at. Donec quis mauris urna. Aenean in velit tincidunt, elementum nunc in, malesuada orci. Integer faucibus ultrices elit, et efficitur ex luctus malesuada. Praesent ut magna non turpis tempus scelerisque. Pellentesque bibendum non dolor tincidunt porttitor. Cras ornare massa ullamcorper odio rhoncus, ut mattis mi euismod. Morbi non ex vitae orci ornare vehicula quis eget mauris.', '4', '02 Sep, 2020', 1, 'logo.png'),
(16, 'I am New Post 2', 'quis. Nam consequat leo nec suscipit eleifend. Aliquam malesuada ex sit amet leo blandit, quis gravida lectus lacinia. Nulla id tincidunt dolor, a rhoncus arcu. Duis erat turpis, ultrices id viverra nec, pellentesque sit amet massa. Donec ac tristique nisi. Ut eu mollis massa, eu dictum leo. Pellentesque eu est malesuada erat aliquam posuere. In quis tellus efficitur, imperdiet nisl in, convallis nisl. Aliquam vitae ipsum quis eros fringilla bibendum. Nulla ac sagittis lectus, in lacinia lectus. Quisque vitae est quis massa convallis ultricies. In orci quam, facilisis ut venenatis vel, imperdiet eget lacus. Nullam porttitor augue massa, sed laoreet nulla laoreet at. Donec quis mauris urna. Aenean in velit tincidunt, elementum nunc in, malesuada orci. Integer faucibus ultrices elit, et efficitu', '1', '02 Sep, 2020', 1, 'Abdullah Javed-min.jpg'),
(18, 'Freelancing 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue velit erat, non euismod urna aliquam quis. Nam consequat leo nec suscipit eleifend. Aliquam malesuada ex sit amet leo blandit, quis gravida lectus lacinia. Nulla id tincidunt dolor, a rhoncus arcu. Duis erat turpis, ultrices id viverra nec, pellentesque sit amet massa. Donec ac tristique nisi. Ut eu mollis massa, eu dictum leo. Pellentesque eu est malesuada erat aliquam posuere. In quis tellus efficitur, imperdiet nisl in, convallis nisl. Aliquam vitae ipsum quis eros fringilla bibendum. Nulla ac sagittis lectus, in lacinia lectus. Quisque vitae est quis massa convallis ultricies. In orci quam, facilisis ut venenatis vel, imperdiet eget lacus. Nullam porttitor augue massa, sed laoreet nulla laoreet at. Donec quis mauris urna. Aenean in velit tincidunt, elementum nunc in, malesuada orci. Integer faucibus ultrices elit, et efficitur ex luctus malesuada. Praesent ut magna non turpis tempus scelerisque. Pellentesque bibendum non dolor tincidunt porttitor. Cras ornare massa ullamcorper odio rhoncus, ut mattis mi euismod. Morbi non ex vitae orci ornare vehicula quis eget mauris.', '7', '02 Sep, 2020', 1, 'BE YOUR FRONT END DEVELOPER.png'),
(21, 'I am Awais Yousaf', 'I am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais YousafI am Awais Yousaf', '1', '05 Sep, 2020', 2, 'school management system..png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(1, 'Abdullah', 'Javed', 'abdullah', 'd93ec75bca4b7ef88df5a6c591654422', 1),
(2, 'Awais ', 'Yousaf', 'awaisyousaf', 'bf8f8bc114068709aafc9fa41c3d4b44', 0),
(10, 'Administrator', 'Account', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(8, 'Iqra', 'Malik', 'iqra', '3f10febeab0ecca51a4589e0bf5b1894', 1),
(9, 'Sobia', 'Javed', 'sobia', '6ff5097eb772bb8f4325474625a6c58a', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
