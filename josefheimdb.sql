-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 03:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `josefheimdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` varchar(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(3, 'Eiron', 'AdminEiron', '9672404182', 'esmaningat@mymail.mapua.edu.ph', '4edeae80f9c172ba2a9a396848a022af', '2023-05-03 01:49:02'),
(5, 'Steve Feria', 'Steve', '09257395671', 'svpcf@gmail.com', 'dea53b08f6dbd3731b9beec268ec8b9c', '2023-05-03 13:34:14'),
(7, 'Mark Arceo', 'Mark', '09456728462', 'masarceo@gmail.com', 'c0326e2e14e4ffd7e634f28e7d918f52', '2023-05-03 13:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` varchar(11) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(6, 'jose angelo', 'apdian', 'jamapdian@gmail.com', '0923716583', 'I would like to donate in your foundation. who can i contact?', '2023-05-03 12:55:54', 1),
(7, 'eiron', 'maningat', 'esmaningat@gmail.com', '0923734892', 'greetings! i would like to endorse someone who would like to be a part of your foundation. reach me out for details and requirements. thank you!', '2023-05-03 12:57:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: center;\"><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0cm; color: rgb(0, 0, 0);\"><font size=\"3\" style=\"\" face=\"helvetica\">The Josefheim Foundation is a non-profit organization that strives to make a positive impact on the lives of people with disabilities and elderly individuals in the Philippines. The foundation was founded by Rev. Fr. Uldarico “Dari” Dioquino and the late Rev. Msgr. Sabino Vengco, who wanted to provide care and support to those who were struggling with disabilities and help them to live a better life.&nbsp;<span style=\"font-weight: initial;\">The foundation provides a range of services, including residential care, mental care, and medical assistance. They have a 2-hectare compound located in Sitio Labong, Bugarin, Halayhayin, Pililla, Rizal, Philippines where they currently take care of 25 individuals, with plans to grow to 50 by the end of the year. The foundation offers a safe and caring environment for individuals with disabilities and elderly to live in.&nbsp;</span><span style=\"font-weight: initial;\">In addition to their residential care services, the Josefheim Foundation also provides mental care to help residents develop and strengthen their emotional, spiritual, and psychological well-being. The foundation also has a medical clinic that offers free medical services to the local community, and they conduct outreach programs to educate people about disabilities and promote awareness and understanding.&nbsp;</span><span style=\"font-weight: initial;\">The Josefheim Foundation is committed to improving the quality of life for individuals with disabilities in the Philippines. Through their various services and programs, they are helping to create a more inclusive society where everyone can live with dignity and respect. By supporting the Josefheim Foundation, you are helping to make a positive impact on the lives of those who need it the most.</span></font></p><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0cm; font-size: 12pt; font-family: Calibri, sans-serif; color: rgb(0, 0, 0);\"><o:p></o:p></p></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Sitio Labong, Bugarin, Halayhayin, Pililla, Rizal 1910 Rizal, Philippines', 'josefheimph@gmail.com', '09173093155', NULL, '10:30 am to 7:30 pm'),
(3, 'rules', 'Rules', '<div class=\"wpb_row vc_row-fluid vc_custom_1415091130045\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\"><div class=\"vc_col-sm-12 wpb_column column_container\" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><div class=\"wpb_text_column wpb_content_element \" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><div style=\"\"><font style=\"\" size=\"4\" face=\"helvetica\"><br></font></div></div></div></div></div></div><div class=\"wpb_row vc_row-fluid vc_custom_1415091139991\" style=\"box-sizing: inherit;\"><div class=\"vc_col-sm-12 wpb_column column_container\" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><div id=\"section-14-1416982836\" class=\" dt-section-head left size-default\" style=\"box-sizing: inherit;\"><h4 class=\"section-main-title\" style=\"text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 600;\"><font face=\"helvetica\" style=\"\" color=\"#000000\" size=\"5\">For Visitors</font></h4><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px;\"><li style=\"text-align: left; box-sizing: inherit;\"><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><font size=\"4\" face=\"helvetica\">Visitors must sign in and out of the facility at the front desk.</font></p></li><li style=\"color: rgb(153, 153, 153); text-align: left; box-sizing: inherit;\"><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><font size=\"4\" face=\"helvetica\">All visitors must wear a visitor badge while in the facility.<o:p></o:p></font></p></li><li style=\"color: rgb(153, 153, 153); text-align: left; box-sizing: inherit;\"><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><font size=\"4\" face=\"helvetica\">Visiting hours are from 9:00 AM to 8:00 PM unless prior arrangements have been made with the administration.<o:p></o:p></font></p></li><li style=\"color: rgb(153, 153, 153); text-align: left; box-sizing: inherit;\"><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><font size=\"4\" face=\"helvetica\">Visitors should not bring any pets or animals into the facility.</font></p></li></ul><div style=\"\"><font color=\"#000000\" size=\"4\" face=\"helvetica\"><br></font></div><div style=\"\"><h4 class=\"section-main-title\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 600;\"><font face=\"helvetica\" style=\"\"><br class=\"Apple-interchange-newline\"><font color=\"#000000\" style=\"\" size=\"5\">For Members</font></font></h4><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; padding: 0px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: inherit; text-align: left;\"><p class=\"MsoNormal\" style=\"margin: 0cm;\"><font face=\"helvetica\" color=\"#000000\" size=\"5\"><o:p></o:p></font></p><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><span style=\"font-weight: initial;\"><span style=\"font-weight: initial;\"><font face=\"helvetica\" size=\"4\">Members must adhere to the daily schedule and routine of the facility.</font></span></span></p></li><li style=\"color: rgb(153, 153, 153); box-sizing: inherit; text-align: left;\"><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><font face=\"helvetica\" size=\"4\"><o:p></o:p></font></p><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><span style=\"font-weight: initial;\"><span style=\"font-weight: initial;\"><font face=\"helvetica\" size=\"4\">Members must follow the rules and regulations of the facility and any instructions given by the staff.</font></span></span></p></li><li style=\"color: rgb(153, 153, 153); box-sizing: inherit; text-align: left;\"><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><font face=\"helvetica\" size=\"4\"><span style=\"font-weight: initial;\"></span></font></p><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><font face=\"helvetica\" size=\"4\">Members should respect the privacy and personal belongings of other residents.<o:p></o:p></font></p></li><li style=\"color: rgb(153, 153, 153); box-sizing: inherit; text-align: left;\"><p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0);\"><font face=\"helvetica\" style=\"\" size=\"4\">Members are not allowed to bring any weapons, alcohol, or drugs into the facility.</font><font face=\"Calibri, sans-serif\" style=\"font-size: 12pt;\"><o:p></o:p></font></p></li></ul></div></div></div></div></div>', NULL, NULL, NULL, ''),
(4, 'eligibility', 'Eligibility', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px;\"><li style=\"box-sizing: inherit;\"><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0cm;\"><font color=\"#000000\" face=\"helvetica\" size=\"4\">The Josefheim Foundation is an organization that provides care and support to individuals who have been abandoned or are in need of assistance, such as street dwellers, children with special needs, people with mental disabilities, and elderly people who are alone. The foundation is open to anyone who needs their help and is committed to improving the lives of all those under their care.&nbsp;</font><span style=\"color: rgb(0, 0, 0); font-family: helvetica; font-size: large; font-weight: initial;\">The foundation believes in creating a more inclusive society where everyone is treated with dignity and respect, irrespective of their background or circumstances. They strive to make a positive impact on the lives of those who have been overlooked and marginalized by society.&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: helvetica; font-size: large; font-weight: initial;\">In essence, the Josefheim Foundation is dedicated to helping people in need and providing them with the support they require to lead better lives. They are committed to making a difference in the lives of those who may have been forgotten or neglected by society, and they aim to create a more inclusive and caring community for all.</span></p></li></ul>', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblseniorcitizen`
--

CREATE TABLE `tblseniorcitizen` (
  `ID` int(5) NOT NULL,
  `RegistrationNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `ContactNumber` varchar(15) DEFAULT NULL,
  `MedicationAllergies` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(250) DEFAULT NULL,
  `EmergencyAddress` mediumtext DEFAULT NULL,
  `EmergencyContactnumber` varchar(11) DEFAULT NULL,
  `AddedBy` varchar(100) DEFAULT NULL,
  `RegitrationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblseniorcitizen`
--

INSERT INTO `tblseniorcitizen` (`ID`, `RegistrationNumber`, `Name`, `DateofBirth`, `ContactNumber`, `MedicationAllergies`, `ProfilePic`, `EmergencyAddress`, `EmergencyContactnumber`, `AddedBy`, `RegitrationDate`) VALUES
(12, 369684257, 'Jomari Dela Cruz', '1964-02-03', '09213452321', 'Amlodipine 5mg, Losartan 50mg', 'ce9385d7e624e5b9583bf8a87fc508631683116677.jpg', '123 Punongbakal St. Maragondon Village Barangay Ginebra, Tawi-tawi City', '9526847461', 'admin', '2023-05-03 12:24:37'),
(13, 707074528, 'Analyn Batungbakal', '1969-03-07', '09242317892', 'Asthma - Salbutamol', '7fdc1a630c238af0815181f9faa190f51683117474.jpg', '236 Maya St. Saint Carlos Village Barangay Dos Por Dos, Negros Occidental', '09242317892', 'admin', '2023-05-03 12:37:54'),
(14, 563689452, 'Josephine Ramos', '1966-01-01', '09562811907', 'Hypertension - Amlodipine, High Sugar - Metformin', 'e354ae6c1bb1ae239f7c84d0e9a716f31683117901.jpg', '235 Rizal St. Pablo Ocampo Village Barangay Magnolia, Quezon City', '09562811920', 'admin', '2023-05-03 12:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(5) NOT NULL,
  `ServiceTitle` varchar(250) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceTitle`, `ServiceDescription`, `CreationDate`) VALUES
(1, 'RESIDENTIAL CARE ', '<p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0); line-height: 15pt;\"><font face=\"helvetica\" style=\"\" size=\"4\">The foundation provides a safe and caring environment where individuals with disabilities and elderly individuals can live comfortably. They have a 2-hectare compound located in Sitio Labong, Bugarin, Halayhayin, Pililla, Rizal, Philippines where they currently take care of 25 individuals, with plans to grow to 50 by the end of the year. The foundation ensures that their residents are provided with nutritious meals, comfortable living quarters, and personalized care to meet their individual needs.</font><font face=\"inherit, serif\" style=\"font-size: 11.5pt;\"><o:p></o:p></font></p>', '2022-05-26 06:22:10'),
(2, 'MENTAL CARE', '<p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0); line-height: 15pt;\"><font face=\"helvetica\" style=\"\" size=\"4\">&nbsp;The Josefheim Foundation provides mental care services to help residents develop and strengthen their emotional, spiritual, and psychological well-being. The foundation has a team of professionals who provide counseling and therapy sessions to help their residents cope with emotional and psychological challenges.</font><font face=\"inherit, serif\" style=\"font-size: 11.5pt;\"><o:p></o:p></font></p>', '2022-05-26 06:22:52'),
(3, 'MEDICAL ASSISTANCE ', '<p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0); line-height: 15pt;\"><font face=\"helvetica\" style=\"\" size=\"4\">The foundation has a medical clinic that offers free medical services to the local community. They provide medical assistance to individuals with disabilities and elderly individuals who require medical attention. The clinic is equipped with modern medical equipment, and they have trained medical professionals who provide quality medical services to their patients.</font><font face=\"inherit, serif\" style=\"font-size: 11.5pt;\"><o:p></o:p></font></p>', '2022-05-26 06:26:26'),
(4, 'OUTREACH PROGRAMS', '<p class=\"MsoNormal\" style=\"margin: 0cm; color: rgb(0, 0, 0); line-height: 15pt;\"><font face=\"helvetica\" style=\"\" size=\"4\">The Josefheim Foundation conducts outreach programs to educate people about disabilities and promote awareness and understanding. Through their outreach programs, they aim to promote inclusivity and create a more accepting and understanding society for people with disabilities.</font><font face=\"inherit, serif\" style=\"font-size: 11.5pt;\"><o:p></o:p></font></p>', '2022-05-26 06:26:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblseniorcitizen`
--
ALTER TABLE `tblseniorcitizen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblseniorcitizen`
--
ALTER TABLE `tblseniorcitizen`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
