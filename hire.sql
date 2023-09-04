-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 09:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hire`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_contactus`
--

CREATE TABLE `adminpanel_contactus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_contactus`
--

INSERT INTO `adminpanel_contactus` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Suraj Maharjan', 'surajmaharjan235@hotmail.com', 'hello', 'hello every one .');

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_globalsettings`
--

CREATE TABLE `adminpanel_globalsettings` (
  `id` bigint(20) NOT NULL,
  `SiteName` varchar(100) NOT NULL,
  `SiteContact` varchar(100) NOT NULL,
  `SiteEmail` varchar(254) NOT NULL,
  `SiteAddress` varchar(500) NOT NULL,
  `Sitedescription` varchar(500) NOT NULL,
  `Sitelicence` varchar(300) NOT NULL,
  `Sitetwitterlink` varchar(300) NOT NULL,
  `Sitefacebooklink` varchar(300) NOT NULL,
  `Sitelinkdinlink` varchar(300) NOT NULL,
  `Siteinstagram` varchar(300) NOT NULL,
  `Siteyoutubelink` varchar(300) NOT NULL,
  `Sitefax` varchar(300) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `back_image` varchar(100) DEFAULT NULL,
  `brochure` varchar(100) DEFAULT NULL,
  `SiteBox` varchar(300) DEFAULT NULL,
  `brochure_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_globalsettings`
--

INSERT INTO `adminpanel_globalsettings` (`id`, `SiteName`, `SiteContact`, `SiteEmail`, `SiteAddress`, `Sitedescription`, `Sitelicence`, `Sitetwitterlink`, `Sitefacebooklink`, `Sitelinkdinlink`, `Siteinstagram`, `Siteyoutubelink`, `Sitefax`, `logo`, `back_image`, `brochure`, `SiteBox`, `brochure_name`) VALUES
(1, 'Hyhire International Pvt. Ltd.', '977-1-4481308 / 4479845', 'hyhireinternational@gmail.com', 'Sinamangal, Kathmandu, Nepal', '', 'Licesne No: 0123456789 / 9876', '', '', '', '', '', '977-1-44494529', 'Global/logo-dark.png', 'Global/d-slide-6.jpg', 'brochure/samplebrochure.pdf', 'P.O.Box 2852', 'Download Brochure');

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_navigation`
--

CREATE TABLE `adminpanel_navigation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `position` int(11) NOT NULL,
  `page_type` varchar(50) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `short_desc` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `bannerimage` varchar(100) DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_keyword` varchar(100) DEFAULT NULL,
  `icon_image` longtext DEFAULT NULL,
  `slider_image` varchar(100) DEFAULT NULL,
  `brochure` varchar(100) DEFAULT NULL,
  `Parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_navigation`
--

