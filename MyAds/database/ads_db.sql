-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16-01-07 04:23
-- 서버 버전: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ads_db`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_banner`
--

CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `Id` int(10) NOT NULL,
  `Title` varchar(300) NOT NULL,
  `Img` text NOT NULL,
  `Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_banner_sub`
--

CREATE TABLE IF NOT EXISTS `tbl_banner_sub` (
  `subId` int(10) NOT NULL,
  `Id` int(10) NOT NULL,
  `Title` varchar(300) NOT NULL,
  `Img` text NOT NULL,
  `Active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `CateId` int(10) NOT NULL,
  `Ico_class_name` varchar(100) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Description` text NOT NULL,
  `Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_category`
--

INSERT INTO `tbl_category` (`CateId`, `Ico_class_name`, `Name`, `Description`, `Active`) VALUES
(1, 'womenclothes', 'Clothing', 'no', 1),
(2, 'computeroffice', 'Computer & Office', 'no', 1),
(3, 'telephone', 'Phone & Accessories', 'no', 1),
(4, 'consummerelectronic', 'Electronics', 'no', 1),
(5, 'jewelery', 'Jewelries & Watches', 'no', 1),
(6, 'bagsandshoes', 'Bags & Shoes', 'no', 1),
(7, 'healthbeauty', 'Health & Beauty', 'no', 1),
(8, 'toykidbaby', 'Toys, Kid, & Babies', 'no', 1),
(9, 'sportoudoor', 'Sports & Outdoors', 'no', 1),
(10, 'homeimproment', 'Home & Equipment', 'no', 1),
(11, 'automobile', 'Cars, Motorbike, & Bicycle', 'no', 1),
(12, 'realestates', 'Real Estates', 'no', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_company`
--

CREATE TABLE IF NOT EXISTS `tbl_company` (
  `ComId` int(10) NOT NULL,
  `ComName` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Fax` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `Active` int(1) NOT NULL,
  PRIMARY KEY (`ComId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_company`
--

INSERT INTO `tbl_company` (`ComId`, `ComName`, `Type`, `Fax`, `Email`, `Address`, `Active`) VALUES
(1, 'Men''s Collection', 'Sale', '023324512', 'mencollecting@gmail.com', 'Phnom Penh', 1),
(2, 'New Fashion Men', 'Trade', '023456789', 'nfm@yahoo.com', 'Siem Reip', 1),
(3, '', '', '', '', '', 1),
(4, '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_file`
--

CREATE TABLE IF NOT EXISTS `tbl_file` (
  `seq_file` int(10) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(500) NOT NULL,
  `file_url` varchar(500) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`seq_file`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_image`
--

CREATE TABLE IF NOT EXISTS `tbl_image` (
  `ImgId` int(10) NOT NULL,
  `PostingId` int(10) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `order` int(2) DEFAULT NULL,
  PRIMARY KEY (`ImgId`,`PostingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_image`
--

INSERT INTO `tbl_image` (`ImgId`, `PostingId`, `Image`, `order`) VALUES
(1, 1, 'Desert.jpg', 1),
(1, 2, 'Desert.jpg', 1),
(1, 3, 'Desert.jpg', 1),
(1, 4, 'Desert.jpg', 1),
(1, 5, 'Desert.jpg', 1),
(1, 6, 'Desert.jpg', 1),
(1, 7, 'Desert.jpg', 1),
(1, 8, 'Desert.jpg', 1),
(1, 9, 'Desert.jpg', 1),
(1, 10, 'Desert.jpg', 1),
(2, 1, 'TB2_iIYdVXXXXX5XpXXXXXXXXXX-902443276.jpg', 2),
(2, 2, 'HTB1vUO3IFXXXXaZaXXXq6xXFXXX0.jpg', 2),
(2, 3, '3.PNG', 2),
(2, 4, '6 - Copy (2).PNG', 2),
(2, 5, '11.PNG', 2),
(2, 6, 'TB28W3ygVXXXXc9XXXXXXXXXXXX_!!797879567.jpg', 2),
(2, 7, 'TB2G8pFeFXXXXb9XpXXXXXXXXXX-23162195.jpg', 2),
(2, 10, 'Desert.jpg', 2),
(3, 1, 'TB2aFtPbVXXXXaVXpXXXXXXXXXX-87461362.jpg', 3),
(3, 2, 'TB2.Ds3fFXXXXc6XXXXXXXXXXXX_!!883048390.jpg', 3),
(3, 3, '4 - Copy (2).PNG', 3),
(3, 4, '6 - Copy.PNG', 3),
(3, 5, '12.PNG', 3),
(3, 6, 'TB226otgVXXXXXWXpXXXXXXXXXX_!!797879567.jpg', 3),
(3, 7, 'TB2gDQNgVXXXXXzXXXXXXXXXXXX_!!797879567.jpg', 3),
(3, 10, 'Hydrangeas.jpg', 3),
(4, 1, 'TB2AhVjfpXXXXccXXXXXXXXXXXX_!!2451771906.jpg', 4),
(4, 2, 'TB2_aQ8fXXXXXaoXpXXXXXXXXXX_!!2451771906.jpg', 4),
(4, 3, '4 - Copy.PNG', 4),
(4, 5, '13.PNG', 4),
(4, 7, 'TB2GtZygVXXXXXbXpXXXXXXXXXX_!!797879567.jpg', 4),
(5, 1, 'TB2ax.zgVXXXXcKXXXXXXXXXXXX_!!797879567.jpg', 5),
(5, 2, 'TB2_iIYdVXXXXX5XpXXXXXXXXXX-902443276.jpg', 5),
(6, 1, 'TB2aXJhfpXXXXcrXXXXXXXXXXXX_!!2451771906.jpg', 6),
(6, 2, 'TB2aFtPbVXXXXaVXpXXXXXXXXXX-87461362.jpg', 6),
(7, 1, 'TB2b71vepXXXXXbXpXXXXXXXXXX_!!2386738791.jpg', 7),
(8, 1, 'TB2BvcZfFXXXXX9XpXXXXXXXXXX_!!883048390.jpg', 8);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_location`
--

CREATE TABLE IF NOT EXISTS `tbl_location` (
  `Id` int(10) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Description` text NOT NULL,
  `Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_member`
--

CREATE TABLE IF NOT EXISTS `tbl_member` (
  `MemId` int(10) unsigned NOT NULL,
  `Name` varchar(100) NOT NULL,
  `RealName` varchar(100) NOT NULL,
  `ComId` int(10) NOT NULL,
  `Sex` varchar(7) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `Active` int(1) NOT NULL,
  PRIMARY KEY (`MemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_member`
--

INSERT INTO `tbl_member` (`MemId`, `Name`, `RealName`, `ComId`, `Sex`, `Date`, `Password`, `Email`, `Phone`, `Address`, `Active`) VALUES
(1, 'senghong', 'Nob Senghong', 1, 'Male', '2015/12/08', '202cb962ac59075b964b07152d234b70', 'senghongweb@gmail.com', '070372639', 'Takeo', 1),
(2, 'chenda', 'Chon Chenda', 1, 'Female', '2015/12/08', '202cb962ac59075b964b07152d234b70', 'chenda@gmail.com', '090898797', 'Phnom Penh', 1),
(3, 'Tola', 'Tola', 2, 'Male', '2015/12/08', '202cb962ac59075b964b07152d234b70', 'tola@gmail.com', '099273840', 'Preylovea', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_position`
--

CREATE TABLE IF NOT EXISTS `tbl_position` (
  `PositId` int(10) NOT NULL,
  `RoleId` int(10) NOT NULL,
  `PositAs` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Active` int(1) NOT NULL,
  PRIMARY KEY (`PositId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_position`
--

INSERT INTO `tbl_position` (`PositId`, `RoleId`, `PositAs`, `Description`, `Active`) VALUES
(1, 2, 'Developer', 'Test', 1),
(2, 1, 'Administor', 'Now', 1),
(3, 3, 'Accountant', 'TestNew', 1),
(4, 4, 'Marketing', 'test', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_posting`
--

CREATE TABLE IF NOT EXISTS `tbl_posting` (
  `PostingId` int(10) NOT NULL,
  `MemId` int(10) NOT NULL,
  `ProductName` varchar(200) NOT NULL,
  `KeyNotice` varchar(500) NOT NULL,
  `SubCateId` int(10) NOT NULL,
  `Price` int(11) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `Description` text NOT NULL,
  `Active` int(1) NOT NULL,
  `PostDate` varchar(50) NOT NULL,
  `Discount` varchar(10) NOT NULL,
  PRIMARY KEY (`PostingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_posting`
--

INSERT INTO `tbl_posting` (`PostingId`, `MemId`, `ProductName`, `KeyNotice`, `SubCateId`, `Price`, `Phone`, `Address`, `Description`, `Active`, `PostDate`, `Discount`) VALUES
(1, 1, 'T-Shirt', 'Fashion', 1, 23, '450439', 'Takeo', 'Good', 1, '29122015', ''),
(2, 1, 'Jean', 'Old', 2, 30, '0506945964', 'Phone', 'Dddd', 1, '25122015', ''),
(3, 1, 'klwej', 'kalsdfa', 1, 123, '123456', 'kjksada', 'kajsldfsakdlf', 1, '27122015', ''),
(4, 1, 'klwejfldsa', 'aksdjfjask', 2, 11234, '1234', 'lksadjfkasfdajksdfsakd', 'jkasdfksadf', 0, '27122015', ''),
(5, 1, 'ksjfaf', '12klsjdf', 2, 123, '1232099', 'klasdjfsadf', 'kjsdflasdf', 0, '27122015', ''),
(6, 1, 'lsakdjf aklsdf', 'klasdf', 2, 123, 'lkasjdflkasdf', 'klasdjfasdf', 'klasdjfaskdlf', 0, '27122015', ''),
(7, 1, 'klasdf', 'kalsdf', 2, 123, '12345', 'kjsadaakjsdf', 'sajkdfas', 0, '26122015', ''),
(8, 1, 'Last', 'Ke', 2, 21, '04959659', 'Pontong', 'kk', 0, '27122015', ''),
(9, 1, 'sadfas', 'safasfd', 5, 1223, 'sdfas', 'ASDasd', 'sadfsad', 0, '27122015', ''),
(10, 1, 'asddfa', 'asd', 5, 124, '12345', 'ssdf', 'sadsad', 0, '03012016', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_province`
--

CREATE TABLE IF NOT EXISTS `tbl_province` (
  `ProvId` int(10) NOT NULL,
  `ProvName` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Active` int(1) NOT NULL,
  PRIMARY KEY (`ProvId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_province`
--

INSERT INTO `tbl_province` (`ProvId`, `ProvName`, `Description`, `Active`) VALUES
(1, 'Banteay Meanchey', '', 1),
(2, 'Battambang', '', 1),
(3, 'Kampong Cham', '', 1),
(4, 'Tbong Khmom', '', 1),
(5, 'Kampong Chhnang', '', 1),
(6, 'Kampong Speu', '', 1),
(7, 'Kampong Thom', '', 1),
(8, 'Kampot', '', 1),
(9, 'Kandal', '', 1),
(10, 'Kep', '', 1),
(11, 'Koh Kong', '', 1),
(12, 'Kratie', '', 1),
(13, 'Mondolkiri', '', 1),
(14, 'Pailin', '', 1),
(15, 'Phnom Penh', '', 1),
(16, 'Preah Vihear', '', 1),
(17, 'Prey Veng', '', 1),
(18, 'Pursat', '', 1),
(19, 'Ratanakiri', '', 1),
(20, 'Siem Riep', '', 1),
(21, 'Sihanoukville', '', 1),
(22, 'Stung Treng', '', 1),
(23, 'Svay Rieng', '', 1),
(24, 'Takeo', '', 1),
(25, 'Udar Meanchey', '', 1),
(26, 'Test', 'Dc', 1),
(27, 'Senghong', 'Test', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_role`
--

CREATE TABLE IF NOT EXISTS `tbl_role` (
  `RoleId` int(10) NOT NULL,
  `Role` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Active` int(1) NOT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_role`
--

INSERT INTO `tbl_role` (`RoleId`, `Role`, `Description`, `Active`) VALUES
(1, 'Role1', 'New Role', 1),
(2, 'Role2', 'Test', 1),
(3, 'Role3', 'Tenst', 1),
(4, 'Role4', 'test', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_sub_category`
--

CREATE TABLE IF NOT EXISTS `tbl_sub_category` (
  `SubCateId` int(10) NOT NULL,
  `CateId` int(10) NOT NULL,
  `Cls_Icon` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Active` int(1) NOT NULL,
  PRIMARY KEY (`SubCateId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`SubCateId`, `CateId`, `Cls_Icon`, `Name`, `Description`, `Active`) VALUES
(1, 1, 'femal', 'Women''s Clothing', 'no', 1),
(2, 1, 'men', 'Men''s Clothing', 'no', 1),
(3, 1, 'baby', 'Baby''s Clothing', 'no', 1),
(4, 2, 'labtop', 'Laptops', 'no', 1),
(5, 2, 'desktop', 'Desktops', 'no', 1),
(6, 2, 'accessary', 'Accessaries & Parts', 'no', 1),
(7, 2, 'storage', 'Storage Devices', 'no', 1),
(8, 3, 'mobile', 'Mobile Phones', 'no', 1),
(9, 3, 'tablet', 'Tablets', 'no', 1),
(10, 3, 'phone_acc', 'Phone Accessaries & Partes', 'no', 1),
(11, 4, 'office_elec', 'Office Electronics', 'no', 1),
(12, 4, 'accessary_elec', 'Accessaries & Parts', 'no', 1),
(13, 4, 'camera', 'Camera & Photos', 'no', 1),
(14, 4, 'music_dev', 'Music Devices & Instruments', 'no', 1),
(15, 4, 'hom_sec', 'Home & Security', 'no', 1),
(16, 5, 'jewelry', 'Jewelries', 'no', 1),
(17, 5, 'watch', 'Watches', 'no', 1),
(18, 6, 'women_bag', 'Women Lugages & Bags', 'no', 1),
(19, 6, 'men_bag', 'Men Lugages & Bags', 'no', 1),
(20, 6, 'school_bag', 'School & Travel Bags', 'no', 1),
(21, 6, 'women_shoes', 'Women''s Shoes', 'no', 1),
(22, 6, 'men_shoes', 'Men''s Shoes', 'no', 1),
(23, 7, 'makeup', 'Make Up', 'no', 1),
(24, 7, 'hair_acc', 'Hair & Accessaries', 'no', 1),
(25, 7, 'skin_care', 'Skin Care', 'no', 1),
(26, 7, 'nail_tool', 'Nails & Tools', 'no', 1),
(27, 8, 'toy_boy', 'Toys & Hobies', 'no', 1),
(28, 8, 'toy_girl', 'Baby Girl Care', 'no', 1),
(29, 8, 'baby_care', 'Baby Boy Care', 'no', 1),
(30, 9, 'sport_clothes', 'Sports'' Clothes & Shoes', 'no', 1),
(31, 9, 'outdoor_sport', 'Outdoor Sports', 'no', 1),
(32, 9, 'sport_care', 'Sport Care', 'no', 1),
(33, 10, 'hom_suplier', 'Home Decore & Suppliers', 'no', 1),
(34, 10, 'lighting', 'Lighting', 'no', 1),
(35, 10, 'sec_protection', 'Security Protections', 'no', 1),
(36, 10, 'equipment', 'Equipments', 'no', 1),
(37, 11, 'car', 'Cares for Sale & Rent', 'no', 1),
(38, 11, 'motor', 'Motobiks for Sale & Rent', 'no', 1),
(39, 11, 'bike', 'Bicycles for Sale', 'no', 1),
(40, 11, 'tools', 'Tools, Parts, & Maintainances', 'no', 1),
(41, 12, 'office', 'Offices for Sale & Rent', 'no', 1),
(42, 12, 'appartment', 'Appartments for Sale', 'no', 1),
(43, 12, 'condo', 'Condos for Sale & Rent', 'no', 1),
(44, 12, 'villas', 'Villas for Sale & Rent', 'no', 1),
(45, 12, 'land', 'Lands for Sale & Rent', 'no', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `Id` int(10) unsigned NOT NULL,
  `PositId` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Sex` varchar(7) NOT NULL,
  `Photo` varchar(500) NOT NULL,
  `Dob` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Active` int(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tbl_user`
--

INSERT INTO `tbl_user` (`Id`, `PositId`, `Name`, `Sex`, `Photo`, `Dob`, `Password`, `Email`, `Phone`, `Address`, `Active`) VALUES
(1, 2, 'senghong', '1', '', '01/09/1990', '202cb962ac59075b964b07152d234b70', 'senghongweb@gmail.com', '070372639', 'Takeo', 1),
(2, 3, 'Chenda', '0', '', '05/11/1994', '394e7db687c7b5a212541c28fe6ea1fe', 'chend@gmail.com', '070372638', 'Phnom Penh', 1),
(3, 1, 'Song han', '0', 'Koala.jpg', '15/10/1997', '289dff07669d7a23de0ef88d2f7129e7', 'songhan@gmail.com', '070372639', 'Takeo', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
