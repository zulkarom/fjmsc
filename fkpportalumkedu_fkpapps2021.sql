-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 07:45 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fkpportalumkedu_fkpapps2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_article`
--

CREATE TABLE `jmsc_article` (
  `id` int(11) NOT NULL,
  `manuscript_no` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_sc` text DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `abstract` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope_id` tinyint(2) NOT NULL DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `submission_file` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `draft_at` datetime DEFAULT NULL,
  `submit_at` datetime DEFAULT NULL,
  `pre_evaluate_at` datetime DEFAULT NULL,
  `pre_evaluate_by` int(11) NOT NULL DEFAULT 0,
  `associate_editor` int(11) NOT NULL DEFAULT 0,
  `review_file` varchar(200) DEFAULT NULL,
  `pre_evaluate_note` text DEFAULT NULL,
  `asgn_reviewer_at` datetime DEFAULT NULL,
  `asgn_reviewer_by` int(11) NOT NULL DEFAULT 0,
  `review_at` datetime DEFAULT NULL,
  `recommend_by` int(11) NOT NULL DEFAULT 0,
  `recommend_at` datetime DEFAULT NULL,
  `recommend_note` text DEFAULT NULL,
  `recommend_option` tinyint(1) NOT NULL DEFAULT 0,
  `evaluate_option` tinyint(1) NOT NULL DEFAULT 0,
  `evaluate_note` text DEFAULT NULL,
  `evaluate_by` int(11) NOT NULL DEFAULT 0,
  `evaluate_at` datetime DEFAULT NULL,
  `response_by` int(11) NOT NULL DEFAULT 0,
  `response_at` datetime DEFAULT NULL,
  `response_note` text DEFAULT NULL,
  `correction_at` datetime DEFAULT NULL,
  `correction_note` text DEFAULT NULL,
  `correction_file` varchar(100) DEFAULT NULL,
  `post_evaluate_by` int(11) DEFAULT NULL,
  `post_evaluate_at` datetime DEFAULT NULL,
  `assistant_editor` int(11) NOT NULL DEFAULT 0,
  `galley_proof_at` datetime DEFAULT NULL,
  `galley_proof_by` int(11) NOT NULL DEFAULT 0,
  `galley_proof_note` text DEFAULT NULL,
  `galley_file` varchar(200) DEFAULT NULL,
  `finalise_at` datetime DEFAULT NULL,
  `finalise_option` tinyint(1) NOT NULL DEFAULT 0,
  `finalise_note` text DEFAULT NULL,
  `finalise_file` varchar(200) DEFAULT NULL,
  `asgn_profrdr_at` datetime DEFAULT NULL,
  `asgn_profrdr_by` int(11) NOT NULL DEFAULT 0,
  `asgn_profrdr_note` text DEFAULT NULL,
  `proof_reader` int(11) NOT NULL DEFAULT 0,
  `post_finalise_at` datetime DEFAULT NULL,
  `post_finalise_by` int(11) NOT NULL DEFAULT 0,
  `postfinalise_file` varchar(200) DEFAULT NULL,
  `post_finalise_note` text DEFAULT NULL,
  `proofread_at` datetime DEFAULT NULL,
  `proofread_by` int(11) NOT NULL DEFAULT 0,
  `proofread_note` text DEFAULT NULL,
  `proofread_file` varchar(200) DEFAULT NULL,
  `camera_ready_at` datetime DEFAULT NULL,
  `camera_ready_by` int(11) NOT NULL DEFAULT 0,
  `camera_ready_note` text DEFAULT NULL,
  `cameraready_file` varchar(200) DEFAULT NULL,
  `assign_journal_at` datetime DEFAULT NULL,
  `journal_at` datetime DEFAULT NULL,
  `journal_by` int(11) NOT NULL DEFAULT 0,
  `journal_id` int(11) NOT NULL DEFAULT 0,
  `reject_at` datetime DEFAULT NULL,
  `reject_by` int(11) NOT NULL DEFAULT 0,
  `reject_note` text DEFAULT NULL,
  `publish_number` varchar(10) DEFAULT NULL,
  `withdraw_by` int(11) NOT NULL DEFAULT 0,
  `withdraw_at_status` varchar(100) DEFAULT NULL,
  `withdraw_note` text DEFAULT NULL,
  `withdraw_at` datetime DEFAULT NULL,
  `withdraw_request_at` datetime DEFAULT NULL,
  `page_from` int(11) NOT NULL DEFAULT 0,
  `page_to` int(11) DEFAULT 0,
  `doi_ref` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_article_author`