INSERT INTO `adminpanel_navigation` (`id`, `name`, `caption`, `status`, `position`, `page_type`, `title`, `short_desc`, `desc`, `bannerimage`, `meta_title`, `meta_keyword`, `icon_image`, `slider_image`, `brochure`, `Parent_id`) VALUES
(1, 'Home', '', 'Publish', 1, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(2, 'Slider', '', 'Publish', 1, 'Group', '', '', '', '', '', '', '', '', '', 1),
(3, 'Slider 1', 'A Government recognised Overseas Manpower Managment Agency', 'Publish', 1, 'Slider', 'WE PROVIDE BEST EMPLOYEE FROM NEPAL', '', '', '', '', '', '', 'about/slider-3_UzE5Q1C.jpg', '', 2),
(4, 'Slider 2', 'A Government recognised Overseas Manpower Managment Agency', 'Publish', 2, 'Slider', 'WE PROVIDE BEST EMPLOYEE FROM NEPAL', '', '', '', '', '', '', 'about/slider-1_L37M97O.jpg', '', 2),
(5, 'Slider 3', 'A Government recognised Overseas Manpower Managment Agency', 'Publish', 3, 'Slider', 'WE PROVIDE BEST EMPLOYEE FROM NEPAL', '', '', '', '', '', '', 'about/katar.jpg', '', 2),
(6, 'Slider 4', 'A Government recognised Overseas Manpower Managment Agency', 'Publish', 4, 'Slider', 'WE PROVIDE BEST EMPLOYEE FROM NEPAL', '', '', '', '', '', '', 'about/clientswithbg.png', '', 2),
(7, 'About US', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 1),
(8, 'About 1', 'Hyhire International Pvt. Ltd', 'Publish', 1, 'Home/About', 'is a Government Recognized Overseas Manpower Management Agency', '<div class=\"xl:w-3/5 text-center text-3xl font-semibold\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; line-height: 2.25rem; font-weight: 600; width: 748.797px; color: rgb(0, 0, 0); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><h3 style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</h3></div><div class=\" px-5 xl:px-0 text-justify xl:w-4/5 text-gray-500 pt-8 md:text-lg\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; padding-left: 0px; padding-right: 0px; padding-top: 2rem; --tw-text-opacity: 1; color: rgb(107 114 128 / var(--tw-text-opacity)); font-size: 1.125rem; line-height: 1.75rem; width: 998.391px; font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><br></p></div>', 'We offer recruitment services to varied clients from various sectors across Middle East, Malaysia and Brunei. We are specialized in recruiting manpower from various parts of India & Nepal for different categories as per our customer’s requirement. Today, we have a large database of candidates in our CRM for multiple category viz. Engineers, Staffs, skilled & unskilled manpower to meet your requirements...', '', '', '', '', 'about/faceds_work.png', '', 7),
(9, 'About 2', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 7),
(10, 'ACCESS TO TALENT POOL', '', 'Publish', 1, 'Home/About_1', '', '', 'In an economic environment that is dynamic and continuously evolving, we search, select and hire the best talents. At Skyward, we dedicate ourselves to providing standout candidates specialized for specific industries and functional areas.', '', '', '', '', '', '', 9),
(11, 'EXPERIENCE', '', 'Publish', 2, 'Home/About_1', '', '', 'In an economic environment that is dynamic and continuously evolving, we search, select and hire the best talents. At Skyward, we dedicate ourselves to providing standout candidates specialized for specific industries and functional areas.', '', '', '', '', '', '', 9),
(12, 'COST EFFECTIVE', '', 'Publish', 3, 'Home/About_1', '', '', 'In an economic environment that is dynamic and continuously evolving, we search, select and hire the best talents. At Skyward, we dedicate ourselves to providing standout candidates specialized for specific industries and functional areas.', '', '', '', '', '', '', 9),
(13, 'WHY WORK WITH US?', '', 'Publish', 3, 'Group', '', '', '', '', '', '', '', '', '', 1),
(14, 'WHY WORK 1', 'WHY', 'Publish', 1, 'Work_1', 'OUR COMMITTMENT', '', 'We have many customers today who patronage us and help us in creating a better Business Relationship which is beneficial from both ends. We have built this organization on trust and our clients will speak for us. Having detailed above on our capabilities, we would request you to kindly consider us, as a partner for your organization for your manpower needs. We would want to make sure that you will not regret having associated with us and look ahead sincerely for a long enduring business relationship. We have also associated offices across India in major Indian Cities to deliver best recruitment solutions.', 'about/content-1_DBtSzFn.png', 'WORK', 'WITH US?', '', 'about/slider-3_LdIeUf8.jpg', '', 13),
(15, 'WHY WORK 2', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 13),
(16, 'GUARANTEE', '', 'Publish', 1, 'Work_2', '', '', 'We stand Guarantee through our excellent Recruitment Team’s knowledge & meticulous process in shortlisting candidates based on your requirements.', '', '', '', '', '', '', 15),
(17, 'EXPERIENCE', '', 'Publish', 2, 'Work_2', '', '', 'We stand Guarantee through our excellent Recruitment Team’s knowledge & meticulous process in shortlisting candidates based on your requirements.', '', '', '', '', '', '', 15),
(18, 'LICENSED', '', 'Publish', 3, 'Work_2', '', '', 'We stand Guarantee through our excellent Recruitment Team’s knowledge & meticulous process in shortlisting candidates based on your requirements.', '', '', '', '', '', '', 15),
(19, 'PRESENCE', '', 'Publish', 4, 'Work_2', '', '', 'We stand Guarantee through our excellent Recruitment Team’s knowledge & meticulous process in shortlisting candidates based on your requirements.', '', '', '', '', '', '', 15),
(21, 'WHAT WE DO? / RECRUIT', '', 'Publish', 4, 'Group', '', '', '', '', '', '', '', '', '', 1),
(22, 'WHAT WE ', 'DO', 'Publish', 1, 'We', 'INDUSTRIES WE RECRUIT FOR', '', 'We support organizations by fulfilling their manpower requirements, providing the necessary acumen to be flexible, cost-effective, and offer a competitive solution. Hyhire role as a recruitment consultancy is to act as an intermediary, identifying and sourcing suitably qualified candidates on their behalf. We manage the full recruitment process and provide services according to specific client needs, which include:', '', '?', '', '', 'about/lowerBgAboutUs_74qO7qM.jpg', '', 21),
(23, 'Recruitment Procedure', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 21),
(24, 'Candidate Screening', '', 'Publish', 1, 'Recruit', '', '', '', '', '', '', '', '', '', 23),
(25, 'Shortlisting', '', 'Publish', 2, 'Recruit', '', '', '', '', '', '', '', '', '', 23),
(26, 'Interviewing', '', 'Publish', 3, 'Recruit', '', '', '', '', '', '', '', '', '', 23),
(27, 'Response Handling', '', 'Publish', 4, 'Recruit', '', '', '', '', '', '', '', '', '', 23),
(28, 'Documentation', '', 'Publish', 5, 'Recruit', '', '', '', '', '', '', '', '', '', 23),
(30, 'INDUSTRIES RECRUIT', '', 'Publish', 3, 'Group', '', '', '', '', '', '', '', '', '', 21),
(31, 'Image 1', '', 'Publish', 1, 'Recruit_1', '', '', '', 'about/hotelstaff.png', '', '', '', '', '', 30),
(32, 'Image 2', '', 'Publish', 2, 'Recruit_1', '', '', '', 'about/CIVIL_CONSTRUCTION.png', '', '', '', '', '', 30),
(33, 'Image 3', '', 'Publish', 3, 'Recruit_1', '', '', '', 'about/cleaning.png', '', '', '', '', '', 30),
(34, 'Image 4', '', 'Publish', 4, 'Recruit_1', '', '', '', 'about/faceds_work_nO9y9sO.png', '', '', '', '', '', 30),
(35, 'Image 5', '', 'Publish', 5, 'Recruit_1', '', '', '', 'about/heavy-work.png', '', '', '', '', '', 30),
(36, 'Image 6', '', 'Publish', 6, 'Recruit_1', '', '', '', 'about/Electro_Mechanical.png', '', '', '', '', '', 30),
(37, 'Image 7', '', 'Publish', 7, 'Recruit_1', '', '', '', 'about/Automobile.png', '', '', '', '', '', 30),
(38, 'Recruitment Process', 'RECRUITMENT', 'Publish', 5, 'Process', 'PROCESS', '', 'We are all aware that the manpower recruitment Process is a challenging work. To hire the top from the huge number of applicant is a difficult job. So, for your ease Hyhire International offers you.', 'about/Dubai_FrXzz1h.jpg', '', '', '', '', '', 1),
(39, 'Clients', '', 'Publish', 6, 'Group', '', '', '', '', '', '', '', '', '', 1),
(40, 'Image 1', 'CLIENTS', 'Publish', 2, 'Clients', 'WE WORK WITH', '', '', 'about/partner-1.png', '', '', '', '', '', 39),
(41, 'Image 2', '', 'Publish', 2, 'Clients', '', '', '', 'about/partner-2.png', '', '', '', '', '', 39),
(42, 'Image 3', '', 'Publish', 3, 'Clients', '', '', '', 'about/partner-26.png', '', '', '', '', '', 39),
(43, 'Image 4', '', 'Publish', 4, 'Clients', '', '', '', 'about/partner-28.png', '', '', '', '', '', 39),
(44, 'Image 5', '', 'Publish', 5, 'Clients', '', '', '', 'about/partner-29.png', '', '', '', '', '', 39),
(45, 'Image 6', '', 'Publish', 6, 'Clients', '', '', '', 'about/partner-30.png', '', '', '', '', '', 39),
(46, 'Client ', 'CLIENTS ', 'Publish', 1, 'Clients_1', 'WE WORK WITH', '', '', '', '', '', '', 'about/katar_14WHF8m.jpg', '', 39),
(47, 'Who We Are', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(48, 'About Company', 'ABOUT US', 'Publish', 1, 'About Company', 'Hyhire International Pvt. Ltd ', '', 'We offer recruitment services to varied clients from various sectors across Middle East, Malaysia and Brunei. We are specialized in recruiting manpower from various parts of India & Nepal for different categories as per our customer’s requirement. Today, we have a large database of candidates in our CRM for multiple category viz. Engineers, Staffs, skilled & unskilled manpower to meet your requirements. We have the capability to source manpower for bulk requirements also as we have connects with a large portfolio of agencies across the country. We are very agile and quick in our response & approach and hence you can trust us that we can deliver faster turnaround times to your requirements. We are different in our services and approach and can offer comprehensive range of recruitment solutions from screening, short-listing, conducting interview and arranging all travel formalities as per the client\'s requirements. We have experience in executing staffing services for Construction, Oil & Gas, Marine, Offshore & Onshore, Engineering, Plastic Industry, Manufacturing, Electro Mechanical Companies, Heavy Transport and Logistics and Petrochemical industry, Hospitality, Facility Management & Hotel Industry etc.', 'about/FAST_FOOD_CHAINS_5SUjjS0.png', 'is a Government Recognized Overseas Manpower Management Agency', '', '', 'about/slider-1_YILv9EB.jpg', '', 47),
(49, 'Registration/Approval', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 47),
(50, 'Registration/Approval', '', 'Publish', 1, 'Registration', '', '', '', '', '', '', '', 'about/slider-3_FHJL5T3.jpg', '', 49),
(51, 'Image 1', '', 'Publish', 2, 'Registration_1', '', '', '', 'about/company.jpg', '', '', '', '', '', 49),
(52, 'Image 2', '', 'Publish', 3, 'Registration_1', '', '', '', 'about/company_hkAvlXo.jpg', '', '', '', '', '', 49),
(53, 'Image 3', '', 'Publish', 4, 'Registration_1', '', '', '', 'about/company_Y8bwX1M.jpg', '', '', '', '', '', 49),
(54, 'Our Message', 'OUR MESSAGE', 'Publish', 3, 'Our Message', 'Message From Amity Hyhire International', '<p>We would like to extend sincere thanks for your valuable interest to our company. Amity Global Employment Services Pvt. Ltd. is a leading recruitment agency in Nepal. Amity has become a trust name to recon within outbound recruitment over the years. The company believes in competency blended with quality. We have a long experienced and dedicated team of professionals excelled to provide high quality services to both employees and employers, striving to meet internationally accepted excellence benchmarks. Amity operates in an ethical fashion and this is something we take great pride in. Nepal plays an active role in the regional labor migration processes to achieve a better deal for its migrant workers. As a leading recruitment agency in the country, we strongly believe that major recruitment agencies like us have a crucial role in supporting the Government’s effort towards achieving UN Sustainable Development Goals - 10.7 by ensuring safe and regular migration practice in the supply chain. We are fortunate to be part of this industry since last two decades and make a great difference in the life of the migrant workers. Our team of experts are always dedicated to finding the right talent for your company. We can assure you for quality service and promising results. We look forward to working with your esteemed organization in the days to come.</p><p><br></p><p>Sincerely,</p><p>Hyhire International</p>', '', '', 'OUR', 'MESSAGE', '', 'about/slider-2.jpg', '', 47),
(55, 'Our Commitment', '', 'Publish', 4, 'Our Commitment', 'COMMITMENT FOR COMPLIANCE TO RESPONSIBLE BUSINESS ALLIANCE(RBA) PRINCIPLES & CODE OF CONDUCT', '<commit-body style=\"margin-top: var(--bs-gutter-y); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: calc(var(--bs-gutter-x) / 2); padding-bottom: 0px; padding-left: calc(var(--bs-gutter-x) / 2); flex-shrink: 0; width: 1164px; max-width: 100%;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 20px;\">As one of the key manpower suppliers from Nepal, Hyhire International Pvt. Ltd. fully support the vision and goals of the Responsible Business Alliance (RBA). RBA has given and showed a sustainable business culture for the industry. We align our business and operations to promote the elements emphasize by RBA, this include freely chosen employment, promoting a safe environment, environmentally sustainable, zero cost recruitment, business ethical and implementing management system. We also need your support working with us while we are promoting RBA elements within our organizations. You may strengthen our decision to fulfill the RBA Code of Conduct by the following ways:</p><ol style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 20px;\"><li style=\"margin: 0px; padding: 0px;\">Read and understand the RBA Code of Conduct and Principles</li><li style=\"margin: 0px; padding: 0px;\">Compliance with the code</li><li style=\"margin: 0px; padding: 0px;\">Conduct self-evaluation ensure conformity</li><li style=\"margin: 0px; padding: 0px;\">Cooperate with us if an audit required</li><li style=\"margin: 0px; padding: 0px;\">Notify us that you learn of items of non-compliance</li></ol><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 20px;\">While we are implementing RBA Code of Conduct, we also strongly recommend you consider implementing RBA Code of Conduct within your organization if you have not done so.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 20px;\">Amity commits to progressively align its operations with the provisions of RBA Code of Conduct and to support and encourage its all the sub-agent, supplier, and customer to do so.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 20px;\">Wherever possible, Amity will seek to adopt the RBA approach and tools in practical ways in the spirit of the industry’s common goals. Some of the labor standards we comply at AGES are as follows:</p></commit-body><commit-table style=\"margin-top: var(--bs-gutter-y); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: calc(var(--bs-gutter-x) / 2); padding-bottom: 0px; padding-left: calc(var(--bs-gutter-x) / 2); flex-shrink: 0; width: 1164px; max-width: 100%;\"><table style=\"margin: 0px; padding: 0px;\"><thead style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial;\">Sub-elements</th><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial;\">Description</th></tr></thead><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial;\">Freely-Chosen Employment</th><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Any type of forced, involuntary or exploitative prison, indentured, bonded, trafficked or slave Labor not used.</li><li style=\"margin: 0px; padding: 0px;\">Adequate and effective policy and procedures established to ensure no form of forced, bonded, involuntary or exploitative prison, trafficked or slave labor is used.</li><li style=\"margin: 0px; padding: 0px;\">The provided written terms of contract to the workers in the native language and verbally explained prior employment.</li><li style=\"margin: 0px; padding: 0px;\">No holding of government issued identification and original personal documentations by any parties.</li><li style=\"margin: 0px; padding: 0px;\">Unreasonable restriction of the workers, and their access to basic liberties.</li></ul></td></tr><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial;\">Young Worker</th><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Workers are not below the minimum age.</li><li style=\"margin: 0px; padding: 0px;\">Established adequate and effective policy and processed to ensure workers below the legal minimum working age are not hired.</li><li style=\"margin: 0px; padding: 0px;\">Workers below age of 18 not performing work likely jeopardizing health &amp; safety and night work or overtime.</li><li style=\"margin: 0px; padding: 0px;\">Adequate and effective apprentice/intern/student worker employment and policies and procedures</li></ul></td></tr><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial;\">Working Hours</th><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Hours worked in a workweek over the last 12 months does not exceed 60 hours.</li><li style=\"margin: 0px; padding: 0px;\">Workers receive at least one day off every seven days.</li><li style=\"margin: 0px; padding: 0px;\">Adequate and effective policy, system and procedures are established to accurately determine, communicate, record, manage and control working hours including overtime, reliable and detailed records of workers normal and overtime working hours.</li><li style=\"margin: 0px; padding: 0px;\">Allow mandated breaks, holidays, and vacation days, include time off when ill or for maternity leave.</li></ul></td></tr><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial;\">Wages &amp; Benefits</th><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Wages for regular and overtime hours are correctly calculated and paid.</li><li style=\"margin: 0px; padding: 0px;\">For each pay period, workers are paid on a timely basis and provided with understandable wage statements that includes sufficient information to verify accurate compensation for work performed.</li><li style=\"margin: 0px; padding: 0px;\">Wages are not deducted or reduced for disciplinary reasons.</li><li style=\"margin: 0px; padding: 0px;\">Deductions or withholding are calculated correctly and submitted to the appropriate agency within the local law time frame.</li></ul></td></tr><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial;\">Humane Treatment</th><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\">No evidence of sexual harassment or abuse, corporal punishment, mental or physical coercion, verbal abuse or intimidation exists.</li><li style=\"margin: 0px; padding: 0px;\">Adequate and effective policies and procedures on decent/humane working conditions and fair treatment of workers are established.</li><li style=\"margin: 0px; padding: 0px;\">Disciplinary actions are recorded, consistent with the procedures and reviewed by management.</li></ul></td></tr><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial;\">Non-Discrimination</th><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\">No evidence of discrimination.</li><li style=\"margin: 0px; padding: 0px;\">Policies and procedures that ban discrimination and harassment are established.</li><li style=\"margin: 0px; padding: 0px;\">Reasonable accommodation for religious practices is provided.</li></ul></td></tr><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial;\">Freedom of Association</th><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Workers can form or enroll in a trade union of their own free will.</li><li style=\"margin: 0px; padding: 0px;\">Legal rights of all workers to bargain collectively, or refrain from doing so, are respected.</li><li style=\"margin: 0px; padding: 0px;\">Participants respect the legal right for a worker to peaceful assemblyor refrain from doing so, are respected.</li><li style=\"margin: 0px; padding: 0px;\">No evidence of unequal treatment between unionized or worker representatives and other workers exists.</li></ul></td></tr></tbody></table><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><h5 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Sincerely,</span></h5><h5 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Hyhire International Pvt. Ltd.</span></h5><h5 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-family: Nunito, sans-serif; color: rgb(9, 30, 62); font-weight: 600 !important;\"><br></h5></commit-table>', '', '', '', '', '', 'about/clientswithbg_Q72KX55.png', '', 47),
(56, 'Vision', 'OUR VISION', 'Publish', 5, 'Vision', 'OUR VISION', '', 'As envisioned, Amity Global Employment Services Pvt. Ltd. remains an exemplary manpower company not only as profit making body, but also one of the dedicated manpower suppliers committed to the economic upliftment of the people of Nepal. We provide appropriate trainings, skill development programs for various level and categories of manpower as per the demand and requirement in International labor market.', '', '', '', '', 'about/sharjah.jpg', '', 47),
(57, 'Mission', 'Our Mission', 'Publish', 6, 'Mission', 'Our Mission', '<p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium;\">We are committed to excel as human resource suppliers in the job market and our excellent track record so far is witness to it. Our well maintained data bank of various categories of candidates enables us to meet the requirement of valued customers.</p><p><br style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(0, 0, 0); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium;\"><br style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(0, 0, 0); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium;\"></p><p class=\"italic text-gray-600\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-style: italic; --tw-text-opacity: 1; color: rgb(75 85 99 / var(--tw-text-opacity)); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium;\">\"Our mission is to maintain and develop a recruitment service that is based upon unequalled excellence. We aim to establish equal partnerships with our customers, staff and colleagues to eliminate recruitment problems. Through commercial competitiveness, innovation and uncompromising quality we will guarantee our position as a market leader well into the future. Above all, our main objective is to be honest in every business relationship.”</p>', '', '', '', '', '', 'about/slider-3_GrHeAKF.jpg', '', 47),
(58, 'Organizational Chart', 'ORGANIZATIONAL CHART', 'Publish', 7, 'Organizational', '', '', '', 'about/organizationchart.png', '', '', '', 'about/katar_HczZakv.jpg', '', 47),
(59, 'Job Seeker', '', 'Publish', 3, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(65, 'Unskilled', 'UNSKILLED', 'Publish', 1, 'Group', '', '', '', '', '', '', '', '', '', 59),
(66, 'Unskilled', 'UNSKILLED', 'Publish', 1, 'UNSKILLED', 'Unskilled Labour', '', 'Unskilled labor refers to workers who have no special training or experience. It is a part of the workforce with a very limited skill set. Unskilled labor consists of people with a high school diploma or less. However, when the economy is struggling, people with degrees may do unskilled work.', '', '', '', '', 'about/brunei_yKkkKjE.jpg', '', 65),
(67, 'Image 1', 'WatchMan', 'Publish', 2, 'SKILLED 1', '', '', '', 'about/unskilled_Z58UtUB.webp', '', '', '', '', '', 65),
(68, 'Image 2', 'Cleaner', 'Publish', 3, 'SKILLED 1', '', '', '', 'about/cleaning_w2dPweR.png', '', '', '', '', '', 65),
(69, 'Image 3', 'Automobile', 'Publish', 4, 'SKILLED 1', '', '', '', 'about/Automobile_hgJRTma.png', '', '', '', '', '', 65),
(70, 'Image 4', 'Electrician', 'Publish', 5, 'SKILLED 1', '', '', '', 'about/Electro_Mechanical_3dUquY4.png', '', '', '', '', '', 65),
(71, 'Semi Skilled', 'SEMI SKILLED', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 59),
(72, 'Skilled', 'SKILLED', 'Publish', 3, 'Group', '', '', '', '', '', '', '', '', '', 59),
(73, 'Semi Skilled', 'SEMI SKILLED', 'Publish', 1, 'SEMISKILLED', 'Semi Skilled', '', 'Unskilled labor refers to workers who have no special training or experience. It is a part of the workforce with a very limited skill set. Unskilled labor consists of people with a high school diploma or less. However, when the economy is struggling, people with degrees may do unskilled work.', '', '', '', '', 'about/brunei_7szoySK.jpg', '', 71),
(74, 'Image 1', 'WatchMan', 'Publish', 2, 'SKILLED 2', '', '', '', 'about/unskilled_7doJ6o2.webp', '', '', '', '', '', 71),
(75, 'Image 2', 'Cleaner', 'Publish', 3, 'SKILLED 2', '', '', '', 'about/cleaning_JPavFQW.png', '', '', '', '', '', 71),
(76, 'Image 3', 'Automobile', 'Publish', 4, 'SKILLED 2', '', '', '', 'about/Automobile_BEPkA4q.png', '', '', '', '', '', 71),
(77, 'Skilled', 'SKILLED', 'Publish', 1, 'SKILLED', 'Skilled', '', 'Skilled labor refers to workers who have no special training or experience. It is a part of the workforce with a very limited skill set. Unskilled labor consists of people with a high school diploma or less. However, when the economy is struggling, people with degrees may do unskilled work.', '', '', '', '', 'about/brunei_PJltGy8.jpg', '', 72),
(78, 'Image 1', 'WatchMan', 'Publish', 2, 'SKILLED 3', '', '', '', 'about/unskilled_HdxbVSt.webp', '', '', '', '', '', 72),
(79, 'Image 2', 'Cleaner', 'Publish', 3, 'SKILLED 3', '', '', '', 'about/cleaning_05kTuA8.png', '', '', '', '', '', 72),
(80, 'Image 3', 'Automobile', 'Publish', 4, 'SKILLED 3', '', '', '', 'about/Automobile_exK6uVQ.png', '', '', '', '', '', 72),
(81, 'Image 4', 'faceds work', 'Publish', 5, 'SKILLED 3', '', '', '', 'about/faceds_work_t5whWBi.png', '', '', '', '', '', 72),
(82, 'Image 5', 'CIVIL CONSTRUCTION', 'Publish', 6, 'SKILLED 3', '', '', '', 'about/CIVIL_CONSTRUCTION_dxS9gpq.png', '', '', '', '', '', 72),
(83, 'Documents', '', 'Publish', 4, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(84, 'Demand Letter', 'DEMAND LETTER', 'Publish', 1, 'Demand Letter', 'Check List for Demand Letter Attestation', '<table class=\"MsoNormalTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin: 0px; padding: 0px; color: rgb(107, 106, 117); font-family: Rubik, sans-serif; background-color: rgb(255, 255, 255);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-width: 1pt; border-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Duly filled up Application Form</span></span><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\"><o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Duly Attested Standard Demand Letter<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Service (Two Party) Agreement<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Power of Attorney<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Standard Employment Contract<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Guarantee Letter<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Valid ID copy of the Sponsor/Owner and the Submittant<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Copy of valid Trade/Commercial License of the Company and the Nepali Manpower Agency<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Authentic Quota Paper from the concerned authority<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Id copy of Authorized Person (Owner/HR Manager/PRO) of the company or Authorization letter to submit and collect the documents.<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Salary Sheet of the last month of Nepali Workers if employed in the Company and name List with emirates ID and contact numbers of them.<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-size: 12pt; font-family: Arial, sans-serif;\">Declaration letter from the company (stating the nature of company such as gov/semi-gov/private)<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p></td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 7.5pt; border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><p class=\"MsoNormal\" style=\"margin-right: 0px; margin-bottom: 0in; margin-left: 0px; padding: 0px; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\"><span style=\"margin: 0px; padding: 0px; font-size: 13.5pt; font-family: Arial, sans-serif;\">All copies of the documents need to be self attested by authorized submitter.</span></span></p></td></tr></tbody></table>', '', '', '', '', '', 'about/slider-2_YAdnglL.jpg', '', 83),
(85, 'Recruitment Procedure', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 83),
(86, 'Recruitment Procedure', 'RECRUITMENT PROCEDURE', 'Publish', 1, 'Procedure', 'GET A PRODUCTIVE MANPOWER', '', 'We are all aware that the manpower recruitment Process is a challenging work. To hire the top from the huge number of applicant is a difficult job. So, for your ease, Hyhire International offers you the comprehensive process of recruitment process that most of the manpower agencies in Nepal carry out.', '', '', '', '', 'about/slider-1_AaRrN2n.jpg', '', 85),
(87, 'Procedure 1', '', 'Publish', 1, 'Procedure_1', 'CLIENT SENDS HIRING NEED', '', '', '', '', '', '', '', '', 85),
(88, 'Procedure 2', '', 'Publish', 2, 'Procedure_1', 'LEGAL DOCUMENTATION & REGISTRATION', '', '', '', '', '', '', '', '', 85),
(89, 'Procedure 3', '', 'Publish', 3, 'Procedure_1', 'PREPARE SCHEDULE OF INTERVIEW DATES', '', '', '', '', '', '', '', '', 85),
(90, 'Procedure 4', '', 'Publish', 4, 'Procedure_1', 'OFFER LETTERS, MEDICAL & RELEVANT DOCUMENTS', '', '', '', '', '', '', '', '', 85),
(91, 'Procedure 5', '', 'Publish', 5, 'Procedure_1', 'OFFER LETTERS, MEDICAL & RELEVANT DOCUMENTS', '', '', '', '', '', '', '', '', 85),
(92, 'Procedure 6', '', 'Publish', 6, 'Procedure_1', 'VISA OTHER PROCESSES & ORIENTATION', '', '', '', '', '', '', '', '', 85);
INSERT INTO `adminpanel_navigation` (`id`, `name`, `caption`, `status`, `position`, `page_type`, `title`, `short_desc`, `desc`, `bannerimage`, `meta_title`, `meta_keyword`, `icon_image`, `slider_image`, `brochure`, `Parent_id`) VALUES
(93, 'Procedure 7', '', 'Publish', 7, 'Procedure_1', 'OFFER LETTERS, MEDICAL & RELEVANT DOCUMENTS', '', '', '', '', '', '', '', '', 85),
(94, 'Procedure 8', '', 'Publish', 8, 'Procedure_1', 'DEPARTURE', '', '', '', '', '', '', '', '', 85),
(95, 'Recruiting Documents', 'RECRUITING DOCUMENTS', 'Publish', 3, 'Documents', 'REQUIRED DOCUMENTS', '<div class=\"row g-5\" style=\"margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) / -2); margin-bottom: 0px; margin-left: calc(var(--bs-gutter-x) / -2); padding: 0px; --bs-gutter-x: 3rem; --bs-gutter-y: 3rem; color: rgb(107, 106, 117); font-family: Rubik, sans-serif; background-color: rgb(255, 255, 255);\"><div class=\"col-lg-8\" style=\"margin-top: var(--bs-gutter-y); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: calc(var(--bs-gutter-x) / 2); padding-bottom: 0px; padding-left: calc(var(--bs-gutter-x) / 2); flex-basis: auto; width: 776px; max-width: 100%;\"><h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-family: Nunito, sans-serif; color: rgb(9, 30, 62); font-weight: 700 !important;\">We go through the following recruitment procedures:</h4><div class=\"recu-step\" style=\"margin: 0px; padding: 0px;\"><h5 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-family: Nunito, sans-serif; color: rgb(9, 30, 62); font-weight: 600 !important;\">1. Demand Letter</h5><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0);\">A formal letter issued by the employer addressing Amity Global Employment Services Pvt. Ltd. with full detail of the job categories, number of workers, monthly salary, contract period, working hours and all other facilities like food, accommodation medical and air passage.</p><h5 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-family: Nunito, sans-serif; color: rgb(9, 30, 62); font-weight: 600 !important;\">2. Power of Attorney</h5><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0);\">A letter issued by the employer authorizing Amity Global Employment Services to act on behalf of the employer in recruiting number of workers and to carry out all necessary formalities related with the respective Embassy and the related agencies of the government of Nepal.</p><h5 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-family: Nunito, sans-serif; color: rgb(9, 30, 62); font-weight: 600 !important;\">3. Inter Party Agreement</h5><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0);\">Inter party Agreement between Employer and Amity Global Employment Services Pvt. Ltd.</p><h5 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-family: Nunito, sans-serif; color: rgb(9, 30, 62); font-weight: 600 !important;\">4. Employment Agreement</h5><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0);\">An employment agreement between both parties stating fully and precisely the terms and conditions regarding demand and supply of manpower from Nepal. This agreement must be signed by both parties towards acceptance of stated terms to execution of the recruitment procedure.</p><h5 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-family: Nunito, sans-serif; color: rgb(9, 30, 62); font-weight: 600 !important;\">5. Guarantee Letter</h5><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0);\">Guarantee on behalf the employer company starting that the worker will be working in the employing country only. This letter must be attested by the Embassy of Nepal.</p></div></div></div><hr style=\"box-sizing: border-box; padding: 0px; color: rgb(107, 106, 117); border-top: 0px; font-family: Rubik, sans-serif;\"><div class=\"min-salary-container\" style=\"margin: 0px; padding: 20px 0px; color: rgb(107, 106, 117); font-family: Rubik, sans-serif; background-color: rgb(255, 255, 255);\"><h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 20px; font-family: Nunito, sans-serif; color: rgb(9, 30, 62); font-weight: 700 !important;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Minimum Basic Saslary and other Allowances</span></h4><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0);\">As decided by the Government of Nepal published in Nepal Gazette volume 62 numbers 32 section 5 Dated 2069.7.27</p><table style=\"margin: 0px; padding: 0px;\"><thead style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial; color: black;\">Job Category</th><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial; color: black;\">Basic Salary (AED)</th><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial; color: black;\">Food Cost (AED)</th></tr></thead><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">Unskilled</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">800.00 or above</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">300.00 or above</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">Semi-Skilled</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">1,000.00 or above</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">300.00 or above</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">Skilled</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">1,200.00 or above</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">300.00 or above</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">Highly Skilled</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">5,000.00 or above</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">As per agreement</td></tr></tbody></table><br style=\"margin: 0px; padding: 0px;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: red;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">The above stated salary and allowances are additional to the transportation and other benefits.</span></p><div class=\"recu-document-note\" style=\"margin: 0px; padding: 0px; color: rgb(12, 12, 12);\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Please note that all copies of the documents need to be self attested by authorized person to submit the documents.</li><li style=\"margin: 0px; padding: 0px;\">Demand Letter, Power of Attorney and Service/Two-Party Agreementneed to be attested by the respective Chamber of Commerce and Industry of the UAE.</li><li style=\"margin: 0px; padding: 0px;\">The UAE Government entities are exempted from the requirement of Chamber attestation.</li><li style=\"margin: 0px; padding: 0px;\">Companies that are operating under Free Zone need to get those documents attested either by the Chamber or by designated Free Zone Authority.</li><li style=\"margin: 0px; padding: 0px;\">Embassy may visit the company and accommodation before the attestation of demand (within 10 days of documents submission), if deemed necessary.</li></ul></div></div><hr style=\"box-sizing: border-box; padding: 0px; color: rgb(107, 106, 117); border-top: 0px; font-family: Rubik, sans-serif;\"><div class=\"attestation-verfication\" style=\"margin: 0px; padding: 20px 0px; color: rgb(107, 106, 117); font-family: Rubik, sans-serif; background-color: rgb(255, 255, 255);\"><h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 20px; font-family: Nunito, sans-serif; color: rgb(9, 30, 62); font-weight: 700 !important;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Attestation and Verification fees/charge (effective from 17 July 2018):</span></h4><table style=\"margin: 0px; padding: 0px;\"><thead style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\"><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial; color: black;\">S.N</th><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial; color: black;\">No. of Workers</th><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial; color: black;\">Demand Attestation Fees (AED)</th><th style=\"margin: 0px; padding: 10px; text-align: -webkit-match-parent; border-width: 1px; border-color: black; border-image: initial; color: black;\">Visa Verification / Document Correction(AED)</th></tr></thead><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">1.</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">1-25</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">920</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">370</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">2.</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">26-100</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">1100</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">3.</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">Above 100</td><td style=\"margin: 0px; padding: 10px; border-width: 1px; border-color: black; border-image: initial; color: black;\">1280</td></tr></tbody></table></div>', 'Amity Global Employment Services Pvt. Ltd. assists in preparation and processing of all necessary paperwork involved with international job placement. The Government of Nepal requires the following documents for Nepali citizens seeking employment with companies overseas. The required documents vary from country to country but all documents are required to meet the approval formalities of the Govt.', '', '', '', '', 'about/slider-2_V3e1hDY.jpg', '', 83),
(96, 'Newspaper Vacancy', '', 'Publish', 5, 'Group', '', '<p><br></p>', '', '', '', '', '', '', '', NULL),
(97, 'Newspaper Vacancy', '', 'Publish', 1, 'Newspaper', '', '', '', '', '', '', '', 'about/slider-2_ixYut4U.jpg', '', 96),
(98, 'Image 1', 'Publsihed Date: 2023/12/12', 'Publish', 2, 'Newspaper_1', 'Interview Date: 2023/12/12', '', '', 'about/brunei_I6dH54h.jpg', '', '', '', '', '', 96),
(99, 'Image 2', 'Publsihed Date: 2023/12/12', 'Publish', 3, 'Newspaper_1', 'Interview Date: 2023/12/12', '', '', 'about/newsad_3h9PMeI.jpg', '', '', '', '', '', 96),
(100, 'Image 3', 'Publsihed Date: 2023/12/12', 'Publish', 4, 'Newspaper_1', 'Interview Date: 2023/12/12', '<p><br></p>', '', 'about/newsad_cKcMLgs.jpg', '', '', '', '', '', 96),
(101, 'Gallery', '', 'Publish', 6, 'Group', '', '<p><br></p>', '', '', '', '', '', '', '', NULL),
(102, 'Gallery', 'Gallery', 'Publish', 1, 'Gallery', '', '', '', '', '', '', '', 'about/clientswithbg_aYLYj2n.png', '', 101),
(103, 'Image 1', '', 'Publish', 2, 'Gallery_1', '', '', '', 'about/sharjah_zoRWAQq.jpg', '', '', '', '', '', 101),
(104, 'Image 2', '', 'Publish', 3, 'Gallery_1', '', '', '', 'about/FAST_FOOD_CHAINS_E3j5Rfb.png', '', '', '', '', '', 101),
(105, 'Image 3', '', 'Publish', 4, 'Gallery_1', '', '', '', 'about/Dubai_ryT8Eb0.jpg', '', '', '', '', '', 101),
(106, 'Image 4', '', 'Publish', 5, 'Gallery_1', '', '', '', 'about/hotelstaff_5hHF4Zp.png', '', '', '', '', '', 101),
(107, 'Image 5', '', 'Publish', 6, 'Gallery_1', '', '', '', 'about/mstaff_Ao6eyU1.png', '', '', '', '', '', 101),
(108, 'Image 6', '', 'Publish', 7, 'Gallery_1', '', '', '', 'about/brunei_jGteoeU.jpg', '', '', '', '', '', 101),
(109, 'Image 7', '', 'Publish', 8, 'Gallery_1', '', '', '', 'about/unskilled_UxitoZX.webp', '', '', '', '', '', 101),
(110, 'Contact', 'CONTACT US', 'Publish', 7, 'Contact', '', '<div class=\"flex flex-col w-full xl:w-2/5\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; width: 373.75px; flex-direction: column; color: rgb(0, 0, 0); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: rgb(243, 244, 246);\"><div class=\"text-2xl border-b border-primaryOrange text-start \" style=\"border-width: 0px 0px 1px; border-style: solid; border-color: rgb(255 92 0 / var(--tw-border-opacity)); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-border-opacity: 1; line-height: 2rem;\"><h3 style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">NEPAL</h3></div><div style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Sinamangal, Kathmandu, Nepal</p><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">P.O.Box 2852</p><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">977-1-4481308 / 4479845</p><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">977-1-44494529</p><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">hyhireinternational@gmail.com</p></div></div><div class=\"flex gap-5 pt-8 flex-col xl:flex-row\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; flex-direction: row; gap: 1.25rem; padding-top: 2rem; color: rgb(0, 0, 0); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: rgb(243, 244, 246);\"><div class=\"flex flex-col\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; flex-direction: column;\"><div class=\"text-2xl border-b border-primaryOrange text-start\" style=\"border-width: 0px 0px 1px; border-style: solid; border-color: rgb(255 92 0 / var(--tw-border-opacity)); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-border-opacity: 1; line-height: 2rem;\"><h3 style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">BRUNEI</h3></div><div style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Unit No: BF12, Block B, Simpang 145 Jalan Pasir,</p><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Berakas (LambakKiri) Negara, Brunei, Darussalam</p><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">T: +6732390928</p><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">977-1-44494529</p><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">makaseil2@yahoo.com</p></div></div><div class=\"flex flex-col\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; flex-direction: column;\"><div class=\"text-2xl border-b border-primaryOrange text-start\" style=\"border-width: 0px 0px 1px; border-style: solid; border-color: rgb(255 92 0 / var(--tw-border-opacity)); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-border-opacity: 1; line-height: 2rem;\"><h3 style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">INDIA</h3></div><div style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Twin Arcade Bldg, Andhari (E) Mumbai-400059</p><p style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">+91-2229202161/62</p></div></div></div>', '', '', '', '', '', 'about/slider-1_SOIMAJ0.jpg', '', NULL),
(111, 'Image 4', 'Publsihed Date: 2023/12/12', 'Publish', 5, 'Newspaper_1', 'interview', '', '', 'about/brunei_k38JjNz.jpg', '', '', '', '', '', 96),
(112, 'image 9', '', 'Publish', 10, 'Gallery_1', '', '', '', 'about/europ.jpg', '', '', '', '', '', 101),
(113, 'Image 5', 'Publsihed Date: 2023/12/12', 'Publish', 6, 'Newspaper_1', 'Interview', '', '', 'about/Balance-in-Bahrain-feature.webp', '', '', '', '', '', 96);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact us', 7, 'add_contactus'),
(26, 'Can change contact us', 7, 'change_contactus'),
(27, 'Can delete contact us', 7, 'delete_contactus'),
(28, 'Can view contact us', 7, 'view_contactus'),
(29, 'Can add global settings', 8, 'add_globalsettings'),
(30, 'Can change global settings', 8, 'change_globalsettings'),
(31, 'Can delete global settings', 8, 'delete_globalsettings'),
(32, 'Can view global settings', 8, 'view_globalsettings'),
(33, 'Can add navigation', 9, 'add_navigation'),
(34, 'Can change navigation', 9, 'change_navigation'),
(35, 'Can delete navigation', 9, 'delete_navigation'),
(36, 'Can view navigation', 9, 'view_navigation');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$l1dVHtENVm1MQJcGdBVJII$PbLxMMtNh8e++cPizn/QgJyyeMdq4aeBgUeBY5b8HaU=', '2023-09-04 07:01:20.669244', 1, 'Hire', '', '', '', 1, 1, '2023-08-13 07:10:51.382610');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'adminpanel', 'contactus'),
(8, 'adminpanel', 'globalsettings'),
(9, 'adminpanel', 'navigation'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-13 07:03:30.134937'),
(2, 'auth', '0001_initial', '2023-08-13 07:03:37.115694'),
(3, 'admin', '0001_initial', '2023-08-13 07:03:38.618041'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-13 07:03:38.667782'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-13 07:03:38.731776'),
(6, 'adminpanel', '0001_initial', '2023-08-13 07:03:40.230253'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-08-13 07:03:40.840162'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-08-13 07:03:41.514206'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-08-13 07:03:41.643882'),
(10, 'auth', '0004_alter_user_username_opts', '2023-08-13 07:03:41.674989'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-08-13 07:03:42.157186'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-08-13 07:03:42.188469'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-08-13 07:03:42.262841'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-08-13 07:03:42.438312'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-08-13 07:03:42.589248'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-08-13 07:03:42.697037'),
(17, 'auth', '0011_update_proxy_permissions', '2023-08-13 07:03:42.728087'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-08-13 07:03:42.840788'),
(19, 'sessions', '0001_initial', '2023-08-13 07:03:43.206693'),
(20, 'adminpanel', '0002_globalsettings_sitebox_globalsettings_brochure_name', '2023-08-23 08:43:53.619577'),
(21, 'adminpanel', '0003_alter_navigation_page_type', '2023-08-24 07:26:01.159469'),
(22, 'adminpanel', '0004_alter_navigation_page_type', '2023-08-24 07:34:21.105499'),
(23, 'adminpanel', '0005_alter_navigation_page_type', '2023-08-24 08:21:06.861627'),
(24, 'adminpanel', '0006_alter_navigation_page_type', '2023-08-24 14:10:25.140161'),
(25, 'adminpanel', '0007_alter_navigation_page_type', '2023-08-25 05:11:26.206823'),
(26, 'adminpanel', '0008_alter_navigation_page_type', '2023-08-25 06:50:52.178211'),
(27, 'adminpanel', '0009_alter_navigation_page_type', '2023-08-25 09:19:03.028282'),
(28, 'adminpanel', '0010_alter_navigation_page_type', '2023-08-25 10:33:42.582220'),
(29, 'adminpanel', '0011_remove_contactus_country_remove_contactus_city_and_more', '2023-08-27 06:39:19.802718');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2gwypmpzn6oyx3wg7kzxeworoz63kgkn', '.eJxVjDsOwjAQBe_iGllef5KYkj5nsOz1Lg4gR4qTCnF3EikFtG9m3luEuK0lbI2WMGVxFSAuv1uK-KR6gPyI9T5LnOu6TEkeijxpk-Oc6XU73b-DElvZa0ZtPfhIDMCus9mATYoYM7jBs-4dDMY67HpjtSY2oCg7bwBhD5QXny_WwDcM:1qchHV:dHqdN1raH1BQzPK057rJS253DJD1VDEEOhoCvKyrsew', '2023-09-17 07:12:25.492770'),
('j9qlk0syxq8bh24aq2gy3d8aqj4incqd', '.eJxVjDsOwjAQBe_iGllef5KYkj5nsOz1Lg4gR4qTCnF3EikFtG9m3luEuK0lbI2WMGVxFSAuv1uK-KR6gPyI9T5LnOu6TEkeijxpk-Oc6XU73b-DElvZa0ZtPfhIDMCus9mATYoYM7jBs-4dDMY67HpjtSY2oCg7bwBhD5QXny_WwDcM:1qV5sR:hRSl-oHwAz_aJSZWSAwldNNopzrfGgh4UnuXIoZ5whM', '2023-08-27 07:51:07.029538'),
('lp7sv14zv6tcm2qm0fnp2a7vs6c3jha6', '.eJxVjDsOwjAQBe_iGllef5KYkj5nsOz1Lg4gR4qTCnF3EikFtG9m3luEuK0lbI2WMGVxFSAuv1uK-KR6gPyI9T5LnOu6TEkeijxpk-Oc6XU73b-DElvZa0ZtPfhIDMCus9mATYoYM7jBs-4dDMY67HpjtSY2oCg7bwBhD5QXny_WwDcM:1qbCwe:aIf07zkwIgQWDXz-R3Fx5fBTlpPfLwuHhB7gdMwdazc', '2023-09-13 04:36:44.131006'),
('oqsjxcbedsdyravtwnnxxj4umelcbmut', '.eJxVjDsOwjAQBe_iGllef5KYkj5nsOz1Lg4gR4qTCnF3EikFtG9m3luEuK0lbI2WMGVxFSAuv1uK-KR6gPyI9T5LnOu6TEkeijxpk-Oc6XU73b-DElvZa0ZtPfhIDMCus9mATYoYM7jBs-4dDMY67HpjtSY2oCg7bwBhD5QXny_WwDcM:1qYjQM:_qqMjK0QFxTC1UajC-JN1UNurQY9JnF-XtNGsIXU5-4', '2023-09-06 08:41:10.830016'),
('pkeihzjchu8tl0h5ad4tdp7vec4bc8r4', '.eJxVjDsOwjAQBe_iGllef5KYkj5nsOz1Lg4gR4qTCnF3EikFtG9m3luEuK0lbI2WMGVxFSAuv1uK-KR6gPyI9T5LnOu6TEkeijxpk-Oc6XU73b-DElvZa0ZtPfhIDMCus9mATYoYM7jBs-4dDMY67HpjtSY2oCg7bwBhD5QXny_WwDcM:1qd3aK:TkfmpM6tt85M32tKqPv-KGbSJbDNTzT6NvcYCbIwjaY', '2023-09-18 07:01:20.745307'),
('sbr389vbs4s09336rkxneec6apucp8b6', '.eJxVjDsOwjAQBe_iGllef5KYkj5nsOz1Lg4gR4qTCnF3EikFtG9m3luEuK0lbI2WMGVxFSAuv1uK-KR6gPyI9T5LnOu6TEkeijxpk-Oc6XU73b-DElvZa0ZtPfhIDMCus9mATYoYM7jBs-4dDMY67HpjtSY2oCg7bwBhD5QXny_WwDcM:1qbEkS:sl6Pr_othwMZYDDCtKyzXGGD1m9U1MShzqc252bTg0w', '2023-09-13 06:32:16.744258');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminpanel_contactus`
--
ALTER TABLE `adminpanel_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpanel_globalsettings`
--
ALTER TABLE `adminpanel_globalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpanel_navigation`
--
ALTER TABLE `adminpanel_navigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminpanel_navigatio_Parent_id_f4af713b_fk_adminpane` (`Parent_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminpanel_contactus`
--
ALTER TABLE `adminpanel_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `adminpanel_globalsettings`
--
ALTER TABLE `adminpanel_globalsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminpanel_navigation`
--
ALTER TABLE `adminpanel_navigation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminpanel_navigation`
--
ALTER TABLE `adminpanel_navigation`
  ADD CONSTRAINT `adminpanel_navigatio_Parent_id_f4af713b_fk_adminpane` FOREIGN KEY (`Parent_id`) REFERENCES `adminpanel_navigation` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
