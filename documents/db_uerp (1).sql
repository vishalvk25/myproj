-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2019 at 05:47 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uerp`
--

-- --------------------------------------------------------

--
-- Table structure for table `core_banks`
--

CREATE TABLE `core_banks` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_manager` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `contact_person` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `alternate_contact_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `bank_address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `account_no` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `core_banks`
--

INSERT INTO `core_banks` (`bank_id`, `bank_name`, `branch_name`, `bank_manager`, `contact_person`, `contact_no`, `alternate_contact_no`, `bank_address`, `notes`, `account_no`, `ifsc_code`, `fk_core_firms`) VALUES
(1, 'Janata Sahakari Bank Ltd', 'Chinchwadgaon', 'Sathe', 'Mr bhatt', '4546454545', '44554455445', 'Chinchwadgaon', 'Opens on mon-fri 10 am -1 pm\r\nand 3pm- 6 pm\r\nAll Sundays ,Second Fourth sat close', '2145', 'JSB0000009', 1),
(2, 'janata Sahakari Bank Ltd', 'Chinchwadgaon', 'Mr sathe', 'Mr Bhatt', '486784545646', '87897945645', 'Chinchwadgaon', 'Mon-fri 9-5 ', '2845', 'JSB0000009', 2),
(4, 'IDBI BANK LTD', 'BANER', '', '', '454545454', '4554555454', 'BANER', 'mon-fri 9-5', '95465454654', 'HDFC12145', 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_categories`
--

CREATE TABLE `core_categories` (
  `category_id` int(11) NOT NULL,
  `group_code` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `head_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `category_code` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `subcategory_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `sub_category_code` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_categories`
--

INSERT INTO `core_categories` (`category_id`, `group_code`, `head_name`, `category_code`, `category_name`, `subcategory_name`, `sub_category_code`, `fk_core_firms`) VALUES
(1, '0001', 'Head', '001', 'CAtegor', 'Subcat', NULL, 1),
(2, '0001', 'Head', '001', 'CAtegor', 'Subcat1', NULL, 1),
(3, '0002', 'Head2', '001', 'Ca1', 'sub cat', NULL, 1),
(4, '0002', 'Head2', '001', 'Ca1', 'sub cat1', NULL, 1),
(5, '0002', 'Head2', '001', 'Ca1', 'sub cat12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_executives`
--

CREATE TABLE `core_executives` (
  `executive_id` int(11) NOT NULL,
  `executive_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `mobile_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `last_modified_dtm` datetime DEFAULT NULL,
  `last_modified_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `core_group_tax_contents`
--

CREATE TABLE `core_group_tax_contents` (
  `content_id` int(11) NOT NULL,
  `fk_core_tax_groups` int(11) DEFAULT NULL,
  `fk_core_taxes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_group_tax_contents`
--

INSERT INTO `core_group_tax_contents` (`content_id`, `fk_core_tax_groups`, `fk_core_taxes`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_items`
--

CREATE TABLE `core_items` (
  `material_id` int(11) NOT NULL,
  `material_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `hsn_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `sac_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `head_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `subcategory_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discription` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `purchase_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `min_quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_x` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_y` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_z` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `dimension_unit` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_tax_groups` int(11) DEFAULT NULL,
  `last_modified_dtm` datetime DEFAULT NULL,
  `last_modified_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL,
  `fk_vendors` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_items`
--

INSERT INTO `core_items` (`material_id`, `material_code`, `material_name`, `material_unit`, `hsn_code`, `sac_code`, `head_name`, `category_name`, `subcategory_name`, `manufacturer`, `discription`, `material_rate`, `purchase_rate`, `discount`, `material_quantity`, `min_quantity`, `measurement_x`, `measurement_y`, `measurement_z`, `dimension_unit`, `fk_core_tax_groups`, `last_modified_dtm`, `last_modified_type`, `fk_core_firms`, `fk_vendors`) VALUES
(1, '0001', 'Item1', 'Rft', '07', '', 'Head', 'Catergory', 'Sub category', 'Manufacturer', 'Dec', '10', '12', '10', '12', '11', '1', '1', '1', 'MM', 1, '2018-12-09 17:34:07', 'update', 1, 1),
(2, '0002', 'jhnkj', 'Nos', 'kjh', '', 'hkjhkj', 'hjk', 'hkj', 'jkh', 'h', 'kj', '', 'hjkh', 'kjh', '', '11', '12', '13', 'MM', 1, '2018-12-09 17:38:47', 'update', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_materials`
--

CREATE TABLE `core_materials` (
  `material_id` int(11) NOT NULL,
  `material_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `hsn_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `sac_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `head_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `subcategory_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discription` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `purchase_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `alloted_qty` varchar(50) CHARACTER SET utf16 DEFAULT '0',
  `min_quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_x` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_y` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_z` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `dimension_unit` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_tax_groups` int(11) DEFAULT NULL,
  `last_modified_dtm` datetime DEFAULT NULL,
  `last_modified_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL,
  `fk_vendors` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_materials`
--

INSERT INTO `core_materials` (`material_id`, `material_code`, `material_name`, `material_unit`, `hsn_code`, `sac_code`, `head_name`, `category_name`, `subcategory_name`, `manufacturer`, `discription`, `material_rate`, `purchase_rate`, `discount`, `material_quantity`, `alloted_qty`, `min_quantity`, `measurement_x`, `measurement_y`, `measurement_z`, `dimension_unit`, `fk_core_tax_groups`, `last_modified_dtm`, `last_modified_type`, `fk_core_firms`, `fk_vendors`) VALUES
(1, '0001', 'Material1', 'Nos', '', '', 'Head', 'Caregory', 'Sub caregory', 'Make', 'Description', '120', '100', '10', '150', '0', '110', '1', '1', '1', 'Inches', 1, '2018-12-09 17:32:42', 'update', 1, 1),
(2, '0002', 'bnmb', 'Nos', 'nb', '', 'bn', 'b', 'mnb', 'mnb', 'nmb', 'mbbn', 'mb', 'mnb', '100', '0', 'mnb', '11', '12', '13', 'MM', 1, '2018-12-09 17:33:33', 'update', 1, 0),
(3, '0003', 'Material1', 'Nos', '', '', '', 'Ca1', 'sub cat', '', '', '', '', '', '', '0', '', '', '', '', 'Inches', 0, '2018-12-11 16:07:55', 'new', 1, 0),
(4, '0003', 'Material1', 'Nos', '', '', '', 'Ca1', 'sub cat', '', '', '', '', '', '', '0', '', '', '', '', 'Inches', 0, '2018-12-11 16:08:08', 'new', 1, 0),
(5, '0004', 'asf', 'Nos', '', '', 'safa', 'as', 'sa', '', '', '', '', '', '', '0', '', '', '', '', 'Inches', 0, '2018-12-19 17:30:54', 'new', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_settings`
--

CREATE TABLE `core_settings` (
  `setting_id` int(11) NOT NULL,
  `module_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `module_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `module_label` varchar(255) CHARACTER SET utf16 NOT NULL,
  `section_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `section_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `setting_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `setting_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `setting_description` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `setting_value` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `value_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `core_taxes`
--

CREATE TABLE `core_taxes` (
  `tax_id` int(11) NOT NULL,
  `tax_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_factor` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_order` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_sequence` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `last_modified_dtm` datetime DEFAULT NULL,
  `last_modified_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_taxes`
--

INSERT INTO `core_taxes` (`tax_id`, `tax_code`, `tax_name`, `tax_factor`, `tax_order`, `tax_sequence`, `last_modified_dtm`, `last_modified_type`) VALUES
(1, '001', 'SGST(5%)', '0.05', '1', '1', '2018-12-09 17:30:59', 'new'),
(2, '002', 'CGST(5%)', '0.05', '1', '1', '2018-12-09 17:31:22', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `core_tax_groups`
--

CREATE TABLE `core_tax_groups` (
  `group_id` int(11) NOT NULL,
  `group_code` varchar(45) DEFAULT NULL,
  `group_name` varchar(60) DEFAULT NULL,
  `hsn_code` varchar(20) DEFAULT NULL,
  `sac_code` varchar(20) DEFAULT NULL,
  `last_modified_dtm` datetime DEFAULT NULL,
  `last_modified_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core_tax_groups`
--

INSERT INTO `core_tax_groups` (`group_id`, `group_code`, `group_name`, `hsn_code`, `sac_code`, `last_modified_dtm`, `last_modified_type`, `fk_core_firms`) VALUES
(1, '1', 'GST(10%)', '', '', '2018-12-09 17:31:47', 'new', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_users`
--

CREATE TABLE `core_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `first_name` varchar(90) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `firm_name` varchar(255) DEFAULT NULL,
  `firm_id` varchar(255) DEFAULT NULL,
  `fk_executive_id` int(11) DEFAULT NULL,
  `last_modified_dtm` datetime DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `web_session_id` varchar(255) DEFAULT NULL,
  `last_login_dtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `core_users`
--

INSERT INTO `core_users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `firm_name`, `firm_id`, `fk_executive_id`, `last_modified_dtm`, `dept`, `role`, `web_session_id`, `last_login_dtm`) VALUES
(1, 'unique', 'admin123', 'Unique', 'Ventures', 'Empower Designs Private Limited', '1,2,3,4', 1, '2018-11-21 10:32:31', 'admin', 'manager', 'GFZeGNWFiG', '2018-12-10 11:08:53'),
(2, 'sales1', 'sales1', 'Sales', 'Executive (1)', 'Empower Designs Private Limited', '1', NULL, '2018-11-21 10:37:02', 'sales', 'executive', '9xHrIkLeh4', '2018-11-27 13:40:45'),
(3, 'sales2', 'sales2', 'Sales', 'Executive 2', 'Empower Designs Private Limited', '1', NULL, '2018-11-21 10:59:04', 'sales', 'executive', NULL, NULL),
(4, 'sales3', 'sales3', 'Sales', 'Executive 3', 'Empower Designs Private Limited', '1', NULL, '2018-11-21 11:00:12', 'sales', 'executive', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_banks`
--

CREATE TABLE `core_vendor_banks` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_manager` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `contact_person` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `alternate_contact_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `bank_address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `account_no` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_core_vendors` int(11) DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `core_vendor_banks`
--

INSERT INTO `core_vendor_banks` (`bank_id`, `bank_name`, `branch_name`, `bank_manager`, `contact_person`, `contact_no`, `alternate_contact_no`, `bank_address`, `notes`, `account_no`, `ifsc_code`, `fk_core_vendors`, `fk_core_firms`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1),
(4, '', '', '', '', '', '', '', '', '', '', 5, 1),
(5, '', '', '', '', '', '', '', '', '', '', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hrm_attendance_punches`
--

CREATE TABLE `hrm_attendance_punches` (
  `punch_id` int(11) NOT NULL,
  `punch_dtm` datetime DEFAULT NULL,
  `punch_entries` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_hrm_employees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_employees`
--

CREATE TABLE `hrm_employees` (
  `employee_id` int(11) NOT NULL,
  `employee_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `middle_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `birth_dt` datetime DEFAULT NULL,
  `blood_group` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `personal_email` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `personal_mobile` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `personal_telephone` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `official_contact` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `official_email` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `permanent_pincode` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `permanent_city` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `permanent_state` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `permanent_country` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `communication_city` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `communication_state` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `communication_address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `communication_country` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `communication_pincode` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `joined_dtm` datetime DEFAULT NULL,
  `offered_ctc` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `photo_filename` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `ratings` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `addition_dtm` datetime DEFAULT NULL,
  `addition_username` varchar(255) CHARACTER SET utf16 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrm_employees`
--

INSERT INTO `hrm_employees` (`employee_id`, `employee_code`, `first_name`, `middle_name`, `last_name`, `gender`, `birth_dt`, `blood_group`, `personal_email`, `personal_mobile`, `personal_telephone`, `official_contact`, `official_email`, `permanent_address`, `permanent_pincode`, `permanent_city`, `permanent_state`, `permanent_country`, `communication_city`, `communication_state`, `communication_address`, `communication_country`, `communication_pincode`, `department`, `designation`, `joined_dtm`, `offered_ctc`, `photo_filename`, `ratings`, `addition_dtm`, `addition_username`) VALUES
(1, 'Esafa', 'Vishal', 'jkk', 'ghg', 'Male', '2018-12-12 00:00:00', 'Select', 'af@gmail.com', '9876543210', '9876543210', '', 'af@gmail.com', 'jkhkhjhk', '445445', 'North Delhi', 'Delhi', 'India', '', '', '', 'India', '', 'IT Dept', 'khgjgj', '2018-12-22 00:00:00', '565', 'pic_1_1.png', '4', '2018-12-22 07:59:59', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hrm_employee_documents`
--

CREATE TABLE `hrm_employee_documents` (
  `document_id` int(11) NOT NULL,
  `document_no` int(255) DEFAULT NULL,
  `document_title` int(255) DEFAULT NULL,
  `document_type` int(255) DEFAULT NULL,
  `document_description` int(255) DEFAULT NULL,
  `document_filename` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_hrm_employees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_employee_experiences`
--

CREATE TABLE `hrm_employee_experiences` (
  `experience_id` int(11) NOT NULL,
  `organization` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `salary` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `background` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_hrm_employees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_employee_qualifications`
--

CREATE TABLE `hrm_employee_qualifications` (
  `qualification_id` int(11) NOT NULL,
  `qualification_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `course_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `specialization` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `institute_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `passing_year` datetime DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_hrm_employees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_holidays`
--

CREATE TABLE `hrm_holidays` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dt` datetime DEFAULT NULL,
  `holiday_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `holiday_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `holiday_length` varchar(255) CHARACTER SET utf16 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_leaves`
--

CREATE TABLE `hrm_leaves` (
  `leave_id` int(11) NOT NULL,
  `leave_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `start_dt` datetime DEFAULT NULL,
  `end_dt` datetime DEFAULT NULL,
  `total_leaves` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_hrm_employees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_leave_requisitions`
--

CREATE TABLE `hrm_leave_requisitions` (
  `requisition_id` int(11) NOT NULL,
  `leave_from_dtm` datetime DEFAULT NULL,
  `leave_to_dtm` datetime DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `leave_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `requisition_dt` datetime DEFAULT NULL,
  `fk_hrm_employees` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `approver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_payrolls`
--

CREATE TABLE `hrm_payrolls` (
  `payroll_id` int(11) NOT NULL,
  `payroll_from_dt` datetime DEFAULT NULL,
  `payroll_to_dt` datetime DEFAULT NULL,
  `payable_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `payroll_narration` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `payroll_remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_payroll_components`
--

CREATE TABLE `hrm_payroll_components` (
  `component_id` int(11) NOT NULL,
  `component_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `component_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `total_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_hrm_payroll_contents` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_payroll_contents`
--

CREATE TABLE `hrm_payroll_contents` (
  `content_id` int(11) NOT NULL,
  `payroll_from_dt` datetime DEFAULT NULL,
  `payroll_to_dt` datetime DEFAULT NULL,
  `payable_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `payroll_narration` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_hrm_employees` int(11) DEFAULT NULL,
  `fk_hrm_payrolls` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_salaries`
--

CREATE TABLE `hrm_salaries` (
  `salary_id` int(11) NOT NULL,
  `annual_ctc` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `monthly_ctc` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_hrm_employees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrm_salaries`
--

INSERT INTO `hrm_salaries` (`salary_id`, `annual_ctc`, `monthly_ctc`, `fk_hrm_employees`) VALUES
(1, '12000', '1000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hrm_salary_components`
--

CREATE TABLE `hrm_salary_components` (
  `component_id` int(11) NOT NULL,
  `component_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `component_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `component_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `total_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_hrm_salaries` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrm_salary_components`
--

INSERT INTO `hrm_salary_components` (`component_id`, `component_code`, `component_name`, `component_type`, `total_amount`, `fk_hrm_salaries`) VALUES
(15, '', 'Basic(+)DA', '0', '1000', 1),
(16, '', 'Medical Allowance', '0', '0', 1),
(17, '', 'House Rent Allowance', '0', '0', 1),
(18, '', 'Conveyance', '0', '0', 1),
(19, '', 'Advance/Loan', '0', '0', 1),
(20, '', 'Other Allowance', '0', '0', 1),
(21, '', 'Education Allowance', '0', '0', 1),
(22, '', 'OT Allowance', '0', '0', 1),
(23, '', 'PF', '1', '0', 1),
(24, '', 'ESIC', '1', '0', 1),
(25, '', 'Profession Tax', '1', '0', 1),
(26, '', 'Advance/Loan', '1', '0', 1),
(27, '', 'Other Deductions', '1', '0', 1),
(28, '', 'Leave Deductions', '1', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_corporates`
--

CREATE TABLE `master_corporates` (
  `corporate_id` int(11) NOT NULL,
  `corporate_name` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `mobile_no` varchar(13) DEFAULT NULL,
  `phone_no` varchar(13) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `identity_no` varchar(30) DEFAULT NULL,
  `license_no` varchar(30) DEFAULT NULL,
  `pan_no` varchar(30) DEFAULT NULL,
  `state_code` varchar(5) DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  `contact_mobile` varchar(13) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `outstanding_balanace` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `master_enquirys`
--

CREATE TABLE `master_enquirys` (
  `enquiry_id` int(11) NOT NULL,
  `enquiry_name` varchar(50) DEFAULT NULL,
  `mobile_number` int(15) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `identity_no` varchar(30) DEFAULT NULL,
  `balance` varchar(30) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `master_executives`
--

CREATE TABLE `master_executives` (
  `executive_id` int(11) NOT NULL,
  `executive_name` varchar(45) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `address` varchar(150) NOT NULL,
  `identity_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `master_firms`
--

CREATE TABLE `master_firms` (
  `firm_id` int(11) NOT NULL,
  `firm_code` varchar(30) DEFAULT NULL,
  `firm_name` varchar(50) DEFAULT NULL,
  `firm_type` varchar(255) DEFAULT 'Firm',
  `office_address` varchar(150) DEFAULT NULL,
  `registered_address` varchar(255) DEFAULT NULL,
  `factory_address` varchar(255) DEFAULT NULL,
  `tan_no` varchar(255) DEFAULT NULL,
  `tds` varchar(255) DEFAULT NULL,
  `roc` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `mobile_no` varchar(100) DEFAULT NULL,
  `phone_no` varchar(13) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `state_code` varchar(5) DEFAULT NULL,
  `gst_no` varchar(30) DEFAULT NULL,
  `pan_no` varchar(30) DEFAULT NULL,
  `reg_cst_no` varchar(25) DEFAULT NULL,
  `reg_vat_no` varchar(25) DEFAULT NULL,
  `license_no` varchar(30) DEFAULT NULL,
  `reference_no` varchar(30) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `contact_mobile` varchar(13) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `invoice_prefix` varchar(30) DEFAULT NULL,
  `invoice_title` varchar(255) DEFAULT NULL,
  `invoice_header` varchar(255) DEFAULT NULL,
  `invoice_signatory` varchar(255) DEFAULT NULL,
  `invoice_declaration` varchar(255) DEFAULT NULL,
  `invoice_jurisdiction` varchar(255) DEFAULT NULL,
  `default_flag` tinyint(1) DEFAULT '0',
  `website_url` varchar(255) DEFAULT NULL,
  `logo_img` varchar(50) DEFAULT 'default.png',
  `sign_img` varchar(50) DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `master_firms`
--

INSERT INTO `master_firms` (`firm_id`, `firm_code`, `firm_name`, `firm_type`, `office_address`, `registered_address`, `factory_address`, `tan_no`, `tds`, `roc`, `city`, `state`, `country`, `mobile_no`, `phone_no`, `email_address`, `state_code`, `gst_no`, `pan_no`, `reg_cst_no`, `reg_vat_no`, `license_no`, `reference_no`, `contact_person`, `contact_mobile`, `contact_email`, `invoice_prefix`, `invoice_title`, `invoice_header`, `invoice_signatory`, `invoice_declaration`, `invoice_jurisdiction`, `default_flag`, `website_url`, `logo_img`, `sign_img`) VALUES
(1, '1', 'Empower Designs Private Limited', 'Firm', '', 'Gat no 272, Santosh Nagar, Vaki Budruk, Taluka Khed, Dist Pune 410501', '', '', '', '', 'Pune', 'Maharashtra', 'India', '24223940, 976', '', 'uniquewood6666@gmail.com', '27', '27AADCE0103E1ZF', 'AADCE  0103E', NULL, NULL, '', NULL, '', '', '', 'UNIQUE/18-19', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'contact_ico_1_3.png', 'sign_ico_1.png'),
(2, '2', 'Empower Designs Private Limited(2)', 'Firm', '', 'Avon, Row House no.5, 31/2A/2, Dhankude Wasti, Near Farmer\'s & Grocer\'s lane, Pan Card club road, Pune - 411045', '', '', '', '', 'Pune', 'Maharashtra', 'India', '918446008915', '8446008916', 'empower.mktg@gmail.com', '27', '27AADCE0103E1ZF', 'AADCE  0103E', NULL, NULL, '', NULL, '', '', '', 'UNIQUE/18-19', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'firm_ico_2.png', 'sign_ico_2.png'),
(3, '3', 'Empower Designs Private Limited(3)', 'Firm', '', 'Avon, Row House no.5, 31/2A/2, Dhankude Wasti, Near Farmer\'s & Grocer\'s lane, Pan Card club road, Pune - 411045', '', '', '', '', 'Pune', 'Maharashtra', 'India', '918446008915', '8446008916', 'empower.mktg@gmail.com', '27', '27AADCE0103E1ZF', 'AADCE  0103E', NULL, NULL, '', NULL, '', '', '', 'UNIQUE/18-19', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'default.png', 'default.png'),
(4, '4', 'Empower Designs Private Limited(4)', 'Firm', '', 'Avon, Row House no.5, 31/2A/2, Dhankude Wasti, Near Farmer\'s & Grocer\'s lane, Pan Card club road, Pune - 411045', '', '', '', '', 'Pune', 'Maharashtra', 'India', '918446008915', '8446008916', 'empower.mktg@gmail.com', '27', '27AADCE0103E1ZF', 'AADCE  0103E', NULL, NULL, '', NULL, '', '', '', 'UNIQUE/18-19', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'default.png', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `master_questions`
--

CREATE TABLE `master_questions` (
  `question_id` int(11) NOT NULL,
  `question_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `question_name` text CHARACTER SET utf16,
  `status` varchar(255) CHARACTER SET utf16 DEFAULT '1',
  `fk_core_firms` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_questions`
--

INSERT INTO `master_questions` (`question_id`, `question_code`, `question_name`, `status`, `fk_core_firms`) VALUES
(1, '001', 'gjhjgjg', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_templates`
--

CREATE TABLE `master_templates` (
  `templete_id` int(11) NOT NULL,
  `templete_name` varchar(255) DEFAULT NULL,
  `x-value` varchar(255) DEFAULT NULL,
  `y-value` varchar(255) DEFAULT NULL,
  `z-value` varchar(255) DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `master_vendors`
--

CREATE TABLE `master_vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `mobile_no` varchar(13) DEFAULT NULL,
  `phone_no` varchar(13) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `identity_no` varchar(30) DEFAULT NULL,
  `license_no` varchar(30) DEFAULT NULL,
  `pan_no` varchar(30) DEFAULT NULL,
  `state_code` varchar(5) DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  `contact_mobile` varchar(13) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `outstanding_balanace` varchar(30) NOT NULL,
  `gst_flag` int(5) DEFAULT '1',
  `fk_core_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `master_vendors`
--

INSERT INTO `master_vendors` (`vendor_id`, `vendor_name`, `address`, `city`, `state`, `country`, `mobile_no`, `phone_no`, `email_address`, `identity_no`, `license_no`, `pan_no`, `state_code`, `contact_name`, `contact_mobile`, `contact_email`, `outstanding_balanace`, `gst_flag`, `fk_core_firms`) VALUES
(1, 'Vendor 1', '', '', 'MAHARASHTRA', 'INIDA', '995036920', '99546321', 'email@gmail.com', '', '', '', '007', '', '', '', '0', 1, 1),
(2, 'jhgjhgjhg', 'hjk', 'hkjh', 'kjhjk', 'jkh', '345464', 'hg', 'hjj', 'jkhjk', 'jkh', 'hkj', 'hjk', 'hkjhkj', 'hkj', 'hkj', '0', 1, 1),
(3, 'jhgjhgjhg', 'hjk', 'hkjh', 'kjhjk', 'jkh', '345464', 'hg', 'hjj', 'jkhjk', 'jkh', 'hkj', 'hjk', 'hkjhkj', 'hkj', 'hkj', '0', 1, 1),
(4, 'kljk', 'klj', 'klj', 'jlk', 'jlk', 'jkj', 'lkjlk', 'jkl', 'lkj', 'lkj', 'lkj', 'jklj', 'lkj', 'klj', 'klj', '0', 1, 1),
(5, 'jhkhkjh', '', '', 'hjkhjk', 'asfassa', '6565645465', '54465454', 'asffas', '5645456456', '', '', '07', '', '', '', '0', 1, 1),
(6, 'pppppp', '', '', 'safsfa', 'fsasaf', '99999999', '99999999', 'dvss@gmail.cm', '655', '', '', '07', '', '', '', '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `record_category_contents`
--

CREATE TABLE `record_category_contents` (
  `content_id` int(11) NOT NULL,
  `fk_master_categories` int(11) DEFAULT NULL,
  `fk_master_items` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_challans`
--

CREATE TABLE `record_challans` (
  `challan_id` int(11) NOT NULL,
  `challan_no` varchar(30) DEFAULT NULL,
  `challan_dt` date DEFAULT NULL,
  `challan_type` varchar(20) DEFAULT NULL,
  `vehicle_no` varchar(30) DEFAULT NULL,
  `gst_no` varchar(20) DEFAULT NULL,
  `receiver_name` varchar(70) DEFAULT NULL,
  `receiver_mobile` varchar(15) DEFAULT NULL,
  `receiver_address` varchar(50) DEFAULT NULL,
  `receiver_identity_no` varchar(30) DEFAULT NULL,
  `generation_user` varchar(50) DEFAULT NULL,
  `generation_dtm` datetime DEFAULT NULL,
  `net_amount` varchar(30) DEFAULT NULL,
  `tax_amount` varchar(30) DEFAULT NULL,
  `gross_amount` varchar(30) DEFAULT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `terms_conditions` varchar(150) DEFAULT NULL,
  `fk_master_firms` int(11) DEFAULT NULL,
  `fk_master_coporates` int(11) DEFAULT NULL,
  `fk_master_customers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_challan_contents`
--

CREATE TABLE `record_challan_contents` (
  `content_id` int(11) NOT NULL,
  `item_quantity` varchar(20) NOT NULL,
  `item_unit` varchar(20) NOT NULL,
  `item_rate` varchar(20) NOT NULL,
  `item_sgst` varchar(20) NOT NULL,
  `item_cgst` varchar(20) NOT NULL,
  `fk_record_stocks` int(11) NOT NULL,
  `fk_record_invoices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_expenses`
--

CREATE TABLE `record_expenses` (
  `expense_id` int(11) NOT NULL,
  `expense_no` varchar(20) DEFAULT NULL,
  `expense_dt` date DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `generation_user` varchar(50) DEFAULT NULL,
  `generation_dtm` datetime DEFAULT NULL,
  `fk_master_customers` int(11) DEFAULT NULL,
  `fk_master_coporates` int(11) DEFAULT NULL,
  `fk_master_vendors` int(11) DEFAULT NULL,
  `fk_master_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_invoices`
--

CREATE TABLE `record_invoices` (
  `invoice_id` int(11) NOT NULL,
  `invoice_no` varchar(30) DEFAULT NULL,
  `invoice_dt` date DEFAULT NULL,
  `invoice_type` varchar(20) DEFAULT NULL,
  `vehicle_no` varchar(30) DEFAULT NULL,
  `gst_no` varchar(20) DEFAULT NULL,
  `receiver_name` varchar(70) DEFAULT NULL,
  `receiver_mobile` varchar(15) DEFAULT NULL,
  `receiver_address` varchar(50) DEFAULT NULL,
  `receiver_identity_no` varchar(30) DEFAULT NULL,
  `generation_user` varchar(50) DEFAULT NULL,
  `generation_dtm` datetime DEFAULT NULL,
  `net_amount` varchar(30) DEFAULT NULL,
  `tax_amount` varchar(30) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `gross_amount` varchar(30) DEFAULT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  `fk_master_corporates` int(11) DEFAULT NULL,
  `fk_master_customers` int(11) DEFAULT NULL,
  `fk_master_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_invoice_contents`
--

CREATE TABLE `record_invoice_contents` (
  `content_id` int(11) NOT NULL,
  `item_quantity` varchar(20) DEFAULT NULL,
  `item_unit` varchar(20) DEFAULT NULL,
  `item_rate` varchar(20) DEFAULT NULL,
  `tax_percent` varchar(20) DEFAULT NULL,
  `tax_amount` varchar(20) DEFAULT NULL,
  `total_amount` varchar(20) DEFAULT NULL,
  `fk_record_stocks` int(11) DEFAULT NULL,
  `fk_record_invoices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_invoice_taxes`
--

CREATE TABLE `record_invoice_taxes` (
  `content_id` int(11) NOT NULL,
  `item_quantity` varchar(20) NOT NULL,
  `item_unit` varchar(20) NOT NULL,
  `item_rate` varchar(20) NOT NULL,
  `item_sgst` varchar(20) NOT NULL,
  `item_cgst` varchar(20) NOT NULL,
  `fk_record_stocks` int(11) NOT NULL,
  `fk_record_invoices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_passbook`
--

CREATE TABLE `record_passbook` (
  `passbook_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `passbook_dt` date DEFAULT NULL,
  `mode` varchar(50) DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `fk_record_payments` int(11) DEFAULT NULL,
  `fk_record_expenses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_payments`
--

CREATE TABLE `record_payments` (
  `payment_id` int(11) NOT NULL,
  `payment_code` varchar(30) DEFAULT NULL,
  `payment_dtm` datetime DEFAULT NULL,
  `reference_no` varchar(30) DEFAULT NULL,
  `payment_mode` varchar(10) DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `cheque_no` varchar(30) DEFAULT NULL,
  `cheque_dt` date DEFAULT NULL,
  `account_no` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(45) DEFAULT NULL,
  `bank_name` varchar(80) DEFAULT NULL,
  `branch_name` varchar(80) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `fk_master_customers` int(11) DEFAULT NULL,
  `fk_master_vendors` int(11) DEFAULT NULL,
  `fk_master_coporates` int(11) DEFAULT NULL,
  `fk_master_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_purchase_invoices`
--

CREATE TABLE `record_purchase_invoices` (
  `invoice_id` int(11) NOT NULL,
  `invoice_no` varchar(45) NOT NULL,
  `invoice_dt` date NOT NULL,
  `fk_master_vendors` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `record_stocks`
--

CREATE TABLE `record_stocks` (
  `stock_id` int(11) NOT NULL,
  `batch_no` varchar(10) NOT NULL,
  `purchase_dt` date DEFAULT NULL,
  `expiry_dt` date NOT NULL,
  `manufacture_dt` date NOT NULL,
  `packaging_quantity` varchar(10) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `stock_qty` varchar(10) NOT NULL,
  `pending_quantity` varchar(10) NOT NULL,
  `item_hsn` varchar(20) NOT NULL,
  `purchase_price` varchar(10) NOT NULL,
  `item_mrp` varchar(10) NOT NULL,
  `discount` varchar(10) NOT NULL,
  `item_sgst` varchar(10) NOT NULL,
  `item_cgst` varchar(10) NOT NULL,
  `item_igst` varchar(15) DEFAULT NULL,
  `cash_retail_rate` varchar(20) NOT NULL,
  `credit_retail_rate` varchar(20) NOT NULL,
  `cash_wholesale_rate` varchar(20) NOT NULL,
  `credit_wholesale_rate` varchar(20) NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `fk_master_vendors` int(11) DEFAULT NULL,
  `fk_master_items` int(11) NOT NULL,
  `fk_record_purchases_invoices` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_customers`
--

CREATE TABLE `uerp_customers` (
  `customer_id` int(11) NOT NULL,
  `customer_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `middle_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `lead_source` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `person_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `requirements` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `time_frame` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `assign_to` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `visit_date` varchar(30) DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `measurement` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `quotation_status` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `quotation_value` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `watsapp_pref` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `email_pref` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `call_pref` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `number_calls` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `order_id` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `current_status` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `final_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `gst_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `office_mobile` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `office_phone` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `office_email` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `registered_address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `lead_score` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `advance` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `due_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `stage` int(11) DEFAULT '1',
  `logo_img` varchar(50) CHARACTER SET utf16 DEFAULT 'default.png',
  `fk_employee` int(11) DEFAULT NULL,
  `fk_lead_source` int(11) DEFAULT NULL,
  `fk_master_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_customers`
--

INSERT INTO `uerp_customers` (`customer_id`, `customer_no`, `created_date`, `first_name`, `middle_name`, `last_name`, `address`, `contact_no`, `email`, `company`, `lead_source`, `person_type`, `requirements`, `time_frame`, `assign_to`, `visit_date`, `customer_type`, `measurement`, `quotation_status`, `quotation_value`, `watsapp_pref`, `email_pref`, `call_pref`, `number_calls`, `order_id`, `current_status`, `final_amount`, `remark`, `gst_no`, `city`, `state`, `country`, `office_mobile`, `office_phone`, `office_email`, `registered_address`, `lead_score`, `advance`, `due_amount`, `stage`, `logo_img`, `fk_employee`, `fk_lead_source`, `fk_master_firms`) VALUES
(1, '1', '2018-12-23 20:01:27', 'First', 'First Last', 'Last', '', '995036944', 'email@gmail.com', '', '', '', '', '', 'Unique Ventures', '18/12/2018', 'Amazing', '', 'Pending', '', '', '', '', '', '', '', '', '', '', '', '', '', '9950362145', '', '', '', '', '', '', 2, NULL, 0, 0, 1),
(2, '2', '2018-12-09 20:59:31', 'gjghj', 'gjghj ghghj', 'ghghj', '', '4335435', 'email@gmail.com', 's', 'email@gmail.com', 'ghjg', '', '', 'Unique Ventures', '0000-00-00 00:00:00', 'Amazing', '', 'Pending', '', '', '', '', '', '12', '', '', '', '', '', '', '', '3453435434', '', 'email@gmail.com', '', '', 'order', '', 4, NULL, 0, 0, 1),
(3, '3', '2018-12-13 13:55:56', 'kghkgh', 'kghkgh ghgj', 'ghgj', '', 'gjh', 'gjh', 'jhgjh', '', 'hghjg', '', '', 'hjg', '0000-00-00 00:00:00', 'Amazing', '', 'Pending', '', '', '', '', '', '', '', '', '', '', '', '', '', '655645645', '', '', '', '', '', '', 1, 'contact_ico_1_3.png', 0, 0, 1),
(4, '4', '2018-12-13 13:58:32', 'nmbm', 'nmbm bb', 'bb', '', 'nb', 'mnbmn', 'b', 'bmn', 'b', '', '', 'nmbmn', '0000-00-00 00:00:00', 'Amazing', '', 'Pending', 'bn', '', '', '', '', '', 'nmbn', '', '', 'bn', 'bmn', 'bnm', 'bmn', 'bnm', 'bnm', 'b', 'bmnb', '', '', '', 1, 'contact_ico_1_4.png', 0, 0, 1),
(5, '5', '2018-12-23 16:24:55', 'Vishal', 'Vishal hgjhgjh', 'hgjhgjh', 'hj', 'ghj', 'ghj', 'ghj', 'ghj', 'ghjg', 'ghj', '', 'hjghj', '17/12/2018', 'Amazing', 'ghj', 'Pending', 'ghj', '', '', '', '', '', 'hj', '', 'hjg', 'ghj', 'gh', 'jg', 'hjg', 'gjh', 'gh', 'jg', 'hjg', '', '', '', 1, 'contact_ico_1_5.png', 0, 0, 1),
(6, '6', '2019-01-02 13:12:08', 'Vishal', 'Vishal Last', 'Last', 'safsafas', '95545455645', 'vaisha@gmail.com', '', 'ghj', 'ghjg', 'safasfasfas', '', 'Unique Ventures', '02/01/2019', 'Amazing', 'asfsafasafs', 'Pending', '2000', '', '', '', '', '6', 'Pending', '', 'afsasfa', '9876543210', 'Pune', 'Maharshtra', 'India', '8988988988', '8987878787', 'vaisha@gmail.com', 'asfasfas', '', 'order', '', 4, 'default.png', 1, 0, 1),
(7, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'default.png', NULL, NULL, 1),
(8, '7', '2019-01-02 13:19:27', 'Vishal', 'Vishal Last', 'Last', '', '454545', '4', 'sada', '', 'ghjg', '', '', 'Unique Ventures', '02/01/2019', 'Amazing', '', 'Pending', '', '', '', '', '', '7', '', '', '', '', '', '', '', '545455445', '', '', '', '', 'order', '', 4, 'default.png', 1, 0, 1),
(9, '8', '2019-01-02 13:21:43', 'Vishal', 'Vishal Last', 'Last', '', '68578678', 'vishalkawde9418@gmail.com', 'casom', 'ghj', 'sad', '', '', 'Unique Ventures', '02/01/2019', 'Amazing', '', 'Pending', '', '', '', '', '', '8', '', '', '', '', '', '', '', '56456456456', '564564645', '', '', '', 'order', '', 1, 'default.png', 1, 0, 1),
(10, '8', '2019-01-02 13:21:43', 'Vishal', 'Vishal Last', 'Last', '', '68578678', 'vishalkawde9418@gmail.com', 'casom', 'ghj', 'sad', '', '', 'Unique Ventures', '02/01/2019', 'Amazing', '', 'Pending', '', '', '', '', '', '8', '', '', '', '', '', '', '', '56456456456', '564564645', '', '', '', 'order', '', 1, 'default.png', 1, 0, 1),
(11, '8', '2019-01-02 13:21:43', 'Vishal', 'Vishal Last', 'Last', '', '68578678', 'vishalkawde9418@gmail.com', 'casom', 'ghj', 'sad', '', '', 'Unique Ventures', '02/01/2019', 'Amazing', '', 'Pending', '', '', '', '', '', '8', '', '', '', '', '', '', '', '56456456456', '564564645', '', '', '', 'order', '', 1, 'default.png', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_documents`
--

CREATE TABLE `uerp_documents` (
  `id` int(11) NOT NULL,
  `no` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `detail_description` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_core_executives` int(11) DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL,
  `fk_customers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_documents`
--

INSERT INTO `uerp_documents` (`id`, `no`, `section`, `purpose`, `type`, `file_name`, `detail_description`, `created_time`, `fk_core_executives`, `fk_core_firms`, `fk_customers`) VALUES
(3, 'sa_01', 'sales', 'nmbm bb', 'quotation', 'quotation1_1_1k.zip', '<p>Hey Oh</p>', '2018-12-30 21:39:50', 1, 1, 4),
(4, 'prod_01', 'productions', 'First Last', 'production_doc', 'production_doc1_1_mh.xls', '<p><b><u>heyyhfgfgfh&nbsp;</u></b></p>', '2019-01-06 09:34:32', 1, 1, 1),
(5, 'C_001', 'masters', 'gjghj ghghj', 'core_doc', 'core_doc1_1_Ve.xls', '<p><u><b>Hello</b></u></p>', '2019-01-06 10:24:21', 1, 1, 2),
(6, 'H_001', 'hrms', 'First Last', 'admin_doc', 'admin_doc1_1_fP.xls', '<p><img src=\"data:image/png;base64,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\" data-filename=\"Chart.png\" style=\"width: 484px;\"><br></p>', '2019-01-06 11:11:03', 1, 1, 1);
INSERT INTO `uerp_documents` (`id`, `no`, `section`, `purpose`, `type`, `file_name`, `detail_description`, `created_time`, `fk_core_executives`, `fk_core_firms`, `fk_customers`) VALUES
(7, 'H_001', 'hrms', 'First Last', 'admin_doc', 'admin_doc1_1_cg.xls', '<p><img src=\"data:image/png;base64,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\" data-filename=\"Chart.png\" style=\"width: 484px;\"><br></p>', '2019-01-06 11:11:06', 1, 1, 1),
(8, 'P_001', 'purchases', 'Vishal hgjhgjh', 'purchases_doc', 'purchases_doc1_1_qK.ods', '<b>fghfghfghfhgfghfh</b>', '2019-01-06 11:29:49', 1, 1, 5);
INSERT INTO `uerp_documents` (`id`, `no`, `section`, `purpose`, `type`, `file_name`, `detail_description`, `created_time`, `fk_core_executives`, `fk_core_firms`, `fk_customers`) VALUES
(9, 'S_001', 'store', 'First Last', 'store_doc', 'store_doc1_1_iH.1', '<p><img src=\"data:image/png;base64,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\" data-filename=\"logo.png\" style=\"width: 226px;\">&nbsp;jhgjhghghgjhgj<b></b></p>', '2019-01-06 13:08:17', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_follup_contents`
--

CREATE TABLE `uerp_follup_contents` (
  `content_id` int(11) NOT NULL,
  `question` text CHARACTER SET utf16,
  `answer` text CHARACTER SET utf16,
  `fk_uerp_follup_records` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_follup_contents`
--

INSERT INTO `uerp_follup_contents` (`content_id`, `question`, `answer`, `fk_uerp_follup_records`) VALUES
(3, 'gjhjgjg', '', 2),
(4, 'gjhjgjg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_follup_records`
--

CREATE TABLE `uerp_follup_records` (
  `follup_id` int(11) NOT NULL,
  `follup_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `follup_date` varchar(30) DEFAULT NULL,
  `follup_stage` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `follup_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `follup_status` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `executive_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `customer_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_uerp_leads` int(11) DEFAULT NULL,
  `fk_uerp_customers` int(11) DEFAULT NULL,
  `fk_core_executive` int(11) DEFAULT NULL,
  `fk_master_firms` int(11) DEFAULT '1',
  `next_follup_date` varchar(30) DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf16 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_follup_records`
--

INSERT INTO `uerp_follup_records` (`follup_id`, `follup_no`, `follup_date`, `follup_stage`, `follup_type`, `follup_status`, `contact_no`, `customer_name`, `executive_name`, `customer_no`, `fk_uerp_leads`, `fk_uerp_customers`, `fk_core_executive`, `fk_master_firms`, `next_follup_date`, `notes`) VALUES
(1, '1', '25/12/2018 03:10 AM', 'Follup 1', 'Call', 'Success', '995036944', 'First Last', 'Unique Ventures', '1', NULL, 1, 1, 1, '25/12/2018 03:10 AM', ''),
(2, '1', '23/12/2018 01:25 PM', 'Follup 2', 'Call', 'Success', '995036944', 'First Last', 'Unique Ventures', '1', NULL, 1, 1, 1, '3/01/2019 03:35 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `uerp_material_receipts`
--

CREATE TABLE `uerp_material_receipts` (
  `receipt_id` int(11) NOT NULL,
  `receipt_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `receipt_dtm` datetime DEFAULT NULL,
  `material_receipt_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `receipt_reference_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `vehicle_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_x` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_y` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_z` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `measurement_unit` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `weight_tare` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `weight_gross` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `weight_net` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `weight_unit` int(255) DEFAULT NULL,
  `weight_rst` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `sync_status` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discount_value` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `net_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `gross_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `generation_username` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `generation_dtm` datetime DEFAULT NULL,
  `financial_year` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL,
  `fk_core_suppliers` int(11) DEFAULT NULL,
  `fk_core_plants` int(11) DEFAULT NULL,
  `fk_core_vehicles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_material_receipt_contents`
--

CREATE TABLE `uerp_material_receipt_contents` (
  `content_id` int(11) NOT NULL,
  `material_quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_taxable_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_rate_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discount_value` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_uerp_material_receipts` int(11) DEFAULT NULL,
  `fk_uerp_purchase_invoices` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_material_receipt_taxes`
--

CREATE TABLE `uerp_material_receipt_taxes` (
  `tax_id` int(11) NOT NULL,
  `tax_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_factor` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_value` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_order` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_sequence` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `application_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_uerp_material_receipts` int(11) DEFAULT NULL,
  `fk_uerp_material_receipt_contents` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_orders`
--

CREATE TABLE `uerp_orders` (
  `customer_id` int(11) NOT NULL,
  `customer_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `middle_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `lead_source` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `person_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `requirements` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `time_frame` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `assign_to` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `visit_date` varchar(30) CHARACTER SET utf16 DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `measurement` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `quotation_status` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `quotation_value` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `watsapp_pref` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `email_pref` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `call_pref` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `number_calls` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `order_id` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `current_status` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `final_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `gst_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `office_mobile` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `office_phone` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `office_email` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `registered_address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `lead_score` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `advance` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `due_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `detail_description` mediumtext,
  `fk_customers` int(11) DEFAULT '1',
  `logo_img` varchar(50) CHARACTER SET utf16 DEFAULT 'default.png',
  `fk_employee` int(11) DEFAULT NULL,
  `fk_lead_source` int(11) DEFAULT NULL,
  `fk_master_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_orders`
--

INSERT INTO `uerp_orders` (`customer_id`, `customer_no`, `created_date`, `first_name`, `middle_name`, `last_name`, `address`, `contact_no`, `email`, `company`, `lead_source`, `person_type`, `requirements`, `time_frame`, `assign_to`, `visit_date`, `customer_type`, `measurement`, `quotation_status`, `quotation_value`, `watsapp_pref`, `email_pref`, `call_pref`, `number_calls`, `order_id`, `current_status`, `final_amount`, `remark`, `gst_no`, `city`, `state`, `country`, `office_mobile`, `office_phone`, `office_email`, `registered_address`, `lead_score`, `advance`, `due_amount`, `detail_description`, `fk_customers`, `logo_img`, `fk_employee`, `fk_lead_source`, `fk_master_firms`) VALUES
(1, '1', '2018-11-22 08:30:00', 'First', 'First Last', 'Last', '', '995036944', 'email@gmail.com', '', '', '', '', '', 'Unique Ventures', '0〰〭〰ⴰ〠〰㨰〺〰', 'Amazing', '', 'Pending', '', '', '', '', '', '', '', '', '', '', '', '', '', '9950362145', '', '', '', '', '', '', NULL, 2, NULL, 0, 0, 1),
(2, '2', '2018-12-09 20:59:31', 'gjghj', 'gjghj ghghj', 'ghghj', '', '4335435', 'email@gmail.com', 's', 'email@gmail.com', 'ghjg', '', '', 'Unique Ventures', '0〰〭〰ⴰ〠〰㨰〺〰', 'Amazing', '', 'Pending', '', '', '', '', '', '12', '', '', '', '', '', '', '', '3453435434', '', 'email@gmail.com', '', '', 'order', '', NULL, 4, NULL, 0, 0, 1),
(3, '3', '2018-12-13 13:55:56', 'kghkgh', 'kghkgh ghgj', 'ghgj', '', 'gjh', 'gjh', 'jhgjh', '', 'hghjg', '', '', 'hjg', '0〰〭〰ⴰ〠〰㨰〺〰', 'Amazing', '', 'Pending', '', '', '', '', '', '', '', '', '', '', '', '', '', '655645645', '', '', '', '', '', '', NULL, 1, 'contact_ico_1_3.png', 0, 0, 1),
(4, '4', '2018-12-13 13:58:32', 'nmbm', 'nmbm bb', 'bb', '', 'nb', 'mnbmn', 'b', 'bmn', 'b', '', '', 'nmbmn', '0〰〭〰ⴰ〠〰㨰〺〰', 'Amazing', '', 'Pending', 'bn', '', '', '', '', '', 'nmbn', '', '', 'bn', 'bmn', 'bnm', 'bmn', 'bnm', 'bnm', 'b', 'bmnb', '', '', '', NULL, 1, 'contact_ico_1_4.png', 0, 0, 1),
(5, '8', '2019-01-02 13:57:00', 'Vishal', 'Vishal Last', 'Last', '', '68578678', 'vishalkawde9418@gmail.com', 'casom', 'vishalkawde9418@gmail.com', 'sad', '', '', 'Unique Ventures', '', 'Amazing', '', 'Pending', '', '', '', '', '', '8', '', '', '', '', '', '', '', '56456456456', '564564645', '', '', '', 'order', '', '<p>safafasfsa</p>', 11, 'default.png', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_order_contents`
--

CREATE TABLE `uerp_order_contents` (
  `content_id` int(11) NOT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `material_quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `particular_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `particular_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `particular_rate_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_tax_groups` int(11) DEFAULT NULL,
  `fk_uerp_quotations` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_order_contents`
--

INSERT INTO `uerp_order_contents` (`content_id`, `fk_core_materials`, `material_quantity`, `material_unit`, `particular_rate`, `particular_type`, `particular_rate_type`, `fk_core_tax_groups`, `fk_uerp_quotations`) VALUES
(11, 1, '10', 'Unit', '10', 'Material', 'Exclusive', 1, 2),
(13, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_order_materials`
--

CREATE TABLE `uerp_order_materials` (
  `id` int(11) NOT NULL,
  `material_id` int(11) DEFAULT NULL,
  `head_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `subcategory_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_uerp_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_order_materials`
--

INSERT INTO `uerp_order_materials` (`id`, `material_id`, `head_name`, `category_name`, `subcategory_name`, `material_name`, `quantity`, `note`, `fk_uerp_order`) VALUES
(11, 1, 'Head', 'Caregory', 'Sub caregory', 'Material1', '10', 'Notes', 2),
(13, 1, 'Head', 'Caregory', 'Sub caregory', 'Material1', '10', 'notes', 5);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_order_taxes`
--

CREATE TABLE `uerp_order_taxes` (
  `tax_id` int(11) NOT NULL,
  `tax_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_factor` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_order` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_sequence` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_uerp_quotations` int(11) DEFAULT NULL,
  `fk_uerp_quotation_contents` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_order_taxes`
--

INSERT INTO `uerp_order_taxes` (`tax_id`, `tax_code`, `tax_name`, `tax_factor`, `tax_order`, `tax_sequence`, `fk_core_materials`, `fk_uerp_quotations`, `fk_uerp_quotation_contents`) VALUES
(21, '001', 'SGST(5%)', '0.05', '1', '1', 1, 2, 11),
(22, '002', 'CGST(5%)', '0.05', '1', '1', 1, 2, 11),
(25, '001', 'SGST(5%)', '0.05', '1', '1', 1, 5, 13),
(26, '002', 'CGST(5%)', '0.05', '1', '1', 1, 5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_prod_requisitions`
--

CREATE TABLE `uerp_prod_requisitions` (
  `requisition_id` int(11) NOT NULL,
  `requisition_code` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `priority` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `requisition_dtm` datetime DEFAULT NULL,
  `purchase_details` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `detail_description` mediumtext,
  `generation_username` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `generation_dtm` datetime DEFAULT NULL,
  `financial_year` datetime DEFAULT NULL,
  `fk_core_executives` int(11) DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_prod_requisitions`
--

INSERT INTO `uerp_prod_requisitions` (`requisition_id`, `requisition_code`, `reference_no`, `priority`, `status`, `requisition_dtm`, `purchase_details`, `remark`, `detail_description`, `generation_username`, `generation_dtm`, `financial_year`, `fk_core_executives`, `fk_core_firms`) VALUES
(1, '1', NULL, 'high', 'pending', '2018-12-09 00:00:00', 'hjjg', 'jkhkhj', NULL, 'admin', '2018-12-09 11:36:25', '0000-00-00 00:00:00', 1, 1),
(2, '2', '02', 'high', 'pending', '2018-12-10 00:00:00', 'Details', 'Remark', 'abc', 'admin', '2018-12-10 10:03:14', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_prod_requisition_contents`
--

CREATE TABLE `uerp_prod_requisition_contents` (
  `content_id` int(11) NOT NULL,
  `requested_quantity` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `approved_quantity` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `material_status` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_uerp_prod_requisitions` int(11) DEFAULT NULL,
  `fk_uerp_purchase_orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_prod_requisition_contents`
--

INSERT INTO `uerp_prod_requisition_contents` (`content_id`, `requested_quantity`, `approved_quantity`, `material_unit`, `material_status`, `fk_core_materials`, `fk_uerp_prod_requisitions`, `fk_uerp_purchase_orders`) VALUES
(1, '10', '10', 'cm', 'authenticated', 1, 1, NULL),
(8, '10', '10', 'Nos', 'authenticated', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_invoices`
--

CREATE TABLE `uerp_purchase_invoices` (
  `purchase_invoice_id` int(11) NOT NULL,
  `purchase_invoice_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `purchase_invoice_dtm` datetime DEFAULT NULL,
  `invoice_reference_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `purchase_invoice_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `billing_from_dtm` datetime DEFAULT NULL,
  `billing_to_dtm` datetime DEFAULT NULL,
  `net_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `gross_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL,
  `fk_core_suppliers` int(11) DEFAULT NULL,
  `fk_core_executives` int(11) DEFAULT NULL,
  `financial_year` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `generation_username` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `generation_dtm` datetime DEFAULT NULL,
  `fk_uerp_purchase_payments` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_invoice_contents`
--

CREATE TABLE `uerp_purchase_invoice_contents` (
  `content_id` int(11) NOT NULL,
  `material_quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `total_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_rate_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_core_tax_groups` int(11) DEFAULT NULL,
  `fk_uerp_purchase_invoices` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_invoice_taxes`
--

CREATE TABLE `uerp_purchase_invoice_taxes` (
  `tax_id` int(11) NOT NULL,
  `tax_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_factor` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_order` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_sequence` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_uerp_purchase_invoices` int(11) DEFAULT NULL,
  `fk_uerp_purchase_invoice_contents` int(11) DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `tax_value` varchar(100) CHARACTER SET utf16 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_orders`
--

CREATE TABLE `uerp_purchase_orders` (
  `purchase_order_id` int(11) NOT NULL,
  `purchase_order_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `purchase_order_dtm` datetime DEFAULT NULL,
  `purchase_order_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `validity_dt` datetime DEFAULT NULL,
  `reference_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `delivery_mode` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `net_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `gross_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `kind_attention` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL,
  `fk_core_suppliers` int(11) DEFAULT NULL,
  `fk_core_executives` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_order_contents`
--

CREATE TABLE `uerp_purchase_order_contents` (
  `content_id` int(11) NOT NULL,
  `material_quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_rate_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_percent` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `total_amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_tax_groups` int(11) DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_uerp_purchase_orders` int(11) DEFAULT NULL,
  `fk_uerp_material_receipts` int(11) DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf16 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_order_taxes`
--

CREATE TABLE `uerp_purchase_order_taxes` (
  `tax_id` int(11) NOT NULL,
  `tax_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_value` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_factor` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_uerp_purchase_orders` int(11) DEFAULT NULL,
  `fk_uerp_purchase_order_contents` int(11) DEFAULT NULL,
  `tax_order` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_sequence` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `application_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_order_terms`
--

CREATE TABLE `uerp_purchase_order_terms` (
  `term_id` int(11) NOT NULL,
  `term_code` varchar(60) CHARACTER SET utf16 DEFAULT NULL,
  `term_title` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `term_description` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `term_value` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_uerp_purchase_orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_payments`
--

CREATE TABLE `uerp_purchase_payments` (
  `payment_id` int(11) NOT NULL,
  `payment_dtm` datetime DEFAULT NULL,
  `reference_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `payment_mode` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `payment_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `cheque_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `cheque_dt` datetime DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL,
  `fk_core_suppliers` int(11) DEFAULT NULL,
  `fk_core_banks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_requisitions`
--

CREATE TABLE `uerp_purchase_requisitions` (
  `requisition_id` int(11) NOT NULL,
  `requisition_code` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `priority` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `requisition_dtm` datetime DEFAULT NULL,
  `purchase_details` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `detail_description` text,
  `generation_username` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `generation_dtm` datetime DEFAULT NULL,
  `financial_year` datetime DEFAULT NULL,
  `fk_core_executives` int(11) DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_purchase_requisitions`
--

INSERT INTO `uerp_purchase_requisitions` (`requisition_id`, `requisition_code`, `reference_no`, `priority`, `status`, `requisition_dtm`, `purchase_details`, `remark`, `detail_description`, `generation_username`, `generation_dtm`, `financial_year`, `fk_core_executives`, `fk_core_firms`) VALUES
(1, '1', NULL, 'high', 'pending', '2018-12-09 00:00:00', 'hjjg', 'jkhkhj', NULL, 'admin', '2018-12-09 11:36:25', '0000-00-00 00:00:00', 1, 1),
(2, '2', '02', 'high', 'pending', '2018-12-10 00:00:00', 'Details', 'Remark', NULL, 'admin', '2018-12-10 10:03:14', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_purchase_requisition_contents`
--

CREATE TABLE `uerp_purchase_requisition_contents` (
  `content_id` int(11) NOT NULL,
  `requested_quantity` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `approved_quantity` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `material_status` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_uerp_purchase_requisitions` int(11) DEFAULT NULL,
  `fk_uerp_purchase_orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_purchase_requisition_contents`
--

INSERT INTO `uerp_purchase_requisition_contents` (`content_id`, `requested_quantity`, `approved_quantity`, `material_unit`, `material_status`, `fk_core_materials`, `fk_uerp_purchase_requisitions`, `fk_uerp_purchase_orders`) VALUES
(1, '10', '10', 'cm', 'authenticated', 1, 1, NULL),
(8, '10', '0', 'Nos', 'unauthenticated', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_quotations`
--

CREATE TABLE `uerp_quotations` (
  `quotation_id` int(11) NOT NULL,
  `quotation_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `revision` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `quotation_dtm` datetime DEFAULT NULL,
  `reference_no` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `quotation_title` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `client_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `client_address` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `client_spoke` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `supervisor_details` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `detail_description` mediumtext,
  `fk_core_firms` int(11) DEFAULT NULL,
  `fk_core_executives` int(11) DEFAULT NULL,
  `fk_customers` int(11) DEFAULT NULL,
  `financial_year` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `generation_username` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `generation_dtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_quotations`
--

INSERT INTO `uerp_quotations` (`quotation_id`, `quotation_no`, `revision`, `quotation_dtm`, `reference_no`, `quotation_title`, `client_name`, `client_address`, `client_spoke`, `supervisor_details`, `remark`, `detail_description`, `fk_core_firms`, `fk_core_executives`, `fk_customers`, `financial_year`, `generation_username`, `generation_dtm`) VALUES
(1, '1', NULL, '2018-11-22 00:00:00', '', 'Titlle', 'First Last', 'Address', '', 'Details', 'Remark', NULL, 1, 1, 1, '17-18', 'admin', '2018-11-22 01:14:28'),
(2, '2', 'R1', '2018-11-22 00:00:00', '02', 'ghjfgfgh', 'First Last', 'asfsf', '', 'ghggfghf', '', NULL, 1, 1, 1, '17-18', 'admin', '2018-11-22 06:06:41'),
(3, '2', 'R2', '2018-11-22 00:00:00', '02', 'ghjfgfgh', 'First Last', 'asfsf', '', 'ghggfghf', '', NULL, 1, 1, 1, '17-18', 'admin', '2018-11-22 06:16:46'),
(4, '2', 'R2', '2018-11-22 00:00:00', '02', 'ghjfgfgh', 'First Last', 'asfsf', '', 'ghggfghf', '', NULL, 1, 1, 1, '17-18', 'admin', '2018-11-22 06:17:02'),
(5, '3', 'R1', '2018-12-09 00:00:00', '', 'dADad', 'First Last', '', '', '', 'awsfassa', NULL, 1, 1, 1, '17-18', 'admin', '2018-12-09 05:19:54'),
(6, '4', 'R1', '2018-12-09 00:00:00', '001', 'dfasf', 'First Last', 'safasf', 'fafas', 'asfassa', 'saafas', NULL, 1, 1, 1, '17-18', 'admin', '2018-12-09 06:17:11'),
(7, '5', 'R1', '2018-12-09 00:00:00', '001', 'noytes', 'First Last', 'kjhkhjhkj', 'lhkjh', 'kgjhghjg', 'sfasf', NULL, 1, 1, 1, '17-18', 'admin', '2018-12-09 06:48:55'),
(10, '5', 'R2', '2018-12-09 00:00:00', '001', 'noytes', 'First Last', 'kjhkhjhkj', 'lhkjh', 'kgjhghjg', 'sfasf', NULL, 1, 1, 1, '17-18', 'admin', '2018-12-09 11:29:41'),
(11, '6', 'R1', '2018-12-11 00:00:00', '', 'ghjg', 'First Last', 'bkggj', 'jhg', 'hgh', '', NULL, 1, 1, 1, '17-18', 'admin', '2018-12-11 04:48:02'),
(12, '6', 'R2', '2018-12-11 00:00:00', '', 'ghjg', 'First Last', 'bkggj', 'jhg', 'hgh', '', NULL, 1, 1, 1, '17-18', 'admin', '2018-12-24 01:54:46'),
(13, '7', 'R1', '2018-12-26 00:00:00', '', '', 'First Last', '', '', '', '', '<p><img src=\"data:image/png;base64,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\" data-filename=\"logo.png\" style=\"width: 226px;\">&nbsp; &nbsp;jhjkhkhkjhkjhjh</p><p><b>kjhjhkhj</b></p>', 1, 1, 1, '17-18', 'admin', '2018-12-26 05:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `uerp_quotation_contents`
--

CREATE TABLE `uerp_quotation_contents` (
  `content_id` int(11) NOT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `material_quantity` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `particular_rate` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `particular_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `particular_rate_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_tax_groups` int(11) DEFAULT NULL,
  `fk_uerp_quotations` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_quotation_contents`
--

INSERT INTO `uerp_quotation_contents` (`content_id`, `fk_core_materials`, `material_quantity`, `material_unit`, `particular_rate`, `particular_type`, `particular_rate_type`, `fk_core_tax_groups`, `fk_uerp_quotations`) VALUES
(6, 1, '10', 'Unit', '10', 'Material', 'Exclusive', 0, 1),
(8, 1, '10', 'Unit', '10', 'Material', 'Exclusive', 0, 3),
(9, 1, '10', 'Unit', '10', 'Material', 'Exclusive', 0, 4),
(10, 1, '10', 'Unit', '10', 'Material', 'Exclusive', 0, 2),
(13, 1, '10', 'KG', '10', 'Material', 'Exclusive', 0, 5),
(14, 2, '10', 'Nos', '1', 'Material', 'Exclusive', 0, 5),
(33, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 6),
(34, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 6),
(53, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 7),
(54, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 7),
(55, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 10),
(56, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 10),
(59, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 11),
(60, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 12),
(62, 1, '10', 'Rft', '10', 'Material', 'Exclusive', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_quotation_materials`
--

CREATE TABLE `uerp_quotation_materials` (
  `id` int(11) NOT NULL,
  `material_description` text CHARACTER SET utf16,
  `fk_uerp_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_quotation_materials`
--

INSERT INTO `uerp_quotation_materials` (`id`, `material_description`, `fk_uerp_order`) VALUES
(6, 'Material1', 1),
(8, 'Material1', 3),
(9, 'Material1', 4),
(10, 'Material1', 2),
(12, 'bnmb', 5),
(22, 'Material1', 6),
(32, 'Material1', 7),
(33, 'Material1', 10),
(37, '', 11),
(38, '', 12),
(40, '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_quotation_taxes`
--

CREATE TABLE `uerp_quotation_taxes` (
  `tax_id` int(11) NOT NULL,
  `tax_code` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_name` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_factor` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_order` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `tax_sequence` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_uerp_quotations` int(11) DEFAULT NULL,
  `fk_uerp_quotation_contents` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_quotation_taxes`
--

INSERT INTO `uerp_quotation_taxes` (`tax_id`, `tax_code`, `tax_name`, `tax_factor`, `tax_order`, `tax_sequence`, `fk_core_materials`, `fk_uerp_quotations`, `fk_uerp_quotation_contents`) VALUES
(45, '001', 'SGST(5%)', '0.05', '1', '1', 1, 6, NULL),
(46, '002', 'CGST(5%)', '0.05', '1', '1', 1, 6, NULL),
(47, '001', 'SGST(5%)', '0.05', '1', '1', 1, 6, NULL),
(48, '002', 'CGST(5%)', '0.05', '1', '1', 1, 6, NULL),
(101, '001', 'SGST(5%)', '5', '1', '1', 1, 7, 53),
(102, '002', 'CGST(5%)', '5', '1', '1', 1, 7, 53),
(103, '001', 'SGST(5%)', '5', '1', '1', 1, 7, 54),
(104, '002', 'CGST(5%)', '5', '1', '1', 1, 7, 54),
(105, '001', 'SGST(5%)', '0.05', '1', '1', 1, 10, 55),
(106, '002', 'CGST(5%)', '0.05', '1', '1', 1, 10, 55),
(107, '001', 'SGST(5%)', '0.05', '1', '1', 1, 10, 56),
(108, '002', 'CGST(5%)', '0.05', '1', '1', 1, 10, 56),
(113, '001', 'SGST(5%)', '0.05', '1', '1', 1, 11, 59),
(114, '002', 'CGST(5%)', '0.05', '1', '1', 1, 11, 59),
(115, '001', 'SGST(5%)', '0.0005', '1', '1', 1, 12, 60),
(116, '002', 'CGST(5%)', '0.0005', '1', '1', 1, 12, 60),
(119, '001', 'SGST(5%)', '0.05', '1', '1', 1, 13, 62),
(120, '002', 'CGST(5%)', '0.05', '1', '1', 1, 13, 62);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_quotation_terms`
--

CREATE TABLE `uerp_quotation_terms` (
  `term_id` int(11) NOT NULL,
  `term_description` text CHARACTER SET utf16,
  `fk_uerp_quotations` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_quotation_terms`
--

INSERT INTO `uerp_quotation_terms` (`term_id`, `term_description`, `fk_uerp_quotations`) VALUES
(7, 'CIVIL WORK NOT INCLUDED', 3),
(8, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 3),
(9, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 3),
(10, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 3),
(11, '80% Advance at the time of confirmation of order.', 3),
(12, '20% Before Dispatch.', 3),
(13, 'CIVIL WORK NOT INCLUDED', 4),
(14, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 4),
(15, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 4),
(16, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 4),
(17, '80% Advance at the time of confirmation of order.', 4),
(18, '20% Before Dispatch.', 4),
(19, 'CIVIL WORK NOT INCLUDED', 2),
(20, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 2),
(21, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 2),
(22, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 2),
(23, '80% Advance at the time of confirmation of order.', 2),
(24, '20% Before Dispatch.', 2),
(31, 'CIVIL WORK NOT INCLUDED', 5),
(32, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 5),
(33, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 5),
(34, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 5),
(35, '80% Advance at the time of confirmation of order.', 5),
(36, '20% Before Dispatch.', 5),
(91, 'CIVIL WORK NOT INCLUDED', 6),
(92, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 6),
(93, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 6),
(94, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 6),
(95, '80% Advance at the time of confirmation of order.', 6),
(96, '20% Before Dispatch.', 6),
(151, 'CIVIL WORK NOT INCLUDED', 7),
(152, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 7),
(153, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 7),
(154, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 7),
(155, '80% Advance at the time of confirmation of order.', 7),
(156, '20% Before Dispatch.', 7),
(157, 'CIVIL WORK NOT INCLUDED', 10),
(158, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 10),
(159, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 10),
(160, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 10),
(161, '80% Advance at the time of confirmation of order.', 10),
(162, '20% Before Dispatch.', 10),
(175, 'CIVIL WORK NOT INCLUDED', 11),
(176, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 11),
(177, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 11),
(178, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 11),
(179, 'CIVIL WORK NOT INCLUDED', 12),
(180, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 12),
(181, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 12),
(182, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 12),
(189, 'CIVIL WORK NOT INCLUDED', 13),
(190, 'Any item which is not mentioned in the quatation or additional will be charges extra.', 13),
(191, 'Once the design, material, colour combination & quotation is finalised can not be change / alter.', 13),
(192, 'Once the order is confirmed can not be cancelled, in case of cancellation deposited amount will be forfeited.', 13),
(193, '80% Advance at the time of confirmation of order.', 13),
(194, '20% Before Dispatch.', 13);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_store_requisitions`
--

CREATE TABLE `uerp_store_requisitions` (
  `requisition_id` int(11) NOT NULL,
  `requisition_code` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `priority` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `requisition_dtm` datetime DEFAULT NULL,
  `purchase_details` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `detail_description` text,
  `generation_username` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `generation_dtm` datetime DEFAULT NULL,
  `financial_year` datetime DEFAULT NULL,
  `fk_core_executives` int(11) DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_store_requisitions`
--

INSERT INTO `uerp_store_requisitions` (`requisition_id`, `requisition_code`, `reference_no`, `priority`, `status`, `requisition_dtm`, `purchase_details`, `remark`, `detail_description`, `generation_username`, `generation_dtm`, `financial_year`, `fk_core_executives`, `fk_core_firms`) VALUES
(1, '1', NULL, 'high', 'pending', '2018-12-09 00:00:00', 'hjjg', 'jkhkhj', NULL, 'admin', '2018-12-09 11:36:25', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_store_requisition_contents`
--

CREATE TABLE `uerp_store_requisition_contents` (
  `content_id` int(11) NOT NULL,
  `requested_quantity` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `approved_quantity` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `material_unit` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `material_status` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_materials` int(11) DEFAULT NULL,
  `fk_uerp_store_requisitions` int(11) DEFAULT NULL,
  `fk_uerp_purchase_orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uerp_store_requisition_contents`
--

INSERT INTO `uerp_store_requisition_contents` (`content_id`, `requested_quantity`, `approved_quantity`, `material_unit`, `material_status`, `fk_core_materials`, `fk_uerp_store_requisitions`, `fk_uerp_purchase_orders`) VALUES
(1, '10', '10', 'cm', 'authenticated', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uerp_tasks`
--

CREATE TABLE `uerp_tasks` (
  `id` int(11) NOT NULL,
  `task_no` varchar(50) DEFAULT NULL,
  `description_details` text,
  `date` datetime DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `work_start` varchar(50) DEFAULT NULL,
  `work_end` varchar(50) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `task_title` varchar(255) DEFAULT NULL,
  `fk_order_id` int(11) DEFAULT NULL,
  `fk_employee_id` int(11) DEFAULT NULL,
  `fk_core_firms` int(11) DEFAULT NULL,
  `fk_created_employee` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `uerp_tasks`
--

INSERT INTO `uerp_tasks` (`id`, `task_no`, `description_details`, `date`, `start_time`, `end_time`, `work_start`, `work_end`, `remark`, `employee_name`, `task_title`, `fk_order_id`, `fk_employee_id`, `fk_core_firms`, `fk_created_employee`, `status`) VALUES
(1, '100', 'Description', '0000-00-00 00:00:00', '04:30 AM', '05:30 AM', NULL, NULL, NULL, 'Unique Ventures', 'Title', 2, 1, 1, 1, 'pending'),
(3, '003', 'Description 2', '2019-01-12 00:00:00', '10:30 AM', '03:25 PM', '12:00 AM', '09:35 AM', 'aaaaaaaaaaa', 'Unique Ventures', 'Title vk', 2, 1, 1, 1, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `user_accesses`
--

CREATE TABLE `user_accesses` (
  `id` int(11) NOT NULL,
  `access_string` longtext CHARACTER SET utf16,
  `access_type` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `fk_core_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accesses`
--

INSERT INTO `user_accesses` (`id`, `access_string`, `access_type`, `fk_core_users`) VALUES
(4, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"]', 'allowed', 1),
(5, '[]', 'denied', 1),
(6, '[]', 'hidden', 1),
(10, '[\"6\"]', 'allowed', 2),
(11, '[]', 'denied', 2),
(12, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"7\",\"8\"]', 'hidden', 2),
(13, '', 'allowed', 3),
(14, '', 'denied', 3),
(15, '', 'hidden', 3),
(16, '', 'allowed', 4),
(17, '', 'denied', 4),
(18, '', 'hidden', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_banks`
--
ALTER TABLE `core_banks`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `core_categories`
--
ALTER TABLE `core_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `core_executives`
--
ALTER TABLE `core_executives`
  ADD PRIMARY KEY (`executive_id`);

--
-- Indexes for table `core_group_tax_contents`
--
ALTER TABLE `core_group_tax_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `core_items`
--
ALTER TABLE `core_items`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `core_materials`
--
ALTER TABLE `core_materials`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `core_settings`
--
ALTER TABLE `core_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `core_taxes`
--
ALTER TABLE `core_taxes`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `core_tax_groups`
--
ALTER TABLE `core_tax_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `core_users`
--
ALTER TABLE `core_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `core_vendor_banks`
--
ALTER TABLE `core_vendor_banks`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `hrm_attendance_punches`
--
ALTER TABLE `hrm_attendance_punches`
  ADD PRIMARY KEY (`punch_id`);

--
-- Indexes for table `hrm_employees`
--
ALTER TABLE `hrm_employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `hrm_employee_documents`
--
ALTER TABLE `hrm_employee_documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `hrm_employee_experiences`
--
ALTER TABLE `hrm_employee_experiences`
  ADD PRIMARY KEY (`experience_id`);

--
-- Indexes for table `hrm_employee_qualifications`
--
ALTER TABLE `hrm_employee_qualifications`
  ADD PRIMARY KEY (`qualification_id`);

--
-- Indexes for table `hrm_holidays`
--
ALTER TABLE `hrm_holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `hrm_leaves`
--
ALTER TABLE `hrm_leaves`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `hrm_leave_requisitions`
--
ALTER TABLE `hrm_leave_requisitions`
  ADD PRIMARY KEY (`requisition_id`);

--
-- Indexes for table `hrm_payrolls`
--
ALTER TABLE `hrm_payrolls`
  ADD PRIMARY KEY (`payroll_id`);

--
-- Indexes for table `hrm_payroll_components`
--
ALTER TABLE `hrm_payroll_components`
  ADD PRIMARY KEY (`component_id`);

--
-- Indexes for table `hrm_payroll_contents`
--
ALTER TABLE `hrm_payroll_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `hrm_salaries`
--
ALTER TABLE `hrm_salaries`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `hrm_salary_components`
--
ALTER TABLE `hrm_salary_components`
  ADD PRIMARY KEY (`component_id`);

--
-- Indexes for table `master_corporates`
--
ALTER TABLE `master_corporates`
  ADD PRIMARY KEY (`corporate_id`);

--
-- Indexes for table `master_enquirys`
--
ALTER TABLE `master_enquirys`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `master_executives`
--
ALTER TABLE `master_executives`
  ADD PRIMARY KEY (`executive_id`);

--
-- Indexes for table `master_firms`
--
ALTER TABLE `master_firms`
  ADD PRIMARY KEY (`firm_id`);

--
-- Indexes for table `master_questions`
--
ALTER TABLE `master_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `master_templates`
--
ALTER TABLE `master_templates`
  ADD PRIMARY KEY (`templete_id`);

--
-- Indexes for table `master_vendors`
--
ALTER TABLE `master_vendors`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `record_category_contents`
--
ALTER TABLE `record_category_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `record_challans`
--
ALTER TABLE `record_challans`
  ADD PRIMARY KEY (`challan_id`);

--
-- Indexes for table `record_challan_contents`
--
ALTER TABLE `record_challan_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `record_expenses`
--
ALTER TABLE `record_expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `record_invoices`
--
ALTER TABLE `record_invoices`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `record_invoice_contents`
--
ALTER TABLE `record_invoice_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `record_invoice_taxes`
--
ALTER TABLE `record_invoice_taxes`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `record_passbook`
--
ALTER TABLE `record_passbook`
  ADD PRIMARY KEY (`passbook_id`);

--
-- Indexes for table `record_payments`
--
ALTER TABLE `record_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `record_stocks`
--
ALTER TABLE `record_stocks`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `uerp_customers`
--
ALTER TABLE `uerp_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `uerp_documents`
--
ALTER TABLE `uerp_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uerp_follup_contents`
--
ALTER TABLE `uerp_follup_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uerp_follup_records`
--
ALTER TABLE `uerp_follup_records`
  ADD PRIMARY KEY (`follup_id`);

--
-- Indexes for table `uerp_material_receipts`
--
ALTER TABLE `uerp_material_receipts`
  ADD PRIMARY KEY (`receipt_id`);

--
-- Indexes for table `uerp_material_receipt_contents`
--
ALTER TABLE `uerp_material_receipt_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uerp_material_receipt_taxes`
--
ALTER TABLE `uerp_material_receipt_taxes`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `uerp_orders`
--
ALTER TABLE `uerp_orders`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `uerp_order_contents`
--
ALTER TABLE `uerp_order_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uerp_order_materials`
--
ALTER TABLE `uerp_order_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uerp_order_taxes`
--
ALTER TABLE `uerp_order_taxes`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `uerp_prod_requisitions`
--
ALTER TABLE `uerp_prod_requisitions`
  ADD PRIMARY KEY (`requisition_id`);

--
-- Indexes for table `uerp_prod_requisition_contents`
--
ALTER TABLE `uerp_prod_requisition_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uerp_purchase_invoices`
--
ALTER TABLE `uerp_purchase_invoices`
  ADD PRIMARY KEY (`purchase_invoice_id`);

--
-- Indexes for table `uerp_purchase_invoice_contents`
--
ALTER TABLE `uerp_purchase_invoice_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uerp_purchase_invoice_taxes`
--
ALTER TABLE `uerp_purchase_invoice_taxes`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `uerp_purchase_orders`
--
ALTER TABLE `uerp_purchase_orders`
  ADD PRIMARY KEY (`purchase_order_id`);

--
-- Indexes for table `uerp_purchase_order_contents`
--
ALTER TABLE `uerp_purchase_order_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uerp_purchase_order_taxes`
--
ALTER TABLE `uerp_purchase_order_taxes`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `uerp_purchase_order_terms`
--
ALTER TABLE `uerp_purchase_order_terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `uerp_purchase_payments`
--
ALTER TABLE `uerp_purchase_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `uerp_purchase_requisitions`
--
ALTER TABLE `uerp_purchase_requisitions`
  ADD PRIMARY KEY (`requisition_id`);

--
-- Indexes for table `uerp_purchase_requisition_contents`
--
ALTER TABLE `uerp_purchase_requisition_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uerp_quotations`
--
ALTER TABLE `uerp_quotations`
  ADD PRIMARY KEY (`quotation_id`);

--
-- Indexes for table `uerp_quotation_contents`
--
ALTER TABLE `uerp_quotation_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uerp_quotation_materials`
--
ALTER TABLE `uerp_quotation_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uerp_quotation_taxes`
--
ALTER TABLE `uerp_quotation_taxes`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `uerp_quotation_terms`
--
ALTER TABLE `uerp_quotation_terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `uerp_store_requisitions`
--
ALTER TABLE `uerp_store_requisitions`
  ADD PRIMARY KEY (`requisition_id`);

--
-- Indexes for table `uerp_store_requisition_contents`
--
ALTER TABLE `uerp_store_requisition_contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uerp_tasks`
--
ALTER TABLE `uerp_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accesses`
--
ALTER TABLE `user_accesses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_banks`
--
ALTER TABLE `core_banks`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_categories`
--
ALTER TABLE `core_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_executives`
--
ALTER TABLE `core_executives`
  MODIFY `executive_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_group_tax_contents`
--
ALTER TABLE `core_group_tax_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_items`
--
ALTER TABLE `core_items`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_materials`
--
ALTER TABLE `core_materials`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_settings`
--
ALTER TABLE `core_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_taxes`
--
ALTER TABLE `core_taxes`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_tax_groups`
--
ALTER TABLE `core_tax_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_users`
--
ALTER TABLE `core_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_vendor_banks`
--
ALTER TABLE `core_vendor_banks`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hrm_attendance_punches`
--
ALTER TABLE `hrm_attendance_punches`
  MODIFY `punch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_employees`
--
ALTER TABLE `hrm_employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hrm_employee_documents`
--
ALTER TABLE `hrm_employee_documents`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_employee_experiences`
--
ALTER TABLE `hrm_employee_experiences`
  MODIFY `experience_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_employee_qualifications`
--
ALTER TABLE `hrm_employee_qualifications`
  MODIFY `qualification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_holidays`
--
ALTER TABLE `hrm_holidays`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_leaves`
--
ALTER TABLE `hrm_leaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_leave_requisitions`
--
ALTER TABLE `hrm_leave_requisitions`
  MODIFY `requisition_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_payrolls`
--
ALTER TABLE `hrm_payrolls`
  MODIFY `payroll_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_payroll_components`
--
ALTER TABLE `hrm_payroll_components`
  MODIFY `component_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_payroll_contents`
--
ALTER TABLE `hrm_payroll_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_salaries`
--
ALTER TABLE `hrm_salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hrm_salary_components`
--
ALTER TABLE `hrm_salary_components`
  MODIFY `component_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `master_corporates`
--
ALTER TABLE `master_corporates`
  MODIFY `corporate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_enquirys`
--
ALTER TABLE `master_enquirys`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_executives`
--
ALTER TABLE `master_executives`
  MODIFY `executive_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_firms`
--
ALTER TABLE `master_firms`
  MODIFY `firm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_questions`
--
ALTER TABLE `master_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_templates`
--
ALTER TABLE `master_templates`
  MODIFY `templete_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_vendors`
--
ALTER TABLE `master_vendors`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `record_category_contents`
--
ALTER TABLE `record_category_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_challans`
--
ALTER TABLE `record_challans`
  MODIFY `challan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_challan_contents`
--
ALTER TABLE `record_challan_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_expenses`
--
ALTER TABLE `record_expenses`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_invoices`
--
ALTER TABLE `record_invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_invoice_contents`
--
ALTER TABLE `record_invoice_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_invoice_taxes`
--
ALTER TABLE `record_invoice_taxes`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_passbook`
--
ALTER TABLE `record_passbook`
  MODIFY `passbook_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_payments`
--
ALTER TABLE `record_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_stocks`
--
ALTER TABLE `record_stocks`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_customers`
--
ALTER TABLE `uerp_customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `uerp_documents`
--
ALTER TABLE `uerp_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uerp_follup_contents`
--
ALTER TABLE `uerp_follup_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uerp_follup_records`
--
ALTER TABLE `uerp_follup_records`
  MODIFY `follup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uerp_material_receipts`
--
ALTER TABLE `uerp_material_receipts`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_material_receipt_contents`
--
ALTER TABLE `uerp_material_receipt_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_material_receipt_taxes`
--
ALTER TABLE `uerp_material_receipt_taxes`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_orders`
--
ALTER TABLE `uerp_orders`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uerp_order_contents`
--
ALTER TABLE `uerp_order_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `uerp_order_materials`
--
ALTER TABLE `uerp_order_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `uerp_order_taxes`
--
ALTER TABLE `uerp_order_taxes`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `uerp_prod_requisitions`
--
ALTER TABLE `uerp_prod_requisitions`
  MODIFY `requisition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uerp_prod_requisition_contents`
--
ALTER TABLE `uerp_prod_requisition_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uerp_purchase_invoices`
--
ALTER TABLE `uerp_purchase_invoices`
  MODIFY `purchase_invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_purchase_invoice_contents`
--
ALTER TABLE `uerp_purchase_invoice_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_purchase_invoice_taxes`
--
ALTER TABLE `uerp_purchase_invoice_taxes`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_purchase_orders`
--
ALTER TABLE `uerp_purchase_orders`
  MODIFY `purchase_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_purchase_order_contents`
--
ALTER TABLE `uerp_purchase_order_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_purchase_order_taxes`
--
ALTER TABLE `uerp_purchase_order_taxes`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_purchase_order_terms`
--
ALTER TABLE `uerp_purchase_order_terms`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_purchase_payments`
--
ALTER TABLE `uerp_purchase_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uerp_purchase_requisitions`
--
ALTER TABLE `uerp_purchase_requisitions`
  MODIFY `requisition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uerp_purchase_requisition_contents`
--
ALTER TABLE `uerp_purchase_requisition_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uerp_quotations`
--
ALTER TABLE `uerp_quotations`
  MODIFY `quotation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `uerp_quotation_contents`
--
ALTER TABLE `uerp_quotation_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `uerp_quotation_materials`
--
ALTER TABLE `uerp_quotation_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `uerp_quotation_taxes`
--
ALTER TABLE `uerp_quotation_taxes`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `uerp_quotation_terms`
--
ALTER TABLE `uerp_quotation_terms`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `uerp_store_requisitions`
--
ALTER TABLE `uerp_store_requisitions`
  MODIFY `requisition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uerp_store_requisition_contents`
--
ALTER TABLE `uerp_store_requisition_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uerp_tasks`
--
ALTER TABLE `uerp_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_accesses`
--
ALTER TABLE `user_accesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