--

CREATE TABLE `jmsc_article_author` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_article_reviewer`
--

CREATE TABLE `jmsc_article_reviewer` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL DEFAULT 0,
  `scope_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 => ''Appoint'', 10 => ''Review In Progress'', 20 => ''Completed'', 30 => ''Reject'', 40 => ''Canceled'', 50 => ''Error''',
  `q_1` tinyint(1) NOT NULL DEFAULT 0,
  `q_2` tinyint(1) NOT NULL DEFAULT 0,
  `q_3` tinyint(1) NOT NULL DEFAULT 0,
  `q_4` tinyint(1) NOT NULL DEFAULT 0,
  `q_5` tinyint(1) NOT NULL DEFAULT 0,
  `q_6` tinyint(1) NOT NULL DEFAULT 0,
  `q_7` tinyint(1) NOT NULL DEFAULT 0,
  `q_8` tinyint(1) NOT NULL DEFAULT 0,
  `q_9` tinyint(1) NOT NULL DEFAULT 0,
  `q_10` tinyint(1) NOT NULL DEFAULT 0,
  `q_11` tinyint(1) NOT NULL DEFAULT 0,
  `review_option` tinyint(1) NOT NULL DEFAULT 0,
  `review_note` text DEFAULT NULL,
  `reviewed_file` varchar(200) DEFAULT NULL,
  `review_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `cancel_at` datetime DEFAULT NULL,
  `reject_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_article_scope`
--

CREATE TABLE `jmsc_article_scope` (
  `id` int(11) NOT NULL,
  `scope_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jmsc_article_scope`
--

INSERT INTO `jmsc_article_scope` (`id`, `scope_name`) VALUES
(1, 'Retailing and commerce'),
(2, 'Logistics and distributive trade'),
(3, 'Tourism and hospitality'),
(4, 'Finance and accounting'),
(5, 'Business sustainability'),
(6, 'Entrepreneurship & economic growth'),
(7, 'Entrepreneurship development programme & policy'),
(8, 'Social entrepreneurship'),
(9, 'Human capital and entrepreneurship');

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_associate`
--

CREATE TABLE `jmsc_associate` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `institution` varchar(200) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `admin_creation` tinyint(1) DEFAULT NULL,
  `sv_main` varchar(100) DEFAULT NULL,
  `sv_co1` varchar(100) DEFAULT NULL,
  `sv_co2` varchar(100) DEFAULT NULL,
  `sv_co3` varchar(100) DEFAULT NULL,
  `matric_no` varchar(50) DEFAULT NULL,
  `cumm_sem` tinyint(4) NOT NULL DEFAULT 0,
  `pro_study` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=master,2=phd',
  `title` varchar(100) DEFAULT NULL,
  `assoc_address` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_email_template`
--

CREATE TABLE `jmsc_email_template` (
  `id` int(11) NOT NULL,
  `on_enter_workflow` varchar(100) DEFAULT NULL,
  `target_role` text DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `notification_subject` varchar(100) DEFAULT NULL,
  `notification` text DEFAULT NULL,
  `do_reminder` tinyint(1) DEFAULT 0,
  `reminder_subject` varchar(100) DEFAULT NULL,
  `reminder` text DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jmsc_email_template`
--

INSERT INTO `jmsc_email_template` (`id`, `on_enter_workflow`, `target_role`, `description`, `notification_subject`, `notification`, `do_reminder`, `reminder_subject`, `reminder`, `updated_at`) VALUES
(1, 'ArticleWorkflow/ba-pre-evaluate', '[\"jeb-managing-editor\"]', 'Notify Managing Editor to pre evaluate', 'JEB - Pre Evaluate Manuscript {manuscript-number}', 'Dear Managing Editor,\r\n\r\nPlease evaluate manuscript submitted as below:\r\n\r\n{manuscript-information-x}\r\n\r\nPlease log in to http://fkp-portal.umk.edu.my to take necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'Reminder to Pre Evaluate', 'Dear..', '2020-08-05 09:20:13'),
(2, 'ArticleWorkflow/ca-assign-reviewer', '[\"jeb-associate-editor\"]', 'Notify Associate Editor to assign reviewer', 'JEB - Assign Reviewers {manuscript-number}', 'Dear Associate Editor,\r\n\r\nPlease assign reviewers to manuscript as information below:\r\n\r\n{manuscript-information}\r\n\r\nPre Evaluate Note: {pre-evaluation-note}\r\n\r\nPlease log in to http://fkp.umk.edu.my/portal to take necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Assign Reviewer', 'Dear..', '2019-01-14 01:21:40'),
(3, 'Assign-notify-reviewer', '[\"jeb-reviewer\"]', 'Notify Reviewer to review manuscript', 'JEB - Review Manuscript {manuscript-number}', 'Dear Reviewer,\r\n\r\nYou are appointed as a reviewer for a manuscript submitted as below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://jeb.umk.edu.my to accept or reject the appointment and continue with the reviewing process.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB - Assign Reviewer', 'Dear..', '2020-02-09 09:03:40'),
(4, 'ArticleWorkflow/ea-recommend', '[\"jeb-managing-editor\"]', 'Notify Managing Editor make recommendation to Chief Editor', 'JEB - Make Recommendation {manuscript-number}', 'Dear Managing Editor,\r\n\r\nPlease make a recommendation to Chief Editor for the manuscript as below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://fkp-portal.umk.edu.my to make the recommendation.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Make Recommendation', 'Dear..', '2020-08-05 09:21:02'),
(5, 'ArticleWorkflow/fa-evaluate', '[\"jeb-editor-in-chief\"]', 'Notify Chief Editor to evaluate', 'JEB - Evaluate Manuscript {manuscript-number}', 'Dear Chief Editor,\r\n\r\nPlease evaluate manuscript submitted as below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://fkp.umk.edu.my/portal to evaluate the manuscript.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB - Evaluate Manuscript', 'Dear..', '2019-01-07 16:07:56'),
(6, 'ArticleWorkflow/ga-response', '[\"jeb-managing-editor\"]', 'Notify Managing Editor to give response to author', 'JEB - Response to Author {manuscript-number}', 'Dear Managing Editor,\r\n\r\nPlease give response to author for manuscript as below:\r\n\r\n{manuscript-information}\r\n\r\nEvaluation Option: {evaluation-option}\r\nEvaluation Note: {evaluation-note}\r\n\r\nPlease log in to http://fkp.umk.edu.my/portal to give response to the author.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252', 0, 'JEB Reminder - Response to Author', 'Dear..', '2019-01-07 16:18:24'),
(7, 'ArticleWorkflow/ha-correction', '[\"jeb-author\"]', 'Notify the Author to correct', 'JEB - Manuscript Correction {manuscript-number}', 'Dear Author,\r\n\r\nPlease be noted that your manuscript as below is in the correction stage.\r\n\r\n{manuscript-information}\r\n\r\nSummary Note: \r\n\r\n{response-note}\r\n\r\nPlease log in to http://jeb.umk.edu.my to view the reviewers\' note and take necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Manuscript Correction', 'Dear..', '2019-06-25 00:32:33'),
(8, 'ArticleWorkflow/ia-post-evaluate', '[\"jeb-managing-editor\"]', 'Notify the Managing Editor to post evaluate', 'JEB - Post Evaluate {manuscript-number}', 'Dear Managing Editor,\r\n\r\nPlease make post evaluation for manuscript submitted as below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://fkp.umk.edu.my/portal to make necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Post Evaluate', 'Dear..', '2019-01-07 22:09:42'),
(9, 'ArticleWorkflow/ja-galley-proof', '[\"jeb-assistant-editor\"]', 'Notify the Assistant Editor to galley proof', 'JEB - Galley Proof Manuscript {manuscript-number}', 'Dear Assistant Editor,\r\n\r\nPlease do galley proof for manuscript as below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to https://fkp.umk.edu.my/portal to make necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Galley Proof Manuscript', 'Dear..', '2019-11-13 17:45:15'),
(10, 'ArticleWorkflow/ka-assign-proof-reader', '[\"jeb-managing-editor\"]', 'Notify the Managing Editor to assign proofreader', 'JEB - Proofreader Assignment {manuscript-number}', 'Dear Managing Editor,\r\n\r\nPlease assign proofreader for manuscript as below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://fkp.umk.edu.my/jeb to make necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Proofreader Assignment', 'Dear..', '2019-01-08 10:18:07'),
(11, 'ArticleWorkflow/la-proofread', '[\"jeb-proof-reader\"]', 'Notify the Proofreader to proofread', 'JEB - Proofread Manuscript {manuscript-number}', 'Dear Proofreader,\r\n\r\nPlease proofread manuscript as below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://jeb.umk.edu.my to take necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Proofread Manuscript', 'Dear..', '2019-01-14 01:19:02'),
(12, 'ArticleWorkflow/ma-finalise', '[\"jeb-author\"]', 'Notify the Author to finalise the manuscript', 'JEB - Finalise Manuscript {manuscript-number}', 'Dear Author,\r\n\r\nPlease be informed that we have gone through some editing process on your manuscript. Before publishing, we would like your cooperation to finalize your manuscript as per below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://jeb.umk.edu.my to take necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Finalise Manuscript', 'Dear..', '2019-01-14 01:23:29'),
(13, 'ArticleWorkflow/oa-camera-ready', '[\"jeb-managing-editor\"]', 'Notify the Managing Editor to camera ready the manuscript', 'JEB - Camera Ready Manuscript {manuscript-number}', 'Dear Managing Editor,\r\n\r\nPlease do camera ready for the manuscript as below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://fkp.umk.edu.my/portal to take necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 1, 'JEB Reminder - Camera Ready Manuscript', 'Dear..', '2019-01-08 05:07:32'),
(14, 'ArticleWorkflow/pa-assign-journal', '[\"jeb-managing-editor\"]', 'Notify the Managing Editor to assign journal', 'JEB - Assign Journal to Manuscript {manuscript-number}', 'Dear Managing Editor,\r\n\r\nPlease assign a journal for the manuscript as below:\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://fkp.umk.edu.my/portal to take necessary actions.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Assign Journal to Manuscript', 'Dear..', '2019-01-08 05:24:55'),
(15, 'After-all-reviewers-finished', '[\"jeb-associate-editor\"]', 'Notify the Associate Editor to submit review reports', 'JEB - Submit Reviewers\' Report {manuscript-number}', 'Dear Associate Editor,\r\n\r\nPlease submit reviewers\' report for the manuscript as below:\r\n\r\n{manuscript-information}\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB Reminder - Submit Reviewers\' Report', 'Dear..', '2019-01-07 15:53:52'),
(16, 'Author-submission', '[\"jeb-author\"]', 'Notify the Author of manuscript submission', 'JEB - Manuscript Submission {manuscript-number}', 'Dear Author,\r\n\r\nThank you for your submission of your manuscript as below:\r\n\r\n{manuscript-information-x}\r\n\r\nPlease log in to http://jeb.umk.edu.my to have more information about the review process.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'null', 'null', '2019-03-02 15:03:48'),
(17, 'ArticleWorkflow/ra-reject', '[\"jeb-author\"]', 'Notify the Author about the rejection', 'JEB - Unaccepted Manuscript {manuscript-number}', 'Dear Author,\r\n\r\nPlease be noted that the manuscript submitted as below is not accepted:\r\n\r\n{manuscript-information}\r\n\r\nEditor Note: {reject-note}\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'title', 'Dear..', '2019-01-08 05:34:05'),
(18, 'ArticleWorkflow/sa-withdraw-request', '[\"jeb-managing-editor\"]', 'Notify the Managing Editor about withdraw request', 'JEB - Request to Withdraw {manuscript-number}', 'Dear Managing Editor,\r\n\r\nPlease consider on withdraw request for the manuscript as below:\r\n\r\nAuthor Note: {withdraw-note}\r\n\r\n{manuscript-information}\r\n\r\nPlease log in to http://fkp.umk.edu.my/portal to approve the withdrawal.\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'null', 'Dear..', '2019-01-08 05:58:29'),
(19, 'ArticleWorkflow/ta-withdraw', '[\"jeb-author\"]', 'Notify the Author about withdraw approval', 'JEB - Manuscript Withdrawal {manuscript-number}', 'Dear Author,\r\n\r\nPlease note that your manuscript has been withdrew.\r\n\r\n{manuscript-information}\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'null', 'Dear..', '2019-01-14 01:04:08'),
(20, 'Author-accept', '[\"jeb-author\"]', 'Notify the Author of manuscript acceptance', 'JEB - Manuscript Acceptance {manuscript-number}', 'Dear Author,\r\n\r\nCongratulation, your manuscript has been accepted.\r\n\r\n{manuscript-information}\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'null', 'null', '2019-01-07 11:57:33'),
(21, 'Appreciate-reviewer', '[\"jeb-reviewer\"]', 'Appreciate Reviewer after review', 'JEB - Appreciation on Reviewing Manuscript {manuscript-number}', 'Dear Reviewer, \r\n\r\nThank you for your review on manuscript as below. \r\n\r\n{manuscript-information} \r\n\r\nSincerely, \r\nEditorial Committees \r\nJournal of Entrepreneurship and Business \r\nFaculty of Entrepreneurship and Business \r\nUniversiti Malaysia Kelantan Kampus Kota, \r\nKarung Berkunci 36, Pengkalan Chepa, \r\n16100 Kota Bharu, Kelantan, Malaysia \r\nTelephone: 609 7717251 Fax: 609 7717252 \r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB - Appreciation on Review', 'Dear..', '2019-03-02 13:32:40'),
(22, 'Appointment-reviewer-accepted', '[\"jeb-reviewer\"]', 'Note to Reviewer after accept appointment', 'JEB - Acceptance on Reviewing Manuscript {manuscript-number}', 'Dear Reviewer,\r\n\r\nThank you for your acceptance to review manuscript as below. \r\n\r\n{manuscript-information} \r\n\r\nSincerely, \r\n\r\nEditorial Committees \r\nJournal of Entrepreneurship and Business \r\nFaculty of Entrepreneurship and Business \r\nUniversiti Malaysia \r\nKelantan Kampus Kota, \r\nKarung Berkunci 36, \r\nPengkalan Chepa, 16100 \r\nKota Bharu, Kelantan, Malaysia \r\nTelephone: 609 7717251 \r\nFax: 609 7717252 \r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB - Acceptance on Review', 'Dear..', '2019-03-02 13:29:35'),
(23, 'Assign-notify-reviewer-external-first', '[\"jeb-reviewer\"]', 'Notify Reviewer (admin creation) to review manuscript', 'JEB - Invitation to Review Manuscript {manuscript-number}', 'Dear Prof./Associate Prof./Dr./Mr./Mrs,\r\n\r\nKindly be informed that you are invited to review a manuscript as information below:\r\n\r\n{manuscript-information}\r\n\r\nIf you are interested, please log in to http://jeb.umk.edu.my using username and password below to accept and review the manuscript.\r\n\r\nUsername: {email}\r\nPassword: {email}\r\n\r\nSincerely,\r\n\r\nEditorial Committees\r\nJournal of Entrepreneurship and Business\r\nFaculty of Entrepreneurship and Business\r\nUniversiti Malaysia Kelantan\r\n\r\nKampus Kota, Karung Berkunci 36,\r\nPengkalan Chepa, 16100\r\nKota Bharu, Kelantan, Malaysia\r\n\r\nTelephone: 609 7717251\r\nFax: 609 7717252\r\nEmail: jeb.fkp@umk.edu.my', 0, 'JEB - Assign Reviewer', 'Dear..', '2019-03-02 23:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_journal`
--

CREATE TABLE `jmsc_journal` (
  `id` int(11) NOT NULL,
  `journal_name` varchar(200) DEFAULT NULL,
  `volume` int(11) NOT NULL DEFAULT 0,
  `issue` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `is_special` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_review_form`
--

CREATE TABLE `jmsc_review_form` (
  `id` int(11) NOT NULL,
  `form_quest` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jmsc_review_form`
--

INSERT INTO `jmsc_review_form` (`id`, `form_quest`) VALUES
(1, 'The objectives of the manuscript were clear.'),
(2, 'The manuscript topic is important.'),
(3, 'The manuscript should be of interest to a large audience.'),
(4, 'The literature review was thorough given the objectives.'),
(5, 'References were complete and were appropriate.'),
(6, 'The methodology was appropriate for the conclusions drawn.'),
(7, 'The analysis was done correctly.'),
(8, 'The results of analysis were correctly interpreted and/or conclusions were sound.'),
(9, 'Tables and figures were appropriate and adequate.'),
(10, 'Formatting and structure was appropriate.'),
(11, 'The manuscript was relatively free of issues of grammar, punctuation, and such.');

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_setting`
--

CREATE TABLE `jmsc_setting` (
  `id` int(11) NOT NULL,
  `template_file` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jmsc_setting`
--

INSERT INTO `jmsc_setting` (`id`, `template_file`, `updated_at`) VALUES
(1, '', '2019-06-22 22:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `jmsc_user_scope`
--

CREATE TABLE `jmsc_user_scope` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `scope_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jmsc_user_scope`
--

INSERT INTO `jmsc_user_scope` (`id`, `user_id`, `scope_id`) VALUES
(21, 76, 1),
(23, 54, 4),
(24, 114, 2),
(25, 55, 6),
(26, 69, 6),
(27, 70, 4),
(28, 156, 5),
(29, 116, 6),
(30, 47, 1),
(32, 91, 1),
(33, 91, 2),
(35, 251, 1),
(36, 91, 3),
(37, 255, 1),
(38, 256, 1),
(39, 86, 3),
(40, 79, 2),
(41, 142, 4),
(42, 227, 4),
(43, 176, 4),
(44, 52, 1),
(45, 52, 5),
(46, 78, 5),
(47, 123, 1),
(48, 123, 5),
(49, 160, 6),
(50, 161, 5),
(51, 63, 5),
(52, 77, 4),
(53, 219, 6),
(54, 162, 3),
(55, 164, 4),
(56, 164, 6),
(57, 168, 3),
(58, 171, 4),
(59, 138, 6),
(60, 180, 1),
(61, 75, 5),
(62, 66, 1),
(63, 66, 5),
(64, 91, 4),
(65, 91, 5),
(66, 91, 6),
(67, 72, 4),
(68, 72, 5),
(69, 156, 6),
(70, 178, 2),
(71, 178, 5),
(72, 57, 4),
(73, 57, 5),
(74, 56, 5),
(75, 56, 6),
(76, 181, 5),
(77, 181, 6),
(78, 67, 1),
(79, 67, 5),
(80, 71, 5),
(81, 71, 6),
(82, 58, 1),
(83, 58, 5),
(84, 58, 6),
(85, 179, 5),
(86, 179, 6),
(87, 215, 2),
(88, 215, 5),
(89, 215, 6),
(90, 242, 1),
(91, 242, 6),
(92, 256, 4),
(93, 256, 6),
(94, 139, 4),
(95, 139, 5),
(96, 141, 4),
(97, 141, 5),
(98, 207, 4),
(99, 207, 5),
(100, 259, 4),
(101, 259, 5),
(102, 240, 4),
(103, 240, 5),
(104, 142, 5),
(105, 142, 6),
(106, 260, 4),
(107, 260, 5),
(108, 263, 1),
(109, 263, 4),
(110, 263, 5),
(111, 264, 1),
(112, 264, 5),
(113, 266, 4),
(114, 266, 5),
(115, 267, 4),
(116, 267, 5),
(117, 268, 5),
(118, 268, 6),
(119, 269, 5),
(120, 269, 9),
(121, 270, 4),
(122, 270, 5),
(123, 271, 4),
(124, 271, 5),
(125, 272, 6),
(126, 272, 9),
(127, 273, 6),
(128, 273, 9),
(129, 274, 1),
(130, 274, 5),
(131, 275, 4),
(132, 275, 5),
(133, 276, 4),
(134, 277, 4),
(135, 278, 4),
(136, 279, 6),
(137, 279, 9),
(138, 280, 6),
(139, 280, 9),
(140, 281, 6),
(141, 281, 9),
(142, 282, 4),
(143, 283, 4),
(144, 284, 4),
(145, 285, 5),
(146, 285, 9),
(147, 286, 4),
(148, 287, 5),
(149, 288, 6),
(150, 289, 4),
(151, 290, 1),
(152, 291, 4),
(153, 292, 6),
(154, 292, 7),
(155, 293, 6),
(156, 293, 7),
(157, 48, 4),
(158, 48, 5),
(159, 301, 4),
(160, 76, 2),
(161, 76, 3),
(162, 76, 4),
(163, 76, 5),
(164, 76, 6),
(165, 76, 7),
(166, 76, 8),
(167, 76, 9),
(168, 305, 1),
(169, 216, 6),
(170, 216, 7),
(171, 216, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jmsc_article`
--
ALTER TABLE `jmsc_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manuscript_no` (`manuscript_no`);

--
-- Indexes for table `jmsc_article_author`
--
ALTER TABLE `jmsc_article_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jmsc_article_reviewer`
--
ALTER TABLE `jmsc_article_reviewer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jmsc_article_scope`
--
ALTER TABLE `jmsc_article_scope`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jmsc_associate`
--
ALTER TABLE `jmsc_associate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jmsc_email_template`
--
ALTER TABLE `jmsc_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jmsc_journal`
--
ALTER TABLE `jmsc_journal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jmsc_review_form`
--
ALTER TABLE `jmsc_review_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jmsc_setting`
--
ALTER TABLE `jmsc_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jmsc_user_scope`
--
ALTER TABLE `jmsc_user_scope`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jmsc_article`
--
ALTER TABLE `jmsc_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jmsc_article_author`
--
ALTER TABLE `jmsc_article_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jmsc_article_reviewer`
--
ALTER TABLE `jmsc_article_reviewer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jmsc_article_scope`
--
ALTER TABLE `jmsc_article_scope`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jmsc_associate`
--
ALTER TABLE `jmsc_associate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jmsc_email_template`
--
ALTER TABLE `jmsc_email_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `jmsc_journal`
--
ALTER TABLE `jmsc_journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jmsc_review_form`
--
ALTER TABLE `jmsc_review_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jmsc_setting`
--
ALTER TABLE `jmsc_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jmsc_user_scope`
--
ALTER TABLE `jmsc_user_scope`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
