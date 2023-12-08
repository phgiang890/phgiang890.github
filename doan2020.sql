-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2021 lúc 10:18 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan2020`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_acl_groups`
--

CREATE TABLE `phpbb_acl_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_setting` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 91, 0, 1),
(1, 0, 100, 0, 1),
(1, 0, 119, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 15, 0),
(3, 2, 0, 15, 0),
(4, 2, 0, 21, 0),
(5, 2, 0, 14, 0),
(5, 2, 0, 10, 0),
(6, 2, 0, 19, 0),
(7, 0, 0, 23, 0),
(7, 2, 0, 24, 0),
(5, 0, 154, 0, 1),
(4, 0, 162, 0, 1),
(1, 9, 0, 17, 0),
(2, 9, 0, 17, 0),
(3, 9, 0, 17, 0),
(6, 9, 0, 17, 0),
(1, 8, 0, 17, 0),
(2, 8, 0, 15, 0),
(3, 8, 0, 15, 0),
(4, 8, 0, 21, 0),
(5, 8, 0, 14, 0),
(5, 8, 0, 10, 0),
(6, 8, 0, 19, 0),
(7, 8, 0, 24, 0),
(1, 7, 0, 17, 0),
(2, 7, 0, 15, 0),
(3, 7, 0, 15, 0),
(4, 7, 0, 21, 0),
(5, 7, 0, 14, 0),
(5, 7, 0, 10, 0),
(6, 7, 0, 19, 0),
(7, 7, 0, 24, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_acl_options`
--

CREATE TABLE `phpbb_acl_options` (
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_local` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `founder_only` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_announce_global', 0, 1, 0),
(4, 'f_attach', 0, 1, 0),
(5, 'f_bbcode', 0, 1, 0),
(6, 'f_bump', 0, 1, 0),
(7, 'f_delete', 0, 1, 0),
(8, 'f_download', 0, 1, 0),
(9, 'f_edit', 0, 1, 0),
(10, 'f_email', 0, 1, 0),
(11, 'f_flash', 0, 1, 0),
(12, 'f_icons', 0, 1, 0),
(13, 'f_ignoreflood', 0, 1, 0),
(14, 'f_img', 0, 1, 0),
(15, 'f_list', 0, 1, 0),
(16, 'f_list_topics', 0, 1, 0),
(17, 'f_noapprove', 0, 1, 0),
(18, 'f_poll', 0, 1, 0),
(19, 'f_post', 0, 1, 0),
(20, 'f_postcount', 0, 1, 0),
(21, 'f_print', 0, 1, 0),
(22, 'f_read', 0, 1, 0),
(23, 'f_reply', 0, 1, 0),
(24, 'f_report', 0, 1, 0),
(25, 'f_search', 0, 1, 0),
(26, 'f_sigs', 0, 1, 0),
(27, 'f_smilies', 0, 1, 0),
(28, 'f_sticky', 0, 1, 0),
(29, 'f_subscribe', 0, 1, 0),
(30, 'f_user_lock', 0, 1, 0),
(31, 'f_vote', 0, 1, 0),
(32, 'f_votechg', 0, 1, 0),
(33, 'f_softdelete', 0, 1, 0),
(34, 'm_', 1, 1, 0),
(35, 'm_approve', 1, 1, 0),
(36, 'm_chgposter', 1, 1, 0),
(37, 'm_delete', 1, 1, 0),
(38, 'm_edit', 1, 1, 0),
(39, 'm_info', 1, 1, 0),
(40, 'm_lock', 1, 1, 0),
(41, 'm_merge', 1, 1, 0),
(42, 'm_move', 1, 1, 0),
(43, 'm_report', 1, 1, 0),
(44, 'm_split', 1, 1, 0),
(45, 'm_softdelete', 1, 1, 0),
(46, 'm_ban', 1, 0, 0),
(47, 'm_pm_report', 1, 0, 0),
(48, 'm_warn', 1, 0, 0),
(49, 'a_', 1, 0, 0),
(50, 'a_aauth', 1, 0, 0),
(51, 'a_attach', 1, 0, 0),
(52, 'a_authgroups', 1, 0, 0),
(53, 'a_authusers', 1, 0, 0),
(54, 'a_backup', 1, 0, 0),
(55, 'a_ban', 1, 0, 0),
(56, 'a_bbcode', 1, 0, 0),
(57, 'a_board', 1, 0, 0),
(58, 'a_bots', 1, 0, 0),
(59, 'a_clearlogs', 1, 0, 0),
(60, 'a_email', 1, 0, 0),
(61, 'a_extensions', 1, 0, 0),
(62, 'a_fauth', 1, 0, 0),
(63, 'a_forum', 1, 0, 0),
(64, 'a_forumadd', 1, 0, 0),
(65, 'a_forumdel', 1, 0, 0),
(66, 'a_group', 1, 0, 0),
(67, 'a_groupadd', 1, 0, 0),
(68, 'a_groupdel', 1, 0, 0),
(69, 'a_icons', 1, 0, 0),
(70, 'a_jabber', 1, 0, 0),
(71, 'a_language', 1, 0, 0),
(72, 'a_mauth', 1, 0, 0),
(73, 'a_modules', 1, 0, 0),
(74, 'a_names', 1, 0, 0),
(75, 'a_phpinfo', 1, 0, 0),
(76, 'a_profile', 1, 0, 0),
(77, 'a_prune', 1, 0, 0),
(78, 'a_ranks', 1, 0, 0),
(79, 'a_reasons', 1, 0, 0),
(80, 'a_roles', 1, 0, 0),
(81, 'a_search', 1, 0, 0),
(82, 'a_server', 1, 0, 0),
(83, 'a_styles', 1, 0, 0),
(84, 'a_switchperm', 1, 0, 0),
(85, 'a_uauth', 1, 0, 0),
(86, 'a_user', 1, 0, 0),
(87, 'a_userdel', 1, 0, 0),
(88, 'a_viewauth', 1, 0, 0),
(89, 'a_viewlogs', 1, 0, 0),
(90, 'a_words', 1, 0, 0),
(91, 'u_', 1, 0, 0),
(92, 'u_attach', 1, 0, 0),
(93, 'u_chgavatar', 1, 0, 0),
(94, 'u_chgcensors', 1, 0, 0),
(95, 'u_chgemail', 1, 0, 0),
(96, 'u_chggrp', 1, 0, 0),
(97, 'u_chgname', 1, 0, 0),
(98, 'u_chgpasswd', 1, 0, 0),
(99, 'u_chgprofileinfo', 1, 0, 0),
(100, 'u_download', 1, 0, 0),
(101, 'u_emoji', 1, 0, 0),
(102, 'u_hideonline', 1, 0, 0),
(103, 'u_ignoreflood', 1, 0, 0),
(104, 'u_masspm', 1, 0, 0),
(105, 'u_masspm_group', 1, 0, 0),
(106, 'u_pm_attach', 1, 0, 0),
(107, 'u_pm_bbcode', 1, 0, 0),
(108, 'u_pm_delete', 1, 0, 0),
(109, 'u_pm_download', 1, 0, 0),
(110, 'u_pm_edit', 1, 0, 0),
(111, 'u_pm_emailpm', 1, 0, 0),
(112, 'u_pm_flash', 1, 0, 0),
(113, 'u_pm_forward', 1, 0, 0),
(114, 'u_pm_img', 1, 0, 0),
(115, 'u_pm_printpm', 1, 0, 0),
(116, 'u_pm_smilies', 1, 0, 0),
(117, 'u_readpm', 1, 0, 0),
(118, 'u_savedrafts', 1, 0, 0),
(119, 'u_search', 1, 0, 0),
(120, 'u_sendemail', 1, 0, 0),
(121, 'u_sendim', 1, 0, 0),
(122, 'u_sendpm', 1, 0, 0),
(123, 'u_sig', 1, 0, 0),
(124, 'u_viewonline', 1, 0, 0),
(125, 'u_viewprofile', 1, 0, 0),
(126, 'a_pages', 1, 0, 0),
(127, 'u_mchat_use', 1, 0, 0),
(128, 'u_mchat_view', 1, 0, 0),
(129, 'u_mchat_edit', 1, 0, 0),
(130, 'u_mchat_delete', 1, 0, 0),
(131, 'u_mchat_ip', 1, 0, 0),
(132, 'u_mchat_pm', 1, 0, 0),
(133, 'u_mchat_like', 1, 0, 0),
(134, 'u_mchat_quote', 1, 0, 0),
(135, 'u_mchat_flood_ignore', 1, 0, 0),
(136, 'u_mchat_archive', 1, 0, 0),
(137, 'u_mchat_bbcode', 1, 0, 0),
(138, 'u_mchat_smilies', 1, 0, 0),
(139, 'u_mchat_urls', 1, 0, 0),
(140, 'u_mchat_avatars', 1, 0, 0),
(141, 'u_mchat_capital_letter', 1, 0, 0),
(142, 'u_mchat_character_count', 1, 0, 0),
(143, 'u_mchat_date', 1, 0, 0),
(144, 'u_mchat_index', 1, 0, 0),
(146, 'u_mchat_location', 1, 0, 0),
(147, 'u_mchat_message_top', 1, 0, 0),
(149, 'u_mchat_posts', 1, 0, 0),
(150, 'u_mchat_relative_time', 1, 0, 0),
(151, 'u_mchat_sound', 1, 0, 0),
(152, 'u_mchat_stats_index', 1, 0, 0),
(153, 'u_mchat_whois_index', 1, 0, 0),
(154, 'a_mchat', 1, 0, 0),
(155, 'u_mchat_moderator_edit', 1, 0, 0),
(156, 'u_mchat_moderator_delete', 1, 0, 0),
(157, 'f_mediaembed', 0, 1, 0),
(158, 'u_pm_mediaembed', 1, 0, 0),
(159, 'f_thanks', 0, 1, 0),
(160, 'u_viewthanks', 1, 0, 0),
(161, 'u_viewtoplist', 1, 0, 0),
(162, 'm_thanks', 1, 0, 0),
(163, 'u_video_view_full', 1, 0, 0),
(164, 'u_video_view', 1, 0, 0),
(165, 'u_video_delete', 1, 0, 0),
(166, 'u_video_post', 1, 0, 0),
(167, 'u_video_comment', 1, 0, 0),
(168, 'u_video_comment_delete', 1, 0, 0),
(169, 'f_mark_answer', 0, 1, 0),
(170, 'm_mark_answer', 0, 1, 0),
(171, 'f_poll_on_index', 0, 1, 0),
(172, 'f_vse_tip', 0, 1, 0),
(178, 'u_page_create', 1, 0, 0),
(179, 'm_page_manage', 1, 0, 0),
(180, 'm_status_manage', 1, 0, 0),
(181, 'a_page_manage', 1, 0, 0),
(182, 'a_status_manage', 1, 0, 0),
(183, 'a_aps_logs', 1, 0, 0),
(184, 'a_aps_points', 1, 0, 0),
(185, 'a_aps_reasons', 1, 0, 0),
(186, 'a_aps_display', 1, 0, 0),
(187, 'a_aps_settings', 1, 0, 0),
(188, 'm_aps_adjust_custom', 1, 0, 0),
(189, 'm_aps_adjust_reason', 1, 0, 0),
(190, 'u_aps_view_build', 1, 0, 0),
(191, 'u_aps_view_logs', 1, 0, 0),
(192, 'u_aps_view_mod', 1, 0, 0),
(193, 'u_aps_view_build_other', 1, 0, 0),
(194, 'u_aps_view_logs_other', 1, 0, 0),
(195, 'a_ass_overview', 1, 0, 0),
(196, 'a_ass_settings', 1, 0, 0),
(197, 'a_ass_items', 1, 0, 0),
(198, 'a_ass_files', 1, 0, 0),
(199, 'a_ass_logs', 1, 0, 0),
(200, 'u_ass_can_purchase', 1, 0, 0),
(201, 'u_ass_can_view_inactive_shop', 1, 0, 0),
(202, 'u_ass_can_view_inactive_items', 1, 0, 0),
(203, 'u_ass_can_gift', 1, 0, 0),
(204, 'u_ass_can_receive_gift', 1, 0, 0),
(205, 'u_ass_can_receive_stock_notifications', 1, 0, 0),
(206, 'a_ass_inventory', 1, 0, 0),
(207, 'u_ass_can_stack', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_acl_roles`
--

CREATE TABLE `phpbb_acl_roles` (
  `role_id` mediumint(8) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_acl_roles_data`
--

CREATE TABLE `phpbb_acl_roles_data` (
  `role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_setting` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 49, 1),
(1, 51, 1),
(1, 52, 1),
(1, 53, 1),
(1, 55, 1),
(1, 56, 1),
(1, 57, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 67, 1),
(1, 68, 1),
(1, 69, 1),
(1, 72, 1),
(1, 74, 1),
(1, 76, 1),
(1, 77, 1),
(1, 78, 1),
(1, 79, 1),
(1, 85, 1),
(1, 86, 1),
(1, 87, 1),
(1, 88, 1),
(1, 89, 1),
(1, 90, 1),
(1, 126, 1),
(1, 181, 1),
(1, 183, 1),
(1, 184, 1),
(1, 185, 1),
(1, 186, 1),
(1, 187, 1),
(1, 195, 1),
(1, 196, 1),
(1, 197, 1),
(1, 198, 1),
(1, 199, 1),
(1, 206, 1),
(2, 49, 1),
(2, 52, 1),
(2, 53, 1),
(2, 62, 1),
(2, 63, 1),
(2, 64, 1),
(2, 65, 1),
(2, 72, 1),
(2, 77, 1),
(2, 85, 1),
(2, 88, 1),
(2, 89, 1),
(3, 49, 1),
(3, 52, 1),
(3, 53, 1),
(3, 55, 1),
(3, 66, 1),
(3, 67, 1),
(3, 68, 1),
(3, 78, 1),
(3, 85, 1),
(3, 86, 1),
(3, 88, 1),
(3, 89, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(4, 85, 1),
(4, 86, 1),
(4, 87, 1),
(4, 88, 1),
(4, 89, 1),
(4, 90, 1),
(4, 126, 1),
(4, 183, 1),
(4, 184, 1),
(4, 185, 1),
(4, 186, 1),
(4, 187, 1),
(4, 195, 1),
(4, 196, 1),
(4, 197, 1),
(4, 198, 1),
(4, 199, 1),
(4, 206, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(5, 118, 1),
(5, 119, 1),
(5, 120, 1),
(5, 121, 1),
(5, 122, 1),
(5, 123, 1),
(5, 124, 1),
(5, 125, 1),
(5, 129, 1),
(5, 130, 1),
(5, 131, 1),
(5, 135, 1),
(5, 158, 1),
(5, 160, 1),
(5, 161, 1),
(5, 163, 1),
(5, 164, 1),
(5, 165, 1),
(5, 166, 1),
(5, 167, 1),
(5, 168, 1),
(5, 190, 1),
(5, 191, 1),
(5, 192, 1),
(5, 193, 1),
(5, 194, 1),
(5, 200, 1),
(5, 201, 1),
(5, 202, 1),
(5, 203, 1),
(5, 204, 1),
(5, 207, 1),
(6, 91, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 95, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 104, 1),
(6, 105, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 1),
(6, 111, 1),
(6, 114, 1),
(6, 115, 1),
(6, 116, 1),
(6, 117, 1),
(6, 118, 1),
(6, 119, 1),
(6, 120, 1),
(6, 121, 1),
(6, 122, 1),
(6, 123, 1),
(6, 125, 1),
(6, 127, 1),
(6, 128, 1),
(6, 132, 1),
(6, 133, 1),
(6, 134, 1),
(6, 136, 1),
(6, 137, 1),
(6, 138, 1),
(6, 139, 1),
(6, 140, 1),
(6, 141, 1),
(6, 142, 1),
(6, 144, 1),
(6, 146, 1),
(6, 147, 1),
(6, 149, 1),
(6, 150, 1),
(6, 151, 1),
(6, 158, 1),
(6, 160, 1),
(6, 161, 1),
(6, 163, 1),
(6, 164, 1),
(6, 166, 1),
(6, 167, 1),
(6, 190, 1),
(6, 191, 1),
(6, 193, 1),
(6, 194, 1),
(6, 200, 1),
(6, 201, 1),
(6, 202, 1),
(6, 203, 1),
(6, 204, 1),
(6, 207, 1),
(7, 91, 1),
(7, 93, 1),
(7, 94, 1),
(7, 95, 1),
(7, 98, 1),
(7, 99, 1),
(7, 100, 1),
(7, 101, 1),
(7, 102, 1),
(7, 107, 1),
(7, 108, 1),
(7, 109, 1),
(7, 110, 1),
(7, 113, 1),
(7, 114, 1),
(7, 115, 1),
(7, 116, 1),
(7, 117, 1),
(7, 122, 1),
(7, 123, 1),
(7, 125, 1),
(7, 160, 1),
(7, 161, 1),
(8, 91, 1),
(8, 93, 1),
(8, 94, 1),
(8, 95, 1),
(8, 98, 1),
(8, 100, 1),
(8, 102, 1),
(8, 104, 0),
(8, 105, 0),
(8, 117, 0),
(8, 122, 0),
(8, 123, 1),
(8, 125, 1),
(8, 160, 1),
(8, 161, 1),
(9, 91, 1),
(9, 93, 0),
(9, 94, 1),
(9, 95, 1),
(9, 98, 1),
(9, 99, 1),
(9, 100, 1),
(9, 101, 1),
(9, 102, 1),
(9, 107, 1),
(9, 108, 1),
(9, 109, 1),
(9, 110, 1),
(9, 113, 1),
(9, 114, 1),
(9, 115, 1),
(9, 116, 1),
(9, 117, 1),
(9, 122, 1),
(9, 123, 1),
(9, 125, 1),
(9, 160, 1),
(9, 161, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 42, 1),
(10, 43, 1),
(10, 44, 1),
(10, 45, 1),
(10, 46, 1),
(10, 47, 1),
(10, 48, 1),
(10, 162, 1),
(10, 170, 1),
(10, 188, 1),
(10, 189, 1),
(11, 34, 1),
(11, 35, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 42, 1),
(11, 43, 1),
(11, 44, 1),
(11, 45, 1),
(11, 47, 1),
(11, 48, 1),
(11, 170, 1),
(11, 189, 1),
(12, 34, 1),
(12, 37, 1),
(12, 38, 1),
(12, 39, 1),
(12, 43, 1),
(12, 45, 1),
(12, 47, 1),
(13, 34, 1),
(13, 35, 1),
(13, 38, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(14, 31, 1),
(14, 32, 1),
(14, 33, 1),
(14, 157, 1),
(14, 159, 1),
(14, 169, 1),
(14, 172, 1),
(15, 1, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 12, 1),
(15, 14, 1),
(15, 15, 1),
(15, 16, 1),
(15, 17, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 29, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 157, 1),
(15, 159, 1),
(15, 169, 1),
(15, 172, 1),
(16, 1, 0),
(17, 1, 1),
(17, 8, 1),
(17, 15, 1),
(17, 16, 1),
(17, 21, 1),
(17, 22, 1),
(17, 25, 1),
(17, 29, 1),
(17, 172, 1),
(18, 1, 1),
(18, 5, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 14, 1),
(18, 15, 1),
(18, 16, 1),
(18, 17, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 29, 1),
(18, 31, 1),
(18, 33, 1),
(18, 159, 1),
(18, 172, 1),
(19, 1, 1),
(19, 8, 1),
(19, 15, 1),
(19, 16, 1),
(19, 21, 1),
(19, 22, 1),
(20, 1, 1),
(20, 4, 1),
(20, 5, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 14, 1),
(20, 15, 1),
(20, 16, 1),
(20, 17, 0),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 29, 1),
(20, 31, 1),
(20, 33, 1),
(20, 157, 1),
(21, 1, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 12, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 29, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 157, 1),
(21, 159, 1),
(21, 172, 1),
(22, 1, 1),
(22, 5, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 29, 1),
(22, 31, 1),
(22, 33, 1),
(22, 159, 1),
(22, 172, 1),
(23, 99, 0),
(23, 104, 0),
(23, 105, 0),
(23, 122, 0),
(24, 17, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_acl_users`
--

CREATE TABLE `phpbb_acl_users` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_setting` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0),
(50, 0, 167, 0, 1),
(50, 0, 168, 0, 1),
(50, 0, 165, 0, 1),
(50, 0, 166, 0, 1),
(50, 0, 164, 0, 1),
(50, 0, 163, 0, 1),
(50, 0, 91, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_aps_display`
--

CREATE TABLE `phpbb_aps_display` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `aps_display` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_aps_display`
--

INSERT INTO `phpbb_aps_display` (`user_id`, `aps_display`) VALUES
(0, '{\"overview\":{\"1\":\"points_top\",\"2\":\"points_search\",\"3\":\"points_settings\",\"4\":\"points_random\",\"5\":\"points_forums\",\"6\":\"points_groups\",\"7\":\"points_growth\",\"8\":\"points_trade_off\"},\"actions\":{\"1\":\"points_actions\",\"2\":\"points_registration\"},\"items\":{\"1\":\"purchases_category\",\"2\":\"purchases_group\",\"3\":\"sale\",\"4\":\"featured\",\"5\":\"recent\",\"6\":\"purchases\",\"7\":\"available\",\"8\":\"limited\",\"9\":\"buyers\",\"10\":\"gifters\",\"11\":\"spenders\"}}'),
(2, '{\"overview\":[\"points_top\",\"points_search\",\"points_settings\",\"points_random\",\"points_forums\",\"points_groups\",\"points_growth\",\"points_trade_off\"],\"actions\":[\"points_actions\",\"points_registration\"],\"items\":{\"4\":\"recent\"}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_aps_logs`
--

CREATE TABLE `phpbb_aps_logs` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_action` text COLLATE utf8_bin NOT NULL,
  `log_actions` mediumtext COLLATE utf8_bin NOT NULL,
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `log_approved` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `forum_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reportee_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reportee_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `points_old` decimal(14,2) NOT NULL DEFAULT 0.00,
  `points_sum` decimal(14,2) NOT NULL DEFAULT 0.00,
  `points_new` decimal(14,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_aps_logs`
--

INSERT INTO `phpbb_aps_logs` (`log_id`, `log_action`, `log_actions`, `log_time`, `log_approved`, `forum_id`, `topic_id`, `post_id`, `user_id`, `reportee_id`, `reportee_ip`, `points_old`, `points_sum`, `points_new`) VALUES
(1, 'APS_POINTS_USER_ADJUSTED', 'a:1:{s:51:\"Nạp tiền<br />thưỡng cho các hoạt động\";s:6:\"500.00\";}', 1609691670, 1, 0, 0, 0, 51, 2, '::1', '0.00', '500.00', '500.00'),
(2, 'APS_POINTS_USER_ADJUSTED', 'a:1:{s:22:\"Xóa<br />tẩy sạch\";s:9:\"104000.00\";}', 1609755855, 1, 0, 0, 0, 2, 2, '::1', '-104000.00', '104000.00', '0.00'),
(3, 'APS_POINTS_USER_ADJUSTED', 'a:1:{s:22:\"Xóa<br />tẩy sạch\";s:9:\"104000.00\";}', 1609755882, 1, 0, 0, 0, 2, 2, '::1', '0.00', '104000.00', '104000.00'),
(4, 'APS_POINTS_POST', 'a:1:{s:15:\"APS_POINTS_POST\";d:1;}', 1609914766, 1, 2, 19, 20, 2, 2, '::1', '103000.00', '1.00', '103001.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_aps_points`
--

CREATE TABLE `phpbb_aps_points` (
  `points_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `points_value` decimal(6,2) NOT NULL DEFAULT 0.00,
  `forum_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_aps_points`
--

INSERT INTO `phpbb_aps_points` (`points_name`, `points_value`, `forum_id`) VALUES
('aps_mod_announce_global', '0.00', 1),
('aps_mod_announce_global', '0.00', 2),
('aps_mod_announce_global', '0.00', 7),
('aps_mod_announce_global', '0.00', 8),
('aps_mod_announce_normal', '0.00', 1),
('aps_mod_announce_normal', '0.00', 2),
('aps_mod_announce_normal', '0.00', 7),
('aps_mod_announce_normal', '0.00', 8),
('aps_mod_announce_sticky', '0.00', 1),
('aps_mod_announce_sticky', '0.00', 2),
('aps_mod_announce_sticky', '0.00', 7),
('aps_mod_announce_sticky', '0.00', 8),
('aps_mod_approve', '0.00', 1),
('aps_mod_approve', '0.00', 2),
('aps_mod_approve', '0.00', 7),
('aps_mod_approve', '0.00', 8),
('aps_mod_change', '0.00', 1),
('aps_mod_change', '0.00', 2),
('aps_mod_change', '0.00', 7),
('aps_mod_change', '0.00', 8),
('aps_mod_copy', '0.00', 1),
('aps_mod_copy', '0.00', 2),
('aps_mod_copy', '0.00', 7),
('aps_mod_copy', '0.00', 8),
('aps_mod_delete_post', '0.00', 1),
('aps_mod_delete_post', '0.00', 2),
('aps_mod_delete_post', '0.00', 7),
('aps_mod_delete_post', '0.00', 8),
('aps_mod_delete_soft_post', '0.00', 1),
('aps_mod_delete_soft_post', '0.00', 2),
('aps_mod_delete_soft_post', '0.00', 7),
('aps_mod_delete_soft_post', '0.00', 8),
('aps_mod_delete_soft_topic', '0.00', 1),
('aps_mod_delete_soft_topic', '0.00', 2),
('aps_mod_delete_soft_topic', '0.00', 7),
('aps_mod_delete_soft_topic', '0.00', 8),
('aps_mod_delete_topic', '0.00', 1),
('aps_mod_delete_topic', '0.00', 2),
('aps_mod_delete_topic', '0.00', 7),
('aps_mod_delete_topic', '0.00', 8),
('aps_mod_disapprove', '0.00', 1),
('aps_mod_disapprove', '0.00', 2),
('aps_mod_disapprove', '0.00', 7),
('aps_mod_disapprove', '0.00', 8),
('aps_mod_edit', '0.00', 1),
('aps_mod_edit', '0.00', 2),
('aps_mod_edit', '0.00', 7),
('aps_mod_edit', '0.00', 8),
('aps_mod_global_announce', '0.00', 1),
('aps_mod_global_announce', '0.00', 2),
('aps_mod_global_announce', '0.00', 7),
('aps_mod_global_announce', '0.00', 8),
('aps_mod_global_normal', '0.00', 1),
('aps_mod_global_normal', '0.00', 2),
('aps_mod_global_normal', '0.00', 7),
('aps_mod_global_normal', '0.00', 8),
('aps_mod_global_sticky', '0.00', 1),
('aps_mod_global_sticky', '0.00', 2),
('aps_mod_global_sticky', '0.00', 7),
('aps_mod_global_sticky', '0.00', 8),
('aps_mod_lock', '0.00', 1),
('aps_mod_lock', '0.00', 2),
('aps_mod_lock', '0.00', 7),
('aps_mod_lock', '0.00', 8),
('aps_mod_lock_post', '0.00', 1),
('aps_mod_lock_post', '0.00', 2),
('aps_mod_lock_post', '0.00', 7),
('aps_mod_lock_post', '0.00', 8),
('aps_mod_merge', '0.00', 1),
('aps_mod_merge', '0.00', 2),
('aps_mod_merge', '0.00', 7),
('aps_mod_merge', '0.00', 8),
('aps_mod_move_post', '0.00', 1),
('aps_mod_move_post', '0.00', 2),
('aps_mod_move_post', '0.00', 7),
('aps_mod_move_post', '0.00', 8),
('aps_mod_move_topic', '0.00', 1),
('aps_mod_move_topic', '0.00', 2),
('aps_mod_move_topic', '0.00', 7),
('aps_mod_move_topic', '0.00', 8),
('aps_mod_normal_announce', '0.00', 1),
('aps_mod_normal_announce', '0.00', 2),
('aps_mod_normal_announce', '0.00', 7),
('aps_mod_normal_announce', '0.00', 8),
('aps_mod_normal_global', '0.00', 1),
('aps_mod_normal_global', '0.00', 2),
('aps_mod_normal_global', '0.00', 7),
('aps_mod_normal_global', '0.00', 8),
('aps_mod_normal_sticky', '0.00', 1),
('aps_mod_normal_sticky', '0.00', 2),
('aps_mod_normal_sticky', '0.00', 7),
('aps_mod_normal_sticky', '0.00', 8),
('aps_mod_restore', '0.00', 1),
('aps_mod_restore', '0.00', 2),
('aps_mod_restore', '0.00', 7),
('aps_mod_restore', '0.00', 8),
('aps_mod_sticky_announce', '0.00', 1),
('aps_mod_sticky_announce', '0.00', 2),
('aps_mod_sticky_announce', '0.00', 7),
('aps_mod_sticky_announce', '0.00', 8),
('aps_mod_sticky_global', '0.00', 1),
('aps_mod_sticky_global', '0.00', 2),
('aps_mod_sticky_global', '0.00', 7),
('aps_mod_sticky_global', '0.00', 8),
('aps_mod_sticky_normal', '0.00', 1),
('aps_mod_sticky_normal', '0.00', 2),
('aps_mod_sticky_normal', '0.00', 7),
('aps_mod_sticky_normal', '0.00', 8),
('aps_mod_unlock', '0.00', 1),
('aps_mod_unlock', '0.00', 2),
('aps_mod_unlock', '0.00', 7),
('aps_mod_unlock', '0.00', 8),
('aps_mod_unlock_post', '0.00', 1),
('aps_mod_unlock_post', '0.00', 2),
('aps_mod_unlock_post', '0.00', 7),
('aps_mod_unlock_post', '0.00', 8),
('aps_post_base', '0.00', 1),
('aps_post_base', '1.00', 2),
('aps_post_base', '0.00', 7),
('aps_post_base', '0.00', 8),
('aps_post_delete', '0.00', 1),
('aps_post_delete', '0.00', 2),
('aps_post_delete', '0.00', 7),
('aps_post_delete', '0.00', 8),
('aps_post_delete_soft', '0.00', 1),
('aps_post_delete_soft', '0.00', 2),
('aps_post_delete_soft', '0.00', 7),
('aps_post_delete_soft', '0.00', 8),
('aps_post_edit', '0.00', 1),
('aps_post_edit', '0.00', 2),
('aps_post_edit', '0.00', 7),
('aps_post_edit', '0.00', 8),
('aps_post_has_attach', '0.00', 1),
('aps_post_has_attach', '0.00', 2),
('aps_post_has_attach', '0.00', 7),
('aps_post_has_attach', '0.00', 8),
('aps_post_per_attach', '0.00', 1),
('aps_post_per_attach', '0.00', 2),
('aps_post_per_attach', '0.00', 7),
('aps_post_per_attach', '0.00', 8),
('aps_post_per_char', '0.00', 1),
('aps_post_per_char', '0.00', 2),
('aps_post_per_char', '0.00', 7),
('aps_post_per_char', '0.00', 8),
('aps_post_per_quote', '0.00', 1),
('aps_post_per_quote', '0.00', 2),
('aps_post_per_quote', '0.00', 7),
('aps_post_per_quote', '0.00', 8),
('aps_post_per_word', '0.00', 1),
('aps_post_per_word', '0.00', 2),
('aps_post_per_word', '0.00', 7),
('aps_post_per_word', '0.00', 8),
('aps_topic_announce', '0.00', 1),
('aps_topic_announce', '0.00', 2),
('aps_topic_announce', '0.00', 7),
('aps_topic_announce', '0.00', 8),
('aps_topic_base', '0.00', 1),
('aps_topic_base', '1.00', 2),
('aps_topic_base', '0.00', 7),
('aps_topic_base', '1.00', 8),
('aps_topic_bump', '0.00', 1),
('aps_topic_bump', '0.00', 2),
('aps_topic_bump', '0.00', 7),
('aps_topic_bump', '0.00', 8),
('aps_topic_edit', '0.00', 1),
('aps_topic_edit', '0.00', 2),
('aps_topic_edit', '0.00', 7),
('aps_topic_edit', '0.00', 8),
('aps_topic_global', '0.00', 1),
('aps_topic_global', '0.00', 2),
('aps_topic_global', '0.00', 7),
('aps_topic_global', '0.00', 8),
('aps_topic_has_attach', '0.00', 1),
('aps_topic_has_attach', '0.00', 2),
('aps_topic_has_attach', '0.00', 7),
('aps_topic_has_attach', '0.00', 8),
('aps_topic_has_poll', '0.00', 1),
('aps_topic_has_poll', '0.00', 2),
('aps_topic_has_poll', '0.00', 7),
('aps_topic_has_poll', '0.00', 8),
('aps_topic_per_attach', '0.00', 1),
('aps_topic_per_attach', '0.00', 2),
('aps_topic_per_attach', '0.00', 7),
('aps_topic_per_attach', '0.00', 8),
('aps_topic_per_char', '0.00', 1),
('aps_topic_per_char', '0.00', 2),
('aps_topic_per_char', '0.00', 7),
('aps_topic_per_char', '0.00', 8),
('aps_topic_per_option', '0.00', 1),
('aps_topic_per_option', '0.00', 2),
('aps_topic_per_option', '0.00', 7),
('aps_topic_per_option', '0.00', 8),
('aps_topic_per_quote', '0.00', 1),
('aps_topic_per_quote', '0.00', 2),
('aps_topic_per_quote', '0.00', 7),
('aps_topic_per_quote', '0.00', 8),
('aps_topic_per_word', '0.00', 1),
('aps_topic_per_word', '0.00', 2),
('aps_topic_per_word', '0.00', 7),
('aps_topic_per_word', '0.00', 8),
('aps_topic_sticky', '0.00', 1),
('aps_topic_sticky', '0.00', 2),
('aps_topic_sticky', '0.00', 7),
('aps_topic_sticky', '0.00', 8),
('aps_user_announce_global', '0.00', 1),
('aps_user_announce_global', '0.00', 2),
('aps_user_announce_global', '0.00', 7),
('aps_user_announce_global', '0.00', 8),
('aps_user_announce_normal', '0.00', 1),
('aps_user_announce_normal', '0.00', 2),
('aps_user_announce_normal', '0.00', 7),
('aps_user_announce_normal', '0.00', 8),
('aps_user_announce_sticky', '0.00', 1),
('aps_user_announce_sticky', '0.00', 2),
('aps_user_announce_sticky', '0.00', 7),
('aps_user_announce_sticky', '0.00', 8),
('aps_user_approve', '0.00', 1),
('aps_user_approve', '0.00', 2),
('aps_user_approve', '0.00', 7),
('aps_user_approve', '0.00', 8),
('aps_user_change_from', '0.00', 1),
('aps_user_change_from', '0.00', 2),
('aps_user_change_from', '0.00', 7),
('aps_user_change_from', '0.00', 8),
('aps_user_change_to', '0.00', 1),
('aps_user_change_to', '0.00', 2),
('aps_user_change_to', '0.00', 7),
('aps_user_change_to', '0.00', 8),
('aps_user_copy', '0.00', 1),
('aps_user_copy', '0.00', 2),
('aps_user_copy', '0.00', 7),
('aps_user_copy', '0.00', 8),
('aps_user_delete_post', '0.00', 1),
('aps_user_delete_post', '0.00', 2),
('aps_user_delete_post', '0.00', 7),
('aps_user_delete_post', '0.00', 8),
('aps_user_delete_soft_post', '0.00', 1),
('aps_user_delete_soft_post', '0.00', 2),
('aps_user_delete_soft_post', '0.00', 7),
('aps_user_delete_soft_post', '0.00', 8),
('aps_user_delete_soft_topic', '0.00', 1),
('aps_user_delete_soft_topic', '0.00', 2),
('aps_user_delete_soft_topic', '0.00', 7),
('aps_user_delete_soft_topic', '0.00', 8),
('aps_user_delete_topic', '0.00', 1),
('aps_user_delete_topic', '0.00', 2),
('aps_user_delete_topic', '0.00', 7),
('aps_user_delete_topic', '0.00', 8),
('aps_user_disapprove', '0.00', 1),
('aps_user_disapprove', '0.00', 2),
('aps_user_disapprove', '0.00', 7),
('aps_user_disapprove', '0.00', 8),
('aps_user_edit', '0.00', 1),
('aps_user_edit', '0.00', 2),
('aps_user_edit', '0.00', 7),
('aps_user_edit', '0.00', 8),
('aps_user_global_announce', '0.00', 1),
('aps_user_global_announce', '0.00', 2),
('aps_user_global_announce', '0.00', 7),
('aps_user_global_announce', '0.00', 8),
('aps_user_global_normal', '0.00', 1),
('aps_user_global_normal', '0.00', 2),
('aps_user_global_normal', '0.00', 7),
('aps_user_global_normal', '0.00', 8),
('aps_user_global_sticky', '0.00', 1),
('aps_user_global_sticky', '0.00', 2),
('aps_user_global_sticky', '0.00', 7),
('aps_user_global_sticky', '0.00', 8),
('aps_user_lock', '0.00', 1),
('aps_user_lock', '0.00', 2),
('aps_user_lock', '0.00', 7),
('aps_user_lock', '0.00', 8),
('aps_user_lock_post', '0.00', 1),
('aps_user_lock_post', '0.00', 2),
('aps_user_lock_post', '0.00', 7),
('aps_user_lock_post', '0.00', 8),
('aps_user_merge', '0.00', 1),
('aps_user_merge', '0.00', 2),
('aps_user_merge', '0.00', 7),
('aps_user_merge', '0.00', 8),
('aps_user_move_post', '0.00', 1),
('aps_user_move_post', '0.00', 2),
('aps_user_move_post', '0.00', 7),
('aps_user_move_post', '0.00', 8),
('aps_user_move_topic', '0.00', 1),
('aps_user_move_topic', '0.00', 2),
('aps_user_move_topic', '0.00', 7),
('aps_user_move_topic', '0.00', 8),
('aps_user_normal_announce', '0.00', 1),
('aps_user_normal_announce', '0.00', 2),
('aps_user_normal_announce', '0.00', 7),
('aps_user_normal_announce', '0.00', 8),
('aps_user_normal_global', '0.00', 1),
('aps_user_normal_global', '0.00', 2),
('aps_user_normal_global', '0.00', 7),
('aps_user_normal_global', '0.00', 8),
('aps_user_normal_sticky', '0.00', 1),
('aps_user_normal_sticky', '0.00', 2),
('aps_user_normal_sticky', '0.00', 7),
('aps_user_normal_sticky', '0.00', 8),
('aps_user_restore', '0.00', 1),
('aps_user_restore', '0.00', 2),
('aps_user_restore', '0.00', 7),
('aps_user_restore', '0.00', 8),
('aps_user_sticky_announce', '0.00', 1),
('aps_user_sticky_announce', '0.00', 2),
('aps_user_sticky_announce', '0.00', 7),
('aps_user_sticky_announce', '0.00', 8),
('aps_user_sticky_global', '0.00', 1),
('aps_user_sticky_global', '0.00', 2),
('aps_user_sticky_global', '0.00', 7),
('aps_user_sticky_global', '0.00', 8),
('aps_user_sticky_normal', '0.00', 1),
('aps_user_sticky_normal', '0.00', 2),
('aps_user_sticky_normal', '0.00', 7),
('aps_user_sticky_normal', '0.00', 8),
('aps_user_unlock', '0.00', 1),
('aps_user_unlock', '0.00', 2),
('aps_user_unlock', '0.00', 7),
('aps_user_unlock', '0.00', 8),
('aps_user_unlock_post', '0.00', 1),
('aps_user_unlock_post', '0.00', 2),
('aps_user_unlock_post', '0.00', 7),
('aps_user_unlock_post', '0.00', 8),
('aps_vote', '0.00', 1),
('aps_vote', '0.00', 2),
('aps_vote', '0.00', 7),
('aps_vote', '0.00', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_aps_reasons`
--

CREATE TABLE `phpbb_aps_reasons` (
  `reason_id` int(10) UNSIGNED NOT NULL,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_desc` text COLLATE utf8_bin NOT NULL,
  `reason_points` decimal(14,2) NOT NULL DEFAULT 0.00,
  `reason_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_aps_reasons`
--

INSERT INTO `phpbb_aps_reasons` (`reason_id`, `reason_title`, `reason_desc`, `reason_points`, `reason_order`) VALUES
(1, 'Nạp tiền', 'thưỡng cho các hoạt động', '500.00', 0),
(2, 'Thu hồi', 'Phạt vi phạm', '-500.00', 1),
(3, 'Xóa', 'tẩy sạch', '104000.00', 2),
(4, 'Gói', '+phần trăm', '1000.00', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_ass_categories`
--

CREATE TABLE `phpbb_ass_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `category_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `category_slug` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `category_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `category_desc` mediumtext COLLATE utf8_bin NOT NULL,
  `item_conflicts` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_ass_categories`
--

INSERT INTO `phpbb_ass_categories` (`category_id`, `category_order`, `category_active`, `category_title`, `category_slug`, `category_icon`, `category_desc`, `item_conflicts`) VALUES
(1, 1, 1, 'SHOP BOOKS', 'book', 'fa-heart', '<t>Nơi mọi người dụng có thể giao dịch sách với nhau.</t>', 0),
(2, 2, 1, 'Audio', 'audio', 'fa-arrow-circle-down', '<t>CHuyên bán sách audio.</t>', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_ass_inventory`
--

CREATE TABLE `phpbb_ass_inventory` (
  `inventory_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gifter_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `use_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `use_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `purchase_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `purchase_price` decimal(14,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_ass_inventory`
--

INSERT INTO `phpbb_ass_inventory` (`inventory_id`, `category_id`, `item_id`, `user_id`, `gifter_id`, `use_count`, `use_time`, `purchase_time`, `purchase_price`) VALUES
(2, 1, 1, 2, 2, 0, 0, 1609690196, '0.00'),
(6, 2, 7, 2, 0, 1, 1609918241, 1609918186, '2000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_ass_items`
--

CREATE TABLE `phpbb_ass_items` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `item_order` int(11) NOT NULL DEFAULT 0,
  `item_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `item_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_slug` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_desc` mediumtext COLLATE utf8_bin NOT NULL,
  `item_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_data` mediumtext COLLATE utf8_bin NOT NULL,
  `item_price` decimal(14,2) NOT NULL DEFAULT 0.00,
  `item_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_stack` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `item_purchases` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_stock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_stock_threshold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_stock_unlimited` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `item_expire_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_expire_seconds` int(11) NOT NULL DEFAULT 0,
  `item_delete_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_delete_seconds` int(11) NOT NULL DEFAULT 0,
  `item_refund_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_refund_seconds` int(11) NOT NULL DEFAULT 0,
  `item_gift` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `item_gift_only` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `item_gift_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `item_gift_percentage` int(3) NOT NULL DEFAULT 0,
  `item_gift_price` decimal(14,2) NOT NULL DEFAULT 0.00,
  `item_sale_price` decimal(14,2) NOT NULL DEFAULT 0.00,
  `item_sale_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_sale_until` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_featured_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_featured_until` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_available_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_available_until` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_background` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_images` mediumtext COLLATE utf8_bin NOT NULL,
  `item_related_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `item_related_items` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_conflict` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_ass_items`
--

INSERT INTO `phpbb_ass_items` (`item_id`, `item_order`, `item_active`, `item_title`, `item_slug`, `item_icon`, `item_desc`, `item_type`, `item_data`, `item_price`, `item_count`, `item_stack`, `item_purchases`, `item_stock`, `item_stock_threshold`, `item_stock_unlimited`, `item_expire_string`, `item_expire_seconds`, `item_delete_string`, `item_delete_seconds`, `item_refund_string`, `item_refund_seconds`, `item_gift`, `item_gift_only`, `item_gift_type`, `item_gift_percentage`, `item_gift_price`, `item_sale_price`, `item_sale_start`, `item_sale_until`, `item_featured_start`, `item_featured_until`, `item_available_start`, `item_available_until`, `item_create_time`, `item_edit_time`, `item_background`, `item_images`, `item_related_enabled`, `item_related_items`, `item_conflict`, `category_id`) VALUES
(1, 1, 1, 'Con Chim Xanh Biếc Bay Về (Nguyễn Nhật Ánh)', 'con-chim-xanh-bic-bay-v-nguyn-nht-nh', '', '<t>Con Chim Xanh Biếc Bay Về<br/>\n<br/>\nKhông giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành phố Hồ Chí Minh nơi tác giả sinh sống (như là một sự đền đáp ân tình với mảnh đất miền Nam). Các nhân vật chính trong truyện cũng “lớn” hơn, với những câu chuyện mưu sinh lập nghiệp lắm gian nan thử thách của các sinh viên trẻ đầy hoài bão. Tất nhiên không thể thiếu những câu chuyện tình cảm động, kịch tính và bất ngờ khiến bạn đọc ngẩn ngơ, cười ra nước mắt. Và như trong mọi tác phẩm Nguyễn Nhật Ánh, sự tử tế và tinh thần hướng thượng vẫn là điểm nhấn quan trọng trong quyển sách mới này.<br/>\n<br/>\nNhư một cuốn phim “trinh thám tình yêu”, Con chim xanh biếc bay về dẫn bạn đi hết từ bất ngờ này đến tò mò suy đoán khác, để kết thúc bằng một nỗi hân hoan vô bờ sau bao phen hồi hộp nghi kỵ đến khó thở.<br/>\n<br/>\nBạn sẽ theo phe sinh viên-nhân viên với những câu thơ dịu dàng và đáo để, hay phe ông chủ với những kỹ năng kinh doanh khởi nghiệp? Và hãy đoán thử, điều gì khiến bạn có thể cảm động đến rưng rưng trong cuộc sống giữa Sài Gòn bộn bề?<br/>\n<br/>\nLâu lắm mới có hình ảnh thành phố rộn ràng trong tác phẩm của Nguyễn Nhật Ánh - điều hấp dẫn khác thường của Con chim xanh biếc bay về.<br/>\n<br/>\nChính vì thế mà cuốn sách chỉ có một cách đọc thôi: một mạch từ đầu đến cuối!<br/>\n<br/>\nĐặc biệt, kèm theo mỗi cuốn sách là 6 postcard với nhiều tranh vẽ của họa sĩ Đỗ Hoàng Tường.</t>', 'phpbbstudio.ass.items.points', '{\"points\":\"104000\"}', '104000.00', 0, 1, 1, 0, 0, 1, '', 0, '', 0, '', 0, 1, 0, 1, 0, '0.00', '0.00', 0, 0, 0, 0, 0, 0, 1609513691, 1609689505, 'a4-biasach_izgn.jpg', '[\"a4-biasach_izgn.jpg\"]', 1, '[]', 0, 1),
(2, 2, 1, 'Đề thi Toeic', 'thi-toeic', 'fa-adn', '<t></t>', 'phpbbstudio.ass.items.file', '{\"file\":\"ETS 2019 RC TEST 1-5.pdf\"}', '1000.00', 0, 1, 0, 0, 0, 1, '', 0, '', 0, '', 0, 1, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, 0, 1609670961, 1609689524, 'toeic-la-gi-1.jpg', '[\"toeic-la-gi-1.jpg\"]', 1, '[]', 0, 1),
(3, 3, 1, 'Truyện cổ Tấm Cám', 'truyen', 'fa-adn', '<t>Một trong những câu chuyện cổ ngày xưa, được các bạn nhỏ yêu thích.</t>', 'phpbbstudio.ass.items.file', '{\"file\":\"Tam Cam, Dang Sau Mot Co Tich - Sherry.pdf\"}', '1000.00', 0, 1, 0, 0, 0, 1, '', 0, '', 0, '', 0, 1, 0, 0, 0, '1200.00', '800.00', 0, 0, 0, 0, 0, 0, 1609689399, 1609689544, 'tam-cam.u547.d20170120.t100949.386890.jpg', '[\"tam-cam.u547.d20170120.t100949.386890.jpg\"]', 1, '[]', 0, 1),
(4, 4, 1, 'Pháp luật đại cương', 'phap', 'fa-angellist', '<t>Pháp luật đại cương là một môn học có nội dung rất phong phú, môn học nghiên cứu các khái niệm cơ bản, các phạm trù cơ bản nhất về Nhà nước và pháp luật với góc độ khoa học pháp lý. Nhà nước và pháp luật là những hiện tượng xã hội có mối quan hệ mật thiết với nhau tồn tại không phụ thuộc vào ý chí của con người nhưng Nhà nước và pháp luật được tổ chức, thiết lập theo ý chí của con người để phục vụ chính ý muốn của con người.Vì vậy trong đời sống xã hội, Nhà nước và pháp luật có vai trò rất quan trọng. Pháp luật được áp dụng giải quyết hầu hết các quan hệ trong xã hội. Biết và hiểu được Nhà nước và pháp luật giúp mọi người ứng xử, chấp hành tốt các chính sách của Nhà nước cũng như các quy định pháp luật, đảm bảo kỷ cương xã hội.<br/>\n<br/>\n        Trên cơ sở đó môn học cung cấp cho người học những nội dung cơ bản về Nhà nước và pháp luật, những nội dung cơ bản của các ngành luật gốc như Hiến pháp, Hành chính, Dân sự, Hình sự,… trong hệ thống pháp luật Việt Nam, từ đó giúp người học nâng cao sự hiểu biết về vai trò và sự quan trọng của Nhà nước và pháp luật trong đời sống, để luôn có thái độ tuân thủ nghiêm chỉnh pháp luật nhà nước, có ý thức đầy đủ về bổn phận và nghĩa vụ của một công dân đối với quốc gia, biết áp dụng pháp luật trong cuộc sống làm việc của mình, nhất là đối với người học trong các ngành học thuộc khoa học xã hội, vừa cần những lý luận cơ bản về pháp luật, vừa cần những kiến thức pháp luật chuyên ngành. Môn học được Bộ Giáo dục và Đào tạo xác định là môn học cơ bản, quan trọng và cần thiết trang bị cho người học ở bậc đại học.<br/>\nNhà nước và pháp luật được rất nhiều ngành khoa học nghiên cứu với nhiều góc độ khác nhau. Không như những ngành khoa học khác, Pháp luật đại cương chỉ nghiên cứu hiện tượng<br/>\n<br/>\n        Nhà nước và pháp luật với góc độ tổng thể, nên đối tượng nghiên cứu của môn học là những vấn đề chung và cơ bản nhất như nguồn gốc, bản chất, vai trò, chức năng của Nhà nước và pháp luật, hình thức Nhà nước, hình thức pháp luật, các khái niệm cơ bản trong luật,những quy luật cơ bản của sự phát triển Nhà nước và pháp luật, đồng thời nghiên cứu về Nhà nước và pháp luật Việt Nam hiện nay theo quan niệm chính trị pháp lý nhất định để người học nhận thức và hiểu biết cụ thể về Nhà nước và pháp luật Việt Nam.<br/>\nGiới thiệu nguồn gốc, bản chất của Nhà nước và pháp luật<br/>\nGiới thiệu những khái niệm cơ bản về pháp luật<br/>\nGiới thiệu hệ thống pháp luật Việt Nam hiện nay, tập trung vào 1 số ngành luật thông dụng</t>', 'phpbbstudio.ass.items.file', '{\"file\":\"Webtietkiem.com-phap_luat_dai_cuong-\\u0110H-Mo-TPHCM.pdf\"}', '1000.00', 0, 1, 1, 0, 0, 1, '', 0, '', 0, '', 0, 1, 0, 1, 0, '0.00', '900.00', 0, 0, 0, 0, 0, 0, 1609753846, 1609837765, 'download-sach-giao-trinh-phap-luat-dai-cuong-pdfword-mien-phi.jpg', '[\"download-sach-giao-trinh-phap-luat-dai-cuong-pdfword-mien-phi.jpg\"]', 1, '[]', 0, 1),
(5, 5, 1, 'Tin học đại cương', 'tin-hc-i-cng', 'fa-angellist', '<t>Tin học đại cương là môn học được giảng dạy trong tất cả các trường đại học, cao đẳng, tuy nhiên nội dung dậy có khác nhau. Tùy theo yêu cầu của từng ngành mà chỉ định số tiết, khối lượng kiến thức khác nhau.</t>', 'phpbbstudio.ass.items.file', '{\"file\":\"Webtietkiem.com-giao-trinh-tin-hoc-dai-cuong-DH-Bach-Khoa-HCM.pdf\"}', '1000.00', 0, 1, 0, 0, 0, 1, '', 0, '', 0, '', 0, 1, 0, 1, 0, '0.00', '0.00', 0, 0, 0, 0, 0, 0, 1609754104, 0, 'download-sach-giao-trinh-tin-hoc-dai-cuong-pdf-mien-phi.jpg', '[\"download-sach-giao-trinh-tin-hoc-dai-cuong-pdf-mien-phi.jpg\"]', 1, '[]', 0, 1),
(6, 6, 1, 'Giáo trình Mác lê nin', 'gio-trnh-mc-l-nin', 'fa-angellist', '<t>Tác giả : <br/>\n<br/>\nPGS. TS. Vũ Tình<br/>\nPGS.TS. Trần Văn Thụy<br/>\nGS, TS. Nguyễn Hữu Vui<br/>\nGS, TS. Nguyễn Ngọc Long<br/>\nTS. Vương Tất Đạt<br/>\nTS. Dương Văn Thịnh<br/>\nPGS, TS. Đoàn Quang Thọ<br/>\nTS. Nguyễn Như Hải<br/>\nPGS, TS. Trương Giang Long<br/>\nPGS.TS. Đoàn Đức Hiếu<br/>\nTS. Phạm Văn Sinh<br/>\nTh.S. Vũ Thanh Bình<br/>\nCN. Nguyễn Đăng Quang<br/>\nĐồng chủ biên: GS, TS. Nguyễn Ngọc Long – GS, TS. Nguyễn Hữu Vui<br/>\n<br/>\nDOWNLOAD Free<br/>\n<br/>\nTrọn bộ ebook : PDF<br/>\n<br/>\nNhững cuốn ebook bạn có thể tải Free tại Webtietkiem. Nhưng nếu có điều kiện chúng tôi khuyên bạn nên mua sách để đọc:<br/>\n<br/>\nBạn có thể mua sách Giáo trình Triết học mác – lênin online tại Tiki.vn | Vinabook.com | Lazada.vn | Adayroi.com<br/>\n<br/>\nKhái lược về Triết học<br/>\nI- Triết học là gì ?<br/>\n1. Triết học và đối tượng của triết học<br/>\na) Khái niệm “Triết học”<br/>\nTriết học ra đời ở cả phương Đông và phương Tây gần như cùng một thời gian (khoảng từ thế kỷ VIII đến thế kỷ VI trước Công nguyên) tại một số trung tâm văn minh cổ đại của nhân loại như Trung Quốc, ấn Độ, Hy Lạp. ở Trung Quốc, thuật ngữ triết học có gốc ngôn ngữ là chữ triết ( ); người Trung Quốc hiểu triết học không phải là sự miêu tả mà là sự truy tìm bản chất của đối tượng, triết học chính là trí tuệ, là sự hiểu<br/>\nbiết sâu sắc của con người.<br/>\n<br/>\nỞ ấn Độ, thuật ngữ dar’sana (triết học) có nghĩa là chiêm ngưỡng, nhưng mang hàm ý là tri thức dựa trên lý trí, là con đường suy ngẫm để dẫn dắt con người đến với lẽ phải.<br/>\n<br/>\nỞ phương Tây, thuật ngữ triết học xuất hiện ở Hy Lạp. Nếu chuyển từ tiếng Hy Lạp cổ sang tiếng Latinh thì triết học là Philosophia, nghĩa là yêu mến sự thông thái. Với người Hy Lạp, philosophia vừa mang tính định hướng, vừa nhấn mạnh đến khát vọng tìm<br/>\nkiếm chân lý của con người.<br/>\n<br/>\nNhư vậy, cho dù ở phương Đông hay phương Tây, ngay từ đầu, triết học đã là hoạt động tinh thần biểu hiện khả năng nhận thức, đánh giá của con người, nó tồn tại với tư cách là một hình thái ý thức xã hội. Đã có rất nhiều cách định nghĩa khác nhau về triết học, nhưng đều bao hàm<br/>\nnhững nội dung cơ bản giống nhau: Triết học nghiên cứu thế giới với tư cách là một chỉnh thể, tìm ra những quy luật chung nhất chi phối sự vận động của chỉnh thể đó nói chung, của xã hội loài người, của con người trong cuộc sống cộng đồng nói riêng và thể<br/>\nhiện nó một cách có hệ thống dưới dạng duy lý.<br/>\n<br/>\nKhái quát lại, có thể hiểu: Triết học là hệ thống tri thức lý luận chung nhất của con người về thế giới; về vị trí, vai trò của con người trong thế giới ấy.<br/>\nTriết học ra đời do hoạt động nhận thức của con người phục vụ nhu cầu sống; song, với tư cách là hệ thống tri thức lý luận chung nhất, triết học chỉ có thể xuất hiện trong những điều kiện nhất định sau đây:<br/>\nCon người đã phải có một vốn hiểu biết nhất định và đạt đến khả năng rút ra được cái chung trong muôn vàn những sự kiện, hiện tượng riêng lẻ.<br/>\nXã hội đã phát triển đến thời kỳ hình thành tầng lớp lao động trí óc. Họ đã nghiên cứu, hệ thống hóa các quan điểm, quan niệm rời rạc lại thành học thuyết, thành lý luận và triết học ra đời.<br/>\nTất cả những điều trên cho thấy: Triết học ra đời từ thực tiễn, do nhu cầu của thực tiễn; nó có nguồn gốc nhận thức và nguồn gốc xã hội.</t>', 'phpbbstudio.ass.items.file', '{\"file\":\"Webtietkiem.com-giao-trinh-triet-hoc-mac-lenin-pdf.pdf\"}', '1000.00', 0, 1, 0, 0, 0, 1, '', 0, '', 0, '', 0, 1, 0, 1, 0, '0.00', '0.00', 0, 0, 0, 0, 0, 0, 1609754474, 0, 'download-sach-giao-trinh-triet-hoc-mac-lenin-pdf-mien-phi.jpg', '[\"download-sach-giao-trinh-triet-hoc-mac-lenin-pdf-mien-phi.jpg\"]', 1, '[]', 0, 1),
(7, 7, 1, 'Định Mệnh phần 1', 'nh-mnh-phn-1', 'fa-heart', '<t>Một cô gái trẻ mồ côi trơ trọi vào đời đi làm nuôi một cậu em còn tuổi đi học.<br/>\n<br/>\nCó nhan sắc nên cô lọt vào tầm ngắm của ông chủ và bị ông dùng thủ đoạn chuốc thuốc mê để chiếm đoạt thân xác.<br/>\n<br/>\nCô cương quyết bỏ đi, không chịu phận làm vợ bé, làm nghề may vá trong một xóm lao động để nuôi em. Không ngờ cái lần oan nghiệt đó đã khiến cô bị mang thai. Rồi đứa em bị tai nạn giao thông. Một doanh nhân trẻ đã giúp đưa em vào bệnh viện và từ đó cưu mang cả hai chị em, nhận làm cha đứa nhỏ khi nó chào đời. Không hiểu sao thằng bé lại rất giống anh…<br/>\n<br/>\nĐịnh mệnh thật khắc nghiệt khi ông chủ từ nước ngoài về, đi tìm lại cô gái. Không ngờ ông chính là chú ruột của chàng doanh nhân…<br/>\n<br/>\nTrân trọng giới thiệu!</t>', 'phpbbstudio.ass.items.file', '{\"file\":\"\\u0110\\u1ecbnh M\\u1ec7nh - Ph\\u1ea7n (1).mp3\"}', '2000.00', 0, 1, 1, 0, 0, 1, '', 0, '', 0, '', 0, 1, 0, 1, 0, '0.00', '0.00', 0, 0, 0, 0, 0, 0, 1609755270, 1609918186, 'dinh-menh-ba-tung-long.jpg', '[\"dinh-menh-ba-tung-long.jpg\"]', 1, '[]', 0, 2),
(8, 8, 1, 'Đỗ Nương báo oán', 'nng-bo-on', 'fa-heart', '<t>Trích đoạn tác phẩm – Đỗ Lương Báo Oán<br/>\nTrái đất vần xây, tối rồi kế sáng, sáng rồi tối lại.<br/>\n<br/>\nNước sông luân-chuyển, hết ròng rồi lớn, lớn rồi lại ròng. Việc nhà hễ hết thạnh rồi tới suy cũng như vận nước hễ mất trị thì phải loạn. Đó là định-luật dĩ-nhiên xưa nay thường-lệ mà Đông Tây cũng thường-lệ.<br/>\n<br/>\nThử lật Việt-Nam Quốc-Sử mà xem, chúng ta sẽ nhận thấy rõ-ràng cuộc thạnh-trị với cuộc loạn ly cứ tiếp mà diễn ra hoài hoài. Nếu người cầm-quyền hẫng-hờ để thất chánh thì tự-nhiên rối-rấm khắp mọi nơi. Nếu muốn non-nước được thanh-bình thi phải nhờ bực auh-hùng chí-sĩ có đại đức đại tài, thâu-phục dân tâm, hướng-dẫn quần-chúng, mới có thể đánh dẹp trong ngoài mà xây dựng an-ninh lại bá-tánh.<br/>\n<br/>\nKìa như thuở xưa, sau một cơn bị trị kéo dài đến trót một ngàn năm, nước non nghiêng-ngửa, quốc-hồn lu-lờ, dân-chúng khóc than, cỏ cây khô héo. Trong thời-gian đau khổ ấy tuy có Trưng Nữ Vương, có Bà Tiệu-Ẩu, có Lý Nam-Đế, có Triệu Việt-Vương có Mai Hắc-Đế, có Khúc-Thừa Dũ lần-lượt nổi lên quyết ra tay bình-định sơn-hà và đem chủ-quyền quốc-gia về cho dân-tộc. Rất tiếc thay các đứng tiền-nhơn ấy có hào-khí chói-lòa, có hùng-tâm mãnh-liệt, nhưng chưa phải là người lật ngược thời-cuộc, bởi vậy công-nghiệp không thành-tựu được hoàn-toàn, chỉ lưu lại danh thơm chí cả cho hậu nhơn sùng-bái muôn đời mà thôi….<br/>\n<br/>\nGiới thiệu đôi nét về tác giả: Hồ Biểu Chánh<br/>\nKhi viết văn, ông lấy tên tự ghép với họ là Hồ Biểu Chánh, trở thành một bút danh bất hủ, được nhiều người biết đến và quí mến hơn tên tộc Hồ Văn Trung của ông.<br/>\n<br/>\nÔng sáng tác văn học rất nhiều và để lại hơn 100 tác phẩm gồm tiểu thuyết và các thể loại khác, như: nghiên cứu, phê bình văn học, sáng tác tuồng hát cùng các bản dịch văn học cổ điển Trung Quốc như Tình sử, Kim cổ kỳ quan… đóng góp rất nhiều cho sự phát triển của nền văn học Việt Nam hiện đại.<br/>\n<br/>\nTiểu thuyết của ông thuộc về thời kỳ đầu của văn học chữ quốc ngữ, cốt truyện đơn giản, triết lý chủ đạo là thiện thắng ác, ở hiền gặp lành, điểm đặc biệt là rất Nam Bộ, từ giọng văn đến miêu tả con người. Ông có phóng tác một số tiểu thuyết Pháp.<br/>\n<br/>\nHồ Biểu Chánh sở trường về viết văn xuôi tự sự. Đề tài phần lớn là cuộc sống Nam Bộ từ nông thôn đến thành thị những năm đầu thế kỷ 20 với những xáo trộn xã hội do cuộc đấu tranh giữa mới và cũ. Cách diễn đạt của ông nôm na, bình dị. Ông đã có những đóng góp to lớn vào sự hình thành thể lọai tiểu thuyết trên chặng đường phôi thai. Ông để lại một khối lượng sáng tác không nhỏ: 64 tiểu thuyết, 12 tập truyện ngắn và truyện kể, 12 vở hài kịch và ca kịch, 5 tập thơ và truyện thơ, 8 tập ký, 28 tập khảo cứu-phê bình. Ngoài ra, còn có các bài diễn thuyết và 2 tác phẩm dịch.<br/>\n<br/>\nTác giả: Hồ Biểu Chánh – Giọng đọc: Lê Duyên<br/>\n<br/>\nNguồn Audio Lê Duyên</t>', 'phpbbstudio.ass.items.points', '{\"points\":\"1000\"}', '1200.00', 0, 1, 0, 0, 0, 1, '', 0, '', 0, '', 0, 1, 0, 1, 0, '0.00', '0.00', 0, 0, 0, 0, 0, 0, 1609755716, 0, 'do-luong-bao-oan.jpg', '[\"do-luong-bao-oan.jpg\"]', 1, '[]', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_ass_logs`
--

CREATE TABLE `phpbb_ass_logs` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `points_old` decimal(14,2) NOT NULL DEFAULT 0.00,
  `points_sum` decimal(14,2) NOT NULL DEFAULT 0.00,
  `points_new` decimal(14,2) NOT NULL DEFAULT 0.00,
  `item_purchase` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `recipient_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_ass_logs`
--

INSERT INTO `phpbb_ass_logs` (`log_id`, `log_ip`, `log_time`, `points_old`, `points_sum`, `points_new`, `item_purchase`, `item_id`, `category_id`, `user_id`, `recipient_id`) VALUES
(1, '::1', 1609514092, '0.00', '104000.00', '-104000.00', 1, 1, 1, 2, 0),
(2, '::1', 1609837765, '104000.00', '1000.00', '103000.00', 1, 4, 1, 2, 0),
(3, '::1', 1609837820, '0.00', '0.00', '0.00', 0, 4, 1, 2, 0),
(4, '::1', 1609918186, '103001.00', '2000.00', '101001.00', 1, 7, 2, 2, 0),
(5, '::1', 1609918241, '0.00', '0.00', '0.00', 0, 7, 2, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_attachments`
--

CREATE TABLE `phpbb_attachments` (
  `attach_id` int(10) UNSIGNED NOT NULL,
  `post_msg_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `in_message` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_orphan` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `filetime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `thumbnail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_attachments`
--

INSERT INTO `phpbb_attachments` (`attach_id`, `post_msg_id`, `topic_id`, `in_message`, `poster_id`, `is_orphan`, `physical_filename`, `real_filename`, `download_count`, `attach_comment`, `extension`, `mimetype`, `filesize`, `filetime`, `thumbnail`) VALUES
(1, 2, 2, 0, 2, 0, '2_8dc86cb1a0cdadee6167b35e7af3644e', 'logo.png', 11, '', 'png', 'image/png', 8554, 1603789238, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_banlist`
--

CREATE TABLE `phpbb_banlist` (
  `ban_id` int(10) UNSIGNED NOT NULL,
  `ban_userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ban_end` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ban_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_bbcodes`
--

CREATE TABLE `phpbb_bbcodes` (
  `bbcode_id` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_bookmarks`
--

CREATE TABLE `phpbb_bookmarks` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_bookmarks`
--

INSERT INTO `phpbb_bookmarks` (`topic_id`, `user_id`) VALUES
(2, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_bots`
--

CREATE TABLE `phpbb_bots` (
  `bot_id` int(10) UNSIGNED NOT NULL,
  `bot_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_bots`
--

INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
(7, 1, 'DuckDuckGo [Bot]', 9, 'DuckDuckBot/', ''),
(8, 1, 'Exabot [Bot]', 10, 'Exabot', ''),
(9, 1, 'FAST Enterprise [Crawler]', 11, 'FAST Enterprise Crawler', ''),
(10, 1, 'FAST WebCrawler [Crawler]', 12, 'FAST-WebCrawler/', ''),
(11, 1, 'Francis [Bot]', 13, 'http://www.neomo.de/', ''),
(12, 1, 'Gigabot [Bot]', 14, 'Gigabot/', ''),
(13, 1, 'Google Adsense [Bot]', 15, 'Mediapartners-Google', ''),
(14, 1, 'Google Desktop', 16, 'Google Desktop', ''),
(15, 1, 'Google Feedfetcher', 17, 'Feedfetcher-Google', ''),
(16, 1, 'Google [Bot]', 18, 'Googlebot', ''),
(17, 1, 'Heise IT-Markt [Crawler]', 19, 'heise-IT-Markt-Crawler', ''),
(18, 1, 'Heritrix [Crawler]', 20, 'heritrix/1.', ''),
(19, 1, 'IBM Research [Bot]', 21, 'ibm.com/cs/crawler', ''),
(20, 1, 'ICCrawler - ICjobs', 22, 'ICCrawler - ICjobs', ''),
(21, 1, 'ichiro [Crawler]', 23, 'ichiro/', ''),
(22, 1, 'Majestic-12 [Bot]', 24, 'MJ12bot/', ''),
(23, 1, 'Metager [Bot]', 25, 'MetagerBot/', ''),
(24, 1, 'MSN NewsBlogs', 26, 'msnbot-NewsBlogs/', ''),
(25, 1, 'MSN [Bot]', 27, 'msnbot/', ''),
(26, 1, 'MSNbot Media', 28, 'msnbot-media/', ''),
(27, 1, 'Nutch [Bot]', 29, 'http://lucene.apache.org/nutch/', ''),
(28, 1, 'Online link [Validator]', 30, 'online link validator', ''),
(29, 1, 'psbot [Picsearch]', 31, 'psbot/0', ''),
(30, 1, 'Sensis [Crawler]', 32, 'Sensis Web Crawler', ''),
(31, 1, 'SEO Crawler', 33, 'SEO search Crawler/', ''),
(32, 1, 'Seoma [Crawler]', 34, 'Seoma [SEO Crawler]', ''),
(33, 1, 'SEOSearch [Crawler]', 35, 'SEOsearch/', ''),
(34, 1, 'Snappy [Bot]', 36, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(35, 1, 'Steeler [Crawler]', 37, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(36, 1, 'Telekom [Bot]', 38, 'crawleradmin.t-info@telekom.de', ''),
(37, 1, 'TurnitinBot [Bot]', 39, 'TurnitinBot/', ''),
(38, 1, 'Voyager [Bot]', 40, 'voyager/', ''),
(39, 1, 'W3 [Sitesearch]', 41, 'W3 SiteSearch Crawler', ''),
(40, 1, 'W3C [Linkcheck]', 42, 'W3C-checklink/', ''),
(41, 1, 'W3C [Validator]', 43, 'W3C_Validator', ''),
(42, 1, 'YaCy [Bot]', 44, 'yacybot', ''),
(43, 1, 'Yahoo MMCrawler [Bot]', 45, 'Yahoo-MMCrawler/', ''),
(44, 1, 'Yahoo Slurp [Bot]', 46, 'Yahoo! DE Slurp', ''),
(45, 1, 'Yahoo [Bot]', 47, 'Yahoo! Slurp', ''),
(46, 1, 'YahooSeeker [Bot]', 48, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_config`
--

CREATE TABLE `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_config`
--

INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '1', 0),
('allow_avatar_gravatar', '1', 0),
('allow_avatar_local', '1', 0),
('allow_avatar_remote', '1', 0),
('allow_avatar_remote_upload', '1', 0),
('allow_avatar_upload', '1', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_board_notifications', '1', 0),
('allow_bookmarks', '1', 0),
('allow_cdn', '0', 0),
('allow_emailreuse', '1', 0),
('allow_forum_notify', '1', 0),
('allow_live_searches', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_password_reset', '1', 0),
('allow_pm_attach', '1', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('allow_viglink_phpbb', '1', 0),
('allowed_schemes_links', 'http,https,ftp', 0),
('aps_actions_per_page', '100', 0),
('aps_birthday_last_run', '1609912101', 1),
('aps_chain_merge_delete', '0', 0),
('aps_chain_merge_move', '0', 0),
('aps_chain_warn_pm', '0', 0),
('aps_display_adjustments', '5', 0),
('aps_display_graph_time', '1500', 0),
('aps_display_top_change', '1', 0),
('aps_display_top_count', '3', 0),
('aps_ignore_criteria', '0', 0),
('aps_ignore_excluded_chars', '0', 0),
('aps_ignore_excluded_words', '0', 0),
('aps_ignore_min_chars', '1', 0),
('aps_ignore_min_words', '100', 0),
('aps_link_locations', '32', 0),
('aps_notification_id', '3', 0),
('aps_points_decimals', '0', 0),
('aps_points_display_pm', '1', 0),
('aps_points_display_post', '1', 0),
('aps_points_display_profile', '1', 0),
('aps_points_exclude_chars', '1', 0),
('aps_points_exclude_words', '1', 0),
('aps_points_icon', 'fa-money', 0),
('aps_points_icon_img', '', 0),
('aps_points_icon_position', '1', 0),
('aps_points_max', '', 0),
('aps_points_min', '0', 0),
('aps_points_name_en', 'VND', 0),
('aps_points_name_vi', '', 0),
('aps_points_safe_mode', '1', 0),
('aps_points_separator_dec', ',', 0),
('aps_points_separator_thou', ',', 0),
('ass_active', '1', 0),
('ass_carousel_arrows', '1', 0),
('ass_carousel_dots', '1', 0),
('ass_carousel_fade', '0', 0),
('ass_carousel_play', '1', 0),
('ass_carousel_play_speed', '3000', 0),
('ass_carousel_speed', '300', 0),
('ass_deactivate_conflicts', '1', 0),
('ass_enabled', '1', 0),
('ass_gift_enabled', '1', 0),
('ass_gift_icon', 'fa-gift', 0),
('ass_inventory_icon', 'fa-archive', 0),
('ass_items_per_page', '20', 0),
('ass_link_locations', '128', 0),
('ass_logs_per_page', '10', 0),
('ass_no_image_icon', 'fa-picture-o', 0),
('ass_notification_gift_id', '3', 0),
('ass_notification_stock_id', '0', 0),
('ass_panel_featured_banner_colour', 'gold', 0),
('ass_panel_featured_banner_size', '', 0),
('ass_panel_featured_icon', 'fa-star', 0),
('ass_panel_featured_icon_colour', 'lighten', 0),
('ass_panel_featured_limit', '10', 0),
('ass_panel_featured_order', '1', 0),
('ass_panel_featured_sale_banner_colour', 'purple', 0),
('ass_panel_featured_sale_banner_size', 'small', 0),
('ass_panel_featured_sale_icon', 'fa-lightbulb-o', 0),
('ass_panel_featured_sale_icon_colour', 'white', 0),
('ass_panel_featured_sale_limit', '3', 0),
('ass_panel_featured_sale_order', '3', 0),
('ass_panel_featured_sale_width', '6', 0),
('ass_panel_featured_width', '6', 0),
('ass_panel_limited_banner_colour', 'red', 0),
('ass_panel_limited_banner_size', 'small', 0),
('ass_panel_limited_icon', 'fa-sort-numeric-desc', 0),
('ass_panel_limited_icon_colour', 'white', 0),
('ass_panel_limited_limit', '5', 0),
('ass_panel_limited_order', '5', 0),
('ass_panel_limited_width', '6', 0),
('ass_panel_random_banner_colour', 'blue', 0),
('ass_panel_random_banner_size', '', 0),
('ass_panel_random_icon', '', 0),
('ass_panel_random_icon_colour', 'blue', 0),
('ass_panel_random_limit', '10', 0),
('ass_panel_random_order', '6', 0),
('ass_panel_random_width', '3', 0),
('ass_panel_recent_banner_colour', 'blue', 0),
('ass_panel_recent_banner_size', 'small', 0),
('ass_panel_recent_icon', 'fa-line-chart', 0),
('ass_panel_recent_icon_colour', 'white', 0),
('ass_panel_recent_limit', '5', 0),
('ass_panel_recent_order', '4', 0),
('ass_panel_recent_width', '6', 0),
('ass_panel_sale_banner_colour', 'green', 0),
('ass_panel_sale_banner_size', '', 0),
('ass_panel_sale_icon', 'fa-tag', 0),
('ass_panel_sale_icon_colour', 'darken', 0),
('ass_panel_sale_limit', '5', 0),
('ass_panel_sale_order', '2', 0),
('ass_panel_sale_width', '6', 0),
('ass_purge_cache', '1', 0),
('ass_shop_icon', 'fa-shopping-cart', 0),
('assets_version', '30', 0),
('attachment_quota', '500', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '5000000', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '120', 0),
('avatar_max_width', '120', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', 'd8503ed7ed7887d28b804632dd32cf38', 0),
('board_contact', '1756100088@hcmussh.edu.vn', 0),
('board_contact_name', '', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_email', '1756100088@hcmussh.edu.vn', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_index_text', '', 0),
('board_startdate', '1603785223', 0),
('board_timezone', 'Asia/Bangkok', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('cache_last_gc', '1609914609', 1),
('captcha_gd', '1', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_plugin', 'core.captcha.plugins.gd', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('comments_per_page', '10', 0),
('confirm_refresh', '1', 0),
('contact_admin_form_enable', '1', 0),
('cookie_domain', 'localhost', 0),
('cookie_name', 'phpbb3_d9gfl', 0),
('cookie_notice', '0', 0),
('cookie_path', '/', 0),
('cookie_secure', '', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('cron_lock', '0', 1),
('database_gc', '604800', 0),
('database_last_gc', '1609843094', 1),
('dbms_version', '10.4.14-MariaDB', 0),
('default_dateformat', '30/12/2020 21:47', 0),
('default_lang', 'en', 0),
('default_search_return_chars', '300', 0),
('default_style', '2', 0),
('delete_time', '0', 0),
('display_last_edited', '1', 0),
('display_last_subject', '1', 0),
('display_order', '0', 0),
('display_unapproved_posts', '1', 0),
('dmzx.mchat.text_reparser.mchat_messages_cron_interval', '10', 0),
('dmzx.mchat.text_reparser.mchat_messages_last_cron', '1603788110', 0),
('edit_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_force_sender', '0', 0),
('email_max_chunk_size', '50', 0),
('email_package_size', '20', 0),
('enable_accurate_pm_button', '1', 0),
('enable_comments', '1', 0),
('enable_confirm', '1', 0),
('enable_mod_rewrite', '0', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('enable_queue_trigger', '0', 0),
('enable_update_hashes', '0', 0),
('enable_video', '1', 0),
('enable_video_comments', '1', 0),
('enable_video_global', '1', 0),
('enable_video_on_index', '1', 0),
('enable_video_on_index_location', '1', 0),
('enable_video_share', '1', 0),
('enable_video_statics_on_index', '1', 0),
('extension_force_unstable', '0', 0),
('feed_enable', '1', 0),
('feed_forum', '1', 0),
('feed_http_auth', '0', 0),
('feed_item_statistics', '1', 0),
('feed_limit', '10', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall', '1', 0),
('feed_overall_forums', '0', 0),
('feed_overall_forums_limit', '15', 0),
('feed_overall_topics', '0', 0),
('feed_overall_topics_limit', '15', 0),
('feed_topic', '1', 0),
('feed_topics_active', '0', 0),
('feed_topics_new', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('fulltext_postgres_max_word_len', '254', 0),
('fulltext_postgres_min_word_len', '4', 0),
('fulltext_postgres_ts_name', 'simple', 0),
('fulltext_sphinx_indexer_mem_limit', '512', 0),
('fulltext_sphinx_stopwords', '0', 0),
('google_api_key', 'AIzaSyAwWKIK3-yRiKjyGlJW1qCn3mQXaU-Zxa4', 0),
('gzip_compress', '0', 0),
('help_send_statistics', '1', 0),
('help_send_statistics_time', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('img_quality', '85', 0),
('img_strip_metadata', '0', 0),
('ip_check', '3', 0),
('ip_login_limit_max', '50', 0),
('ip_login_limit_time', '21600', 0),
('ip_login_limit_use_forwarded', '0', 0),
('jab_allow_self_signed', '0', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_package_size', '20', 0),
('jab_password', '', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('jab_verify_peer', '1', 0),
('jab_verify_peer_name', '1', 0),
('last_queue_run', '1609918637', 1),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('legend_sort_groupname', '0', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '1', 0),
('load_cpf_pm', '1', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '1', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_font_awesome_url', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css', 0),
('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_notifications', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_unreads_search', '1', 0),
('load_user_activity', '1', 0),
('load_user_activity_limit', '5000', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '500', 0),
('max_filesize_pm', '512000', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('mchat_archive_sort', '1', 0),
('mchat_avatars', '1', 0),
('mchat_bbcode_disallowed', '', 0),
('mchat_capital_letter', '1', 0),
('mchat_character_count', '1', 0),
('mchat_custom_height', '350', 0),
('mchat_custom_page', '1', 0),
('mchat_date', 'D M d, Y g:i a', 0),
('mchat_edit_delete_limit', '0', 0),
('mchat_flood_messages', '0', 0),
('mchat_flood_time', '0', 0),
('mchat_index', '1', 0),
('mchat_index_height', '250', 0),
('mchat_live_updates', '1', 0),
('mchat_location', '1', 0),
('mchat_log_enabled', '1', 0),
('mchat_max_input_height', '150', 0),
('mchat_max_message_lngth', '500', 0),
('mchat_message_num_archive', '25', 0),
('mchat_message_num_custom', '10', 0),
('mchat_message_num_index', '10', 0),
('mchat_message_top', '1', 0),
('mchat_navbar_link_count', '1', 0),
('mchat_override_min_post_chars', '0', 0),
('mchat_override_smilie_limit', '0', 0),
('mchat_posts', '1', 0),
('mchat_posts_auth_check', '0', 0),
('mchat_posts_edit', '0', 0),
('mchat_posts_login', '0', 0),
('mchat_posts_quote', '0', 0),
('mchat_posts_reply', '0', 0),
('mchat_posts_topic', '0', 0),
('mchat_prune', '0', 0),
('mchat_prune_gc', '86400', 0),
('mchat_prune_last_gc', '0', 1),
('mchat_prune_mode', '0', 0),
('mchat_prune_num', '0', 0),
('mchat_refresh', '10', 0),
('mchat_relative_time', '1', 0),
('mchat_sound', '1', 0),
('mchat_stats_index', '0', 0),
('mchat_timeout', '0', 0),
('mchat_version', '2.1.4', 0),
('mchat_whois_index', '1', 0),
('mchat_whois_refresh', '60', 0),
('media_embed_allow_sig', '0', 0),
('media_embed_bbcode', '1', 0),
('media_embed_enable_cache', '0', 0),
('media_embed_parse_urls', '1', 0),
('mediaembed_last_gc', '0', 1),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('new_member_group_default', '0', 0),
('new_member_post_limit', '100', 0),
('newest_user_colour', '', 1),
('newest_user_id', '53', 1),
('newest_username', 'test2', 1),
('num_files', '1', 1),
('num_posts', '16', 1),
('num_topics', '15', 1),
('num_users', '6', 1),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('pg_social_bbcode', '1', 0),
('pg_social_block_posts_last', '1', 0),
('pg_social_chat_enabled', '1', 0),
('pg_social_chat_enabledfor', '1', 0),
('pg_social_chat_message_bbcode_enabled', '1', 0),
('pg_social_chat_message_url_enabled', '1', 0),
('pg_social_chat_smilies_enabled', '1', 0),
('pg_social_color', '0', 0),
('pg_social_enabled', '1', 0),
('pg_social_galleryLimit', '50', 0),
('pg_social_index_activity', '0', 0),
('pg_social_index_replace', '0', 0),
('pg_social_photoLimit', '60', 0),
('pg_social_profile', '1', 0),
('pg_social_sidebarRight', '1', 0),
('pg_social_sidebarRight_friendsRandom', '1', 0),
('pg_social_smilies', '1', 0),
('pg_social_url', '1', 0),
('pg_social_version', '0.6.8b', 0),
('phpbb.pages.text_reparser.page_text_cron_interval', '10', 0),
('phpbb.pages.text_reparser.page_text_last_cron', '1603786661', 0),
('phpbb_viglink_api_key', 'e4fd14f5d7f2bb6d80b8f8da1354718c', 0),
('plupload_last_gc', '0', 1),
('plupload_salt', 'ec07b04ffc7e7e37725bbc664ec1e3fe', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('questionnaire_unique_id', '5zabzl0vkfm1dqho', 0),
('queue_interval', '60', 0),
('queue_trigger_posts', '3', 0),
('rand_seed', '0', 1),
('rand_seed_last_update', '0', 1),
('ranks_path', 'images/ranks', 0),
('read_notification_expire_days', '30', 0),
('read_notification_gc', '86400', 0),
('read_notification_last_gc', '1609912064', 1),
('recaptcha_v3_domain', 'google.com', 0),
('recaptcha_v3_key', '', 0),
('recaptcha_v3_method', 'post', 0),
('recaptcha_v3_secret', '', 0),
('recaptcha_v3_threshold_default', '0.5', 0),
('recaptcha_v3_threshold_login', '0.5', 0),
('recaptcha_v3_threshold_post', '0.5', 0),
('recaptcha_v3_threshold_register', '0.5', 0),
('recaptcha_v3_threshold_report', '0.5', 0),
('record_online_date', '1603785286', 1),
('record_online_users', '2', 1),
('referer_validation', '0', 0),
('remote_upload_verify', '0', 0),
('remove_thanks', '1', 0),
('reparse_lock', '0', 1),
('require_activation', '0', 0),
('script_path', '/phpBB3', 0),
('search_anonymous_interval', '0', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_indexing_state', '', 1),
('search_interval', '0', 0),
('search_last_gc', '1609913124', 1),
('search_store_results', '1800', 0),
('search_type', '\\phpbb\\search\\fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('senky_massnotification_id', '0', 0),
('server_name', 'localhost', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1609916992', 1),
('session_length', '3600', 0),
('shareon_version', '2.0.1', 0),
('site_desc', '', 0),
('site_home_text', '', 0),
('site_home_url', '', 0),
('sitename', 'TRẠM SÁCH USSH', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_allow_self_signed', '0', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', '', 1),
('smtp_port', '', 0),
('smtp_username', '', 1),
('smtp_verify_peer', '1', 0),
('smtp_verify_peer_name', '1', 0),
('so_delicious', '1', 0),
('so_digg', '1', 0),
('so_facebook', '1', 0),
('so_google', '1', 0),
('so_pocket', '1', 0),
('so_reddit', '1', 0),
('so_status', '1', 0),
('so_tuenti', '1', 0),
('so_tumblr', '1', 0),
('so_twitter', '1', 0),
('so_type', '1', 0),
('so_vk', '1', 0),
('so_whatsapp', '1', 0),
('style_settings_config_base_colour', 'Light', 0),
('style_settings_config_collapsible_panels', '1', 0),
('style_settings_config_colour_picker', '0', 0),
('style_settings_config_colour_preset', 'Aqua', 0),
('style_settings_config_content_block_header', 'Block', 0),
('style_settings_config_credit_line', '1', 0),
('style_settings_config_font_family', 'Roboto Slab', 0),
('style_settings_config_forumlist_display', 'Grid', 0),
('style_settings_config_header_effect', 'None', 0),
('style_settings_config_header_format', 'Both', 0),
('style_settings_config_header_particles', '1', 0),
('style_settings_config_header_position', 'center center', 0),
('style_settings_config_header_repeat', 'no-repeat', 0),
('style_settings_config_header_size', '1', 0),
('style_settings_config_hide_social_bar', '1', 0),
('style_settings_config_high_contrast_links', '1', 0),
('style_settings_config_layout_type', 'Boxed', 0),
('style_settings_config_logo_position', 'Left', 0),
('style_settings_config_navbar_position', 'Outside Header', 0),
('style_settings_config_parallax_header', '0', 0),
('style_settings_config_postprofile_side', 'Right', 0),
('style_settings_config_profile_widget', '0', 0),
('style_settings_config_rounded_avatars', '1', 0),
('style_settings_config_scroll_to_top', '1', 0),
('style_settings_config_search_widget', '1', 0),
('style_settings_config_sidebar_placement', 'Right Only', 0),
('style_settings_config_sidebars', '1', 0),
('style_settings_favicon_path', 'ext/planetstyles/flightdeck/store/unnamed-removebg-preview.png', 0),
('style_settings_header_path', 'ext/planetstyles/flightdeck/store/2.png', 0),
('style_settings_logo_height', '220', 0),
('style_settings_logo_path', 'ext/planetstyles/flightdeck/store/nenb.gif', 0),
('style_settings_logo_width', '180', 0),
('teampage_forums', '1', 0),
('teampage_memberships', '1', 0),
('text_reparser.pm_text_cron_interval', '10', 0),
('text_reparser.pm_text_last_cron', '1609919840', 0),
('text_reparser.poll_option_cron_interval', '10', 0),
('text_reparser.poll_option_last_cron', '1609918609', 0),
('text_reparser.poll_title_cron_interval', '10', 0),
('text_reparser.poll_title_last_cron', '1603786528', 0),
('text_reparser.post_text_cron_interval', '10', 0),
('text_reparser.post_text_last_cron', '1603785728', 0),
('text_reparser.user_signature_cron_interval', '10', 0),
('text_reparser.user_signature_last_cron', '1603785735', 0),
('thanks_counters_view', '1', 0),
('thanks_forum_reput_view', '0', 0),
('thanks_global_announce', '1', 0),
('thanks_global_post', '1', 0),
('thanks_info_page', '1', 0),
('thanks_number', '100', 0),
('thanks_number_digits', '2', 0),
('thanks_number_post', '10', 0),
('thanks_number_row_reput', '5', 0),
('thanks_only_first_post', '0', 0),
('thanks_post_reput_view', '1', 0),
('thanks_postlist_view', '1', 0),
('thanks_profilelist_view', '1', 0),
('thanks_reput_graphic', '1', 0),
('thanks_reput_height', '15', 0),
('thanks_reput_image', 'ext/gfksx/thanksforposts/images/rating/reput_star_gold.gif', 0),
('thanks_reput_image_back', 'ext/gfksx/thanksforposts/images/rating/reput_star_back.gif', 0),
('thanks_reput_level', '10', 0),
('thanks_time_view', '1', 0),
('thanks_top_number', '0', 0),
('thanks_topic_reput_view', '1', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('update_hashes_last_cron', '1603785732', 0),
('update_hashes_lock', '0', 0),
('upload_dir_size', '8554', 1),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('use_system_cron', '0', 0),
('version', '3.3.1', 0),
('video_on_index_value', '7', 0),
('viglink_api_siteid', 'd41d8cd98f00b204e9800998ecf8427e', 0),
('viglink_ask_admin', '', 0),
('viglink_ask_admin_last', '1609842591', 0),
('viglink_convert_account_url', '', 0),
('viglink_enabled', '0', 0),
('viglink_last_gc', '1609838322', 1),
('vse_tip_dim', '200', 0),
('vse_tip_new', '1', 0),
('vse_tip_num', '3', 0),
('vse_tip_pst', '1', 0),
('vse_tip_srt', '1', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('warnings_last_gc', '1609911329', 1),
('youtubegallery_version', '1.0.3', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_config_text`
--

CREATE TABLE `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_config_text`
--

INSERT INTO `phpbb_config_text` (`config_name`, `config_value`) VALUES
('ass_admin_notes', '<r><EMOJI seq=\"2705\" tseq=\"2705\">:white_check_mark:</EMOJI> Install the <B><s>[b]</s><COLOR color=\"#313131\"><s>[color=#313131]</s>“Advanced Shop System”<e>[/color]</e></COLOR><e>[/b]</e></B>.<br/>\n<EMOJI seq=\"25b6\" tseq=\"25b6\">:arrow_forward:</EMOJI> Create your <B><s>[b]</s>first category<e>[/b]</e></B>.<br/>\n<EMOJI seq=\"25b6\" tseq=\"25b6\">:arrow_forward:</EMOJI> Create your <B><s>[b]</s>first item<e>[/b]</e></B>.<br/>\n<EMOJI seq=\"25b6\" tseq=\"25b6\">:arrow_forward:</EMOJI> <COLOR color=\"#313131\"><s>[color=#313131]</s>Purchase<e>[/color]</e></COLOR> your first item!<br/>\n<EMOJI seq=\"1f389\" tseq=\"1f389\">:tada:</EMOJI> <COLOR color=\"#313131\"><s>[color=#313131]</s>Celebrate having a shop!<e>[/color]</e></COLOR></r>'),
('ass_inactive_desc', '<t></t>'),
('contact_admin_info', ''),
('contact_admin_info_bitfield', ''),
('contact_admin_info_flags', '7'),
('contact_admin_info_uid', ''),
('mchat_rules', ''),
('mchat_static_message', ''),
('media_embed_sites', '[\"abcnews\",\"amazon\",\"anchor\",\"audioboom\",\"audiomack\",\"bandcamp\",\"bbcnews\",\"bitchute\",\"bleacherreport\",\"break\",\"brightcove\",\"cbsnews\",\"cnbc\",\"cnn\",\"cnnmoney\",\"comedycentral\",\"coub\",\"dailymotion\",\"democracynow\",\"dumpert\",\"eighttracks\",\"espn\",\"facebook\",\"flickr\",\"foxnews\",\"foxsports\",\"funnyordie\",\"gamespot\",\"gametrailers\",\"getty\",\"gfycat\",\"gifs\",\"giphy\",\"gist\",\"globalnews\",\"gofundme\",\"googledrive\",\"googleplus\",\"googlesheets\",\"hudl\",\"hulu\",\"ign\",\"imdb\",\"imgur\",\"indiegogo\",\"instagram\",\"internetarchive\",\"izlesene\",\"jwplatform\",\"khl\",\"kickstarter\",\"libsyn\",\"liveleak\",\"livestream\",\"mailru\",\"medium\",\"megaphone\",\"metacafe\",\"mixcloud\",\"mixer\",\"mlb\",\"mrctv\",\"msnbc\",\"natgeochannel\",\"natgeovideo\",\"nbcnews\",\"nbcsports\",\"nhl\",\"npr\",\"nytimes\",\"orfium\",\"pastebin\",\"pinterest\",\"podbean\",\"prezi\",\"reddit\",\"rutube\",\"scribd\",\"sendvid\",\"slideshare\",\"soundcloud\",\"sporcle\",\"sportsnet\",\"spotify\",\"spreaker\",\"steamstore\",\"stitcher\",\"strawpoll\",\"streamable\",\"streamja\",\"teamcoco\",\"ted\",\"telegram\",\"theatlantic\",\"theguardian\",\"theonion\",\"tiktok\",\"tmz\",\"traileraddict\",\"trendingviews\",\"tumblr\",\"twentyfoursevensports\",\"twitch\",\"twitter\",\"ustream\",\"vbox7\",\"veoh\",\"vevo\",\"videodetective\",\"vimeo\",\"vine\",\"vk\",\"vocaroo\",\"vox\",\"washingtonpost\",\"wistia\",\"wshh\",\"wsj\",\"xboxclips\",\"xboxdvr\",\"youku\",\"youtube\"]'),
('reparser_resume', 'a:5:{s:23:\"text_reparser.post_text\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:0;s:10:\"range-size\";i:100;}s:28:\"text_reparser.user_signature\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:0;s:10:\"range-size\";i:100;}s:24:\"text_reparser.poll_title\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:0;s:10:\"range-size\";i:100;}s:35:\"phpbb.pages.text_reparser.page_text\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:0;s:10:\"range-size\";i:100;}s:39:\"dmzx.mchat.text_reparser.mchat_messages\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:0;s:10:\"range-size\";i:100;}}'),
('style_settings_html_1', ''),
('style_settings_html_2', '&lt;div class=&quot;sidebar_widget ad_grid fancy_panel&quot;&gt;\n    &lt;div class=&quot;fancy_panel_padding&quot;&gt;\n        &lt;a href=&quot;https://cooltext.com&quot;&gt;&lt;img src=&quot;https://images.cooltext.com/5493601.gif&quot; width=&quot;250&quot; height=&quot;100&quot; alt=&quot;TI???N ??CH&quot; /&gt;&lt;/a&gt;\n        &lt;div class=&quot;sidebar_content&quot;&gt;\n&lt;a href=&quot;http://localhost:8080/phpBB3/memberlist.php?mode=viewprofile&amp;u=2&quot;&gt;&lt;img src=&quot;https://images.cooltext.com/5493599.png&quot; width=&quot;304&quot; height=&quot;34&quot; alt=&quot;SOCIAL NETWORK&quot; /&gt;&lt;/a&gt;\n&lt;a href=&quot;http://localhost:8080/phpBB3/memberlist.php?mode=viewprofile&amp;u=2&quot;&gt;&lt;img src=&quot;https://www.sappiencia.com/images/Inbound-Marketing-sappiencia.gif&quot; width=&quot;300px&quot; height=&quot;300px&quot; alt=&quot;&quot; /&gt;&lt;/a&gt;\n&lt;a href=&quot;http://localhost:8080/phpBB3/app.php/aps/shop&quot;&gt;&lt;img src=&quot;https://images.cooltext.com/5493600.png&quot; width=&quot;304&quot; height=&quot;34&quot; alt=&quot;SHOPPING&quot; /&gt;&lt;/a&gt;\n&lt;a href=&quot;http://localhost:8080/phpBB3/app.php/aps/shop&quot;&gt;&lt;img src=&quot;https://www.rli.uk.com/wp-content/uploads/2020/05/onlineSHOPPING.gif&quot; width=&quot;300px&quot; height=&quot;300px&quot; alt=&quot;&quot; /&gt;&lt;/a&gt;\n&lt;a href=&quot;https://doanbooksta.glitch.me/&quot;&gt;&lt;img src=&quot;https://images.cooltext.com/5493611.png&quot; width=&quot;309&quot; height=&quot;39&quot; alt=&quot;ROOM MEETING&quot; /&gt;&lt;/a&gt;\n&lt;a href=&quot;https://doanbooksta.glitch.me/&quot;&gt;&lt;img src=&quot;https://cdn.dribbble.com/users/37380/screenshots/10883216/zoom-party4_12fps.gif&quot; width=&quot;300px&quot; height=&quot;300px&quot; alt=&quot;&quot; /&gt;&lt;/a&gt;\n            \n&lt;a href=&quot;https://www.facebook.com/doanhoitvtth&quot;&gt;&lt;img src=&quot;https://static1.squarespace.com/static/5aa1a6cc5ffd2017e8cc379c/5aa1aa3724a6947560967ff9/5ad189a070a6ad118a586aa6/1524250030380/social-media-strategy.gif?format=1500w&quot;width=&quot;300px&quot; height=&quot;300px&quot; alt=&quot;&quot;/&gt;&lt;/a&gt;\n            &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;https://i.pinimg.com/originals/3d/36/c3/3d36c36a6bd147d3b65e4de86087f9f1.gif&quot; width=&quot;300px&quot; height=&quot;300px&quot; alt=&quot;&quot; /&gt;&lt;/a&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n\n&lt;/div&gt;'),
('style_settings_html_3', ''),
('style_settings_html_4', '&lt;a href=&quot;#&quot;&gt; &lt;span class = &quot;fa fa-twitter&quot;&gt; &lt;/span&gt; &lt;/a&gt; \n&lt;a href=&quot;#&quot;&gt; &lt;span class = &quot;fa fa-apple&quot;&gt; &lt;/span&gt; &lt;/a&gt; \n&lt;a href=&quot;#&quot;&gt; &lt;span class = &quot;fa fa-facebook&quot;&gt; &lt;/span&gt; &lt;/a&gt; \n&lt;a href=&quot;#&quot;&gt; &lt;span class = &quot;fa fa-codepen&quot;&gt; &lt;/span&gt; &lt;/a&gt; \n&lt;a href=&quot;#&quot;&gt; &lt;span class = &quot;fa fa-google&quot;&gt; &lt;/span&gt; &lt;/a&gt; \n&lt;a href=&quot;#&quot;&gt; &lt;span class = &quot;fa fa -digg &quot;&gt; &lt;/span&gt; &lt;/a&gt; \n&lt;a href=&quot;#&quot;&gt; &lt;span class =&quot; fa fa-pinterest-p &quot;&gt; &lt;/span&gt; &lt;/a&gt;');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_confirm`
--

CREATE TABLE `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT 0,
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_disallow`
--

CREATE TABLE `phpbb_disallow` (
  `disallow_id` mediumint(8) UNSIGNED NOT NULL,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_drafts`
--

CREATE TABLE `phpbb_drafts` (
  `draft_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `save_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_drafts`
--

INSERT INTO `phpbb_drafts` (`draft_id`, `user_id`, `topic_id`, `forum_id`, `save_time`, `draft_subject`, `draft_message`) VALUES
(1, 51, 0, 2, 1609836772, 'Review Sách Loài Plastic - Khi Nhựa Trỗi Dậy', '<r>Đồ nhựa dùng một lần luôn là sự lựa chọn của tất cả chúng ta bởi sự tiện lợi mà nó đem lại. Nhưng có một sự thật rằng chúng ta đang bị phụ thuộc vào “loài nhựa” một cách vô tội vạ điều này mang lại không ít rắc rối cho mẹ thiên nhiên và cuộc sống của chính chúng ta. Hãy cùng “Loài plastic – khi nhựa trỗi dậy” tìm hiểu xem chúng ta đã và đang vô tình hủy hoại Trái Đất như thế nào.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-1.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-1.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/l ... -day-1.jpg\">https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-1.jpg</LINK_TEXT></URL><e>[/img]</e></IMG><br/>\nLý do bạn nên chọn cuốn sách này<br/>\nCó rất nhiều cuốn sách nói về vấn đề sống xanh nhưng “Loài plastic – Khi nhựa trỗi dậy” sẽ là một trong những cuốn sách đáng đọc bởi sự phân tích rất kĩ và cụ thể về nhựa sẽ khiến bạn đọc phải giật mình bởi sự khủng khiếp và hậu quả khi chúng ta lạm dụng và sử dụng nhựa một cách vô tội vạ. Cuốn sách này cũng sẽ là một trong những lời cảnh tỉnh khiến bạn đọc phải thay đổi để tránh làm tổn hại đến mẹ thiên nhiên nữa.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-2.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-2.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/l ... -day-2.jpg\">https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-2.jpg</LINK_TEXT></URL><e>[/img]</e></IMG></r>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_ext`
--

CREATE TABLE `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ext_state` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_ext`
--

INSERT INTO `phpbb_ext` (`ext_name`, `ext_active`, `ext_state`) VALUES
('dmzx/mchat', 1, 'b:0;'),
('dmzx/youtubegallery', 1, 'b:0;'),
('gfksx/thanksforposts', 1, 'b:0;'),
('hubaishan/audioplayer', 1, 'b:0;'),
('javiexin/advancedpf', 1, 'b:0;'),
('kasimi/pollonindex', 1, 'b:0;'),
('kinerity/bestanswer', 1, 'b:0;'),
('pgreca/leagueofphpbb', 0, 'b:0;'),
('pgreca/pgsocial', 1, 'b:0;'),
('phpbb/mediaembed', 1, 'b:0;'),
('phpbb/pages', 1, 'b:0;'),
('phpbb/viglink', 1, 'b:0;'),
('phpbbstudio/aps', 1, 'b:0;'),
('phpbbstudio/ass', 1, 'b:0;'),
('planetstyles/flightdeck', 1, 'b:0;'),
('postimage/imageupload', 1, 'b:0;'),
('rmcgirr83/printallposts', 1, 'b:0;'),
('senky/massnotification', 1, 'b:0;'),
('vinny/shareon', 1, 'b:0;'),
('vse/pmbars', 1, 'b:0;'),
('vse/topicimagepreview', 1, 'b:0;');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_extensions`
--

CREATE TABLE `phpbb_extensions` (
  `extension_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'mp3'),
(51, 5, 'mpeg'),
(52, 5, 'mpg'),
(53, 5, 'ogg'),
(54, 5, 'ogm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_extension_groups`
--

CREATE TABLE `phpbb_extension_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT 0,
  `allow_group` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `download_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_forums`
--

CREATE TABLE `phpbb_forums` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL,
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) UNSIGNED NOT NULL DEFAULT 7,
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) UNSIGNED NOT NULL DEFAULT 7,
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `forum_type` tinyint(4) NOT NULL DEFAULT 0,
  `forum_status` tinyint(4) NOT NULL DEFAULT 0,
  `forum_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT 32,
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_indexing` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_icons` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `prune_next` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `prune_days` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `prune_viewed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `prune_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `display_subforum_list` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `display_subforum_limit` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `forum_options` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `forum_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_topics_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_topics_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_topics_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `enable_shadow_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `prune_shadow_days` mediumint(8) UNSIGNED NOT NULL DEFAULT 7,
  `prune_shadow_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `prune_shadow_next` int(11) NOT NULL DEFAULT 0,
  `enable_answer` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_forums`
--

INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`, `display_subforum_list`, `display_subforum_limit`, `forum_options`, `forum_posts_approved`, `forum_posts_unapproved`, `forum_posts_softdeleted`, `forum_topics_approved`, `forum_topics_unapproved`, `forum_topics_softdeleted`, `enable_shadow_prune`, `prune_shadow_days`, `prune_shadow_freq`, `prune_shadow_next`, `enable_answer`) VALUES
(1, 0, 3, 12, '', 'THƯ VIỆN - REVIEW SÁCH', '<t>Nơi các tác giả có thể tìm kiếm, đăng các bài review sách của mình, các thông tin về sách mà bạn muốn chia sẽ đến mọi người.</t>', '', 7, '', '', '$argon2i$v=19$m=65536,t=4,p=2$V3NRYVJsZThReHJJeUM5Lg$cTgbovFS2dmApuIdgrWN+s2qNQiutEj7pBzhlJ/t1Fw', 0, 'images/re.gif', '', '', '', 7, '', 0, 0, 0, 1, 2, '', 1603785223, 'admin', 'AA0000', 32, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(2, 1, 4, 5, 'a:1:{i:1;a:2:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";i:1;i:0;}}', 'THƯ VIỆN THÔNG TIN SÁCH', '<t>Nơi các tác giả có thể tìm kiếm, đăng các bài review sách của mình, các thông tin về sách mà bạn muốn chia sẽ đến mọi người.</t>', '', 7, '', '', '', 0, 'images/giphy.gif', '', '', '', 7, '', 0, 1, 0, 20, 2, 'Re: Review sách Tớ thích cậu hơn cả Harvard', 1609914764, 'admin', 'AA0000', 48, 1, 1, 1, 0, 0, 7, 7, 1, 1, 0, 0, 15, 1, 0, 14, 1, 0, 0, 7, 1, 0, 1),
(6, 1, 6, 7, 'a:1:{i:1;a:2:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";i:1;i:0;}}', 'THÔNG TIN THẢO LUẬN', '', '', 7, '', '', '', 2, '', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 1, 1, 1, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(7, 0, 1, 2, '', 'THÔNG TIN THẢO LUẬN', '<t>Nơi diễn ra các hoạt động , các vấn về của các thành viên.</t>', '', 7, '', '', '$argon2i$v=19$m=65536,t=4,p=2$Ulp4dDZzYnlIYVVyMjRNVA$r+MgRGNTtKJR+c2h2dZPvQanCHPYVE9Y6Jw4nADBR3Q', 0, 'images/contrac.gif', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 1, 1, 1, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0),
(8, 1, 8, 9, 'a:1:{i:1;a:2:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";i:1;i:0;}}', 'CÁC SỰ KIỆN', '<t>Nơi cập nhật thông tin các cuộc thi do ADMIN tổ chức</t>', '', 7, '', '', '', 0, 'images/event.gif', '', '', '', 7, '', 10, 1, 0, 8, 2, '[Thông báo] Tính năng Rank', 1609762431, 'admin', 'AA0000', 48, 1, 1, 1, 0, 0, 7, 7, 1, 1, 0, 0, 3, 0, 0, 3, 0, 0, 0, 7, 1, 0, 1),
(9, 1, 10, 11, 'a:1:{i:1;a:2:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";i:1;i:0;}}', 'SÁNG TÁC', '<t>Nơi các nhà văn trẻ có thể đăng các tác phẩm của mình.</t>', '', 7, '', '', '$argon2i$v=19$m=65536,t=4,p=2$NGVScGNYZVZYeC9peUwxcw$kGHHgmPd0ERHbEWchOr/vGLWbEVzjJoc5GV7CngqQoM', 0, 'images/write.gif', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 1, 1, 1, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_forums_access`
--

CREATE TABLE `phpbb_forums_access` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_forums_access`
--

INSERT INTO `phpbb_forums_access` (`forum_id`, `user_id`, `session_id`) VALUES
(8, 2, 'ee455dcd368d76bb342266aaf47f26ca'),
(9, 2, 'ee455dcd368d76bb342266aaf47f26ca');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_forums_track`
--

CREATE TABLE `phpbb_forums_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_forums_track`
--

INSERT INTO `phpbb_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
(2, 2, 1609837207),
(2, 8, 1609762515);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_forums_watch`
--

CREATE TABLE `phpbb_forums_watch` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_forums_watch`
--

INSERT INTO `phpbb_forums_watch` (`forum_id`, `user_id`, `notify_status`) VALUES
(2, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_groups`
--

CREATE TABLE `phpbb_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_type` tinyint(4) NOT NULL DEFAULT 1,
  `group_founder_manage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group_skip_auth` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) UNSIGNED NOT NULL DEFAULT 7,
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `group_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `group_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_receive_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group_message_limit` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_legend` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_max_recipients` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_groups`
--

INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_legend`, `group_max_recipients`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_icons`
--

CREATE TABLE `phpbb_icons` (
  `icons_id` mediumint(8) UNSIGNED NOT NULL,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT 0,
  `icons_height` tinyint(4) NOT NULL DEFAULT 0,
  `icons_alt` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_icons`
--

INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_alt`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, '', 1, 1),
(2, 'smile/redface.gif', 16, 16, '', 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, '', 10, 1),
(4, 'misc/heart.gif', 16, 16, '', 4, 1),
(5, 'misc/star.gif', 16, 16, '', 2, 1),
(6, 'misc/radioactive.gif', 16, 16, '', 3, 1),
(7, 'misc/thinking.gif', 16, 16, '', 5, 1),
(8, 'smile/info.gif', 16, 16, '', 8, 1),
(9, 'smile/question.gif', 16, 16, '', 6, 1),
(10, 'smile/alert.gif', 16, 16, '', 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_lang`
--

CREATE TABLE `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_lang`
--

INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited'),
(2, 'vi', 'vi', 'Vietnamese', 'Tiếng Việt', 'zelonght (www.ytuongsangtaovn.com)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_log`
--

CREATE TABLE `phpbb_log` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_type` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reportee_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_log`
--

INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `post_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 0, 1, 0, 0, 0, 0, '::1', 1603785228, 'LOG_MODULE_ADD', 'a:1:{i:0;s:20:\"ACP_VIGLINK_SETTINGS\";}'),
(2, 0, 1, 0, 0, 0, 0, '', 1603785228, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:13:\"phpbb/viglink\";}'),
(3, 2, 1, 0, 0, 0, 0, '::1', 1603785229, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:323:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/install/app.php/install</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}'),
(4, 0, 2, 0, 0, 0, 0, '::1', 1603785229, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:\"3.3.1\";}'),
(5, 0, 2, 0, 0, 0, 0, '::1', 1603785381, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:\"ACP_PAGES\";}'),
(6, 0, 2, 0, 0, 0, 0, '::1', 1603785381, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:\"ACP_PAGES_MANAGE\";}'),
(7, 0, 2, 0, 0, 0, 0, '::1', 1603785381, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:11:\"phpbb/pages\";}'),
(8, 0, 2, 0, 0, 0, 0, '::1', 1603785436, 'ACP_PAGES_ADDED_LOG', 'a:1:{i:0;s:9:\"NỘI QUY\";}'),
(9, 0, 2, 0, 0, 0, 0, '::1', 1603785716, 'LOG_STYLE_ADD', 'a:1:{i:0;s:7:\"Milk v2\";}'),
(10, 0, 2, 0, 0, 0, 0, '::1', 1603785754, 'LOG_MODULE_ADD', 'a:1:{i:0;s:24:\"ACP_STYLE_SETTINGS_TITLE\";}'),
(11, 0, 2, 0, 0, 0, 0, '::1', 1603785754, 'LOG_MODULE_ADD', 'a:1:{i:0;s:27:\"ACP_STYLE_SETTINGS_SETTINGS\";}'),
(12, 0, 2, 0, 0, 0, 0, '::1', 1603785754, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:23:\"planetstyles/flightdeck\";}'),
(13, 0, 2, 0, 0, 0, 0, '::1', 1603787383, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:\"ACP_CAT_MCHAT\";}'),
(14, 0, 2, 0, 0, 0, 0, '::1', 1603787383, 'LOG_MODULE_ADD', 'a:1:{i:0;s:24:\"ACP_MCHAT_GLOBALSETTINGS\";}'),
(15, 0, 2, 0, 0, 0, 0, '::1', 1603787383, 'LOG_MODULE_ADD', 'a:1:{i:0;s:28:\"ACP_MCHAT_GLOBALUSERSETTINGS\";}'),
(16, 0, 2, 0, 0, 0, 0, '::1', 1603787383, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:\"UCP_MCHAT_CONFIG\";}'),
(17, 0, 2, 0, 0, 0, 0, '::1', 1603787383, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:\"UCP_MCHAT_CONFIG\";}'),
(18, 0, 2, 0, 0, 0, 0, '::1', 1603787384, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:10:\"dmzx/mchat\";}'),
(19, 0, 2, 0, 0, 0, 0, '::1', 1603789559, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:9:\"NỘI QUY\";}'),
(20, 0, 2, 0, 0, 0, 0, '::1', 1603790797, 'LOG_CONFIG_SETTINGS', ''),
(21, 0, 2, 0, 0, 0, 0, '::1', 1603791473, 'LOG_MODULE_ADD', 'a:1:{i:0;s:6:\"SO_ACP\";}'),
(22, 0, 2, 0, 0, 0, 0, '::1', 1603791473, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:\"SO_CONFIG\";}'),
(23, 0, 2, 0, 0, 0, 0, '::1', 1603791473, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:13:\"vinny/shareon\";}'),
(24, 0, 2, 0, 0, 0, 0, '::1', 1603792263, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(25, 0, 2, 0, 0, 0, 0, '::1', 1603792335, 'ACP_PAGES_ADDED_LOG', 'a:1:{i:0;s:16:\"DANH MỤC SÁCH\";}'),
(26, 0, 2, 0, 0, 0, 0, '::1', 1603792397, 'ACP_PAGES_DELETED_LOG', 'a:1:{i:0;s:16:\"DANH MỤC SÁCH\";}'),
(27, 0, 2, 0, 0, 0, 0, '::1', 1603792629, 'ACP_PAGES_ADDED_LOG', 'a:1:{i:0;s:12:\"VIDEO REVIEW\";}'),
(28, 0, 2, 0, 0, 0, 0, '::1', 1603792661, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:12:\"VIDEO REVIEW\";}'),
(29, 0, 2, 0, 0, 0, 0, '::1', 1603792686, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:12:\"VIDEO REVIEW\";}'),
(30, 0, 2, 0, 0, 0, 0, '::1', 1603792778, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:12:\"VIDEO REVIEW\";}'),
(31, 0, 2, 0, 0, 0, 0, '::1', 1603792852, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:12:\"VIDEO REVIEW\";}'),
(32, 0, 2, 0, 0, 0, 0, '::1', 1603792999, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:12:\"VIDEO REVIEW\";}'),
(33, 0, 2, 0, 0, 0, 0, '::1', 1603793043, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:12:\"VIDEO REVIEW\";}'),
(34, 0, 2, 0, 0, 0, 0, '::1', 1603859281, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(35, 0, 2, 0, 0, 0, 0, '::1', 1603859587, 'LOG_MODULE_ADD', 'a:1:{i:0;s:21:\"ACP_PHPBB_MEDIA_EMBED\";}'),
(36, 0, 2, 0, 0, 0, 0, '::1', 1603859587, 'LOG_MODULE_ADD', 'a:1:{i:0;s:30:\"ACP_PHPBB_MEDIA_EMBED_SETTINGS\";}'),
(37, 0, 2, 0, 0, 0, 0, '::1', 1603859587, 'LOG_MODULE_ADD', 'a:1:{i:0;s:28:\"ACP_PHPBB_MEDIA_EMBED_MANAGE\";}'),
(38, 0, 2, 0, 0, 0, 0, '::1', 1603859587, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:16:\"phpbb/mediaembed\";}'),
(39, 0, 2, 0, 0, 0, 0, '::1', 1603859594, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:10:\"vse/pmbars\";}'),
(40, 0, 2, 0, 0, 0, 0, '::1', 1603859602, 'LOG_MODULE_ADD', 'a:1:{i:0;s:10:\"ACP_THANKS\";}'),
(41, 0, 2, 0, 0, 0, 0, '::1', 1603859602, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:\"ACP_THANKS_SETTINGS\";}'),
(42, 0, 2, 0, 0, 0, 0, '::1', 1603859602, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"ACP_THANKS_REFRESH\";}'),
(43, 0, 2, 0, 0, 0, 0, '::1', 1603859602, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:\"ACP_THANKS_TRUNCATE\";}'),
(44, 0, 2, 0, 0, 0, 0, '::1', 1603859602, 'LOG_MODULE_ADD', 'a:1:{i:0;s:25:\"ACP_THANKS_REPUT_SETTINGS\";}'),
(45, 0, 2, 0, 0, 0, 0, '::1', 1603859602, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:20:\"gfksx/thanksforposts\";}'),
(46, 0, 2, 0, 0, 0, 0, '::1', 1603859720, 'LOG_CONFIG_THANKS', ''),
(47, 0, 2, 0, 0, 0, 0, '::1', 1603859948, 'LOG_MODULE_ADD', 'a:1:{i:0;s:32:\"ACP_SENKY_MASSNOTIFICATION_TITLE\";}'),
(48, 0, 2, 0, 0, 0, 0, '::1', 1603859948, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:22:\"senky/massnotification\";}'),
(49, 0, 2, 0, 0, 0, 0, '::1', 1603860015, 'LOG_DELETED_MCHAT', 'a:1:{i:0;s:5:\"admin\";}'),
(50, 0, 2, 0, 0, 0, 0, '::1', 1603860019, 'LOG_DELETED_MCHAT', 'a:1:{i:0;s:5:\"admin\";}'),
(51, 0, 2, 0, 0, 0, 0, '::1', 1603860577, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:9:\"NỘI QUY\";}'),
(52, 0, 2, 0, 0, 0, 0, '::1', 1603860774, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:\"ACP_VIDEO\";}'),
(53, 0, 2, 0, 0, 0, 0, '::1', 1603860774, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"ACP_VIDEO_SETTINGS\";}'),
(54, 0, 2, 0, 0, 0, 0, '::1', 1603860774, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"ACP_VIDEO_CATEGORY\";}'),
(55, 0, 2, 0, 0, 0, 0, '::1', 1603860774, 'LOG_MODULE_ADD', 'a:1:{i:0;s:15:\"ACP_VIDEO_TITLE\";}'),
(56, 0, 2, 0, 0, 0, 0, '::1', 1603860774, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:19:\"dmzx/youtubegallery\";}'),
(57, 0, 2, 0, 0, 0, 0, '::1', 1603862157, 'LOG_VIDEO_SETTINGS', ''),
(58, 0, 2, 0, 0, 0, 0, '::1', 1603862177, 'LOG_VIDEO_CATEGORY_ADD', ''),
(59, 0, 2, 0, 0, 0, 0, '::1', 1603862183, 'LOG_VIDEO_CATEGORY_UPDATE', ''),
(60, 0, 2, 0, 0, 0, 0, '::1', 1603862196, 'LOG_VIDEO_CATEGORY_UPDATE', ''),
(61, 0, 2, 0, 0, 0, 0, '::1', 1603863034, 'ACP_PAGES_ADDED_LOG', 'a:1:{i:0;s:7:\"AI BOOK\";}'),
(62, 0, 2, 0, 0, 0, 0, '::1', 1603863475, 'ACP_PAGES_DELETED_LOG', 'a:1:{i:0;s:12:\"VIDEO REVIEW\";}'),
(63, 0, 2, 0, 0, 0, 0, '::1', 1603868637, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(64, 0, 2, 0, 0, 0, 0, '::1', 1603869078, 'LOG_VIDEO_CATEGORY_ADD', ''),
(65, 0, 2, 0, 0, 0, 0, '::1', 1603869228, 'LOG_VIDEO_CATEGORY_DELETED', ''),
(66, 0, 2, 0, 0, 0, 0, '::1', 1603869322, 'LOG_VIDEO_SETTINGS', ''),
(67, 0, 2, 0, 0, 0, 0, '::1', 1603869339, 'LOG_VIDEO_SETTINGS', ''),
(68, 0, 2, 0, 0, 0, 0, '::1', 1603869354, 'LOG_VIDEO_SETTINGS', ''),
(69, 2, 49, 0, 0, 0, 0, '::1', 1603870013, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:307:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/ucp.php</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}'),
(70, 0, 2, 0, 0, 0, 0, '::1', 1603870182, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(71, 0, 2, 0, 0, 0, 0, '::1', 1603870292, 'ACP_PAGES_ADDED_LOG', 'a:1:{i:0;s:10:\"Nanh Trang\";}'),
(72, 0, 2, 0, 0, 0, 0, '::1', 1603870475, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:10:\"Nanh Trang\";}'),
(73, 0, 2, 0, 0, 0, 0, '::1', 1603870540, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:10:\"Nanh Trang\";}'),
(74, 0, 2, 0, 0, 0, 0, '::1', 1603870587, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:10:\"Nanh Trang\";}'),
(75, 0, 2, 0, 0, 0, 0, '::1', 1603870697, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:10:\"Nanh Trang\";}'),
(76, 0, 2, 0, 0, 0, 0, '::1', 1603870729, 'ACP_PAGES_DELETED_LOG', 'a:1:{i:0;s:10:\"Nanh Trang\";}'),
(77, 0, 2, 0, 0, 0, 0, '::1', 1603870732, 'ACP_PAGES_DELETED_LOG', 'a:1:{i:0;s:7:\"AI BOOK\";}'),
(78, 0, 2, 0, 0, 0, 0, '::1', 1603871126, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:19:\"kinerity/bestanswer\";}'),
(79, 0, 2, 0, 0, 0, 0, '::1', 1603871133, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:21:\"postimage/imageupload\";}'),
(80, 0, 2, 0, 0, 0, 0, '::1', 1603871139, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:18:\"kasimi/pollonindex\";}'),
(81, 0, 2, 0, 0, 0, 0, '::1', 1603871146, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:23:\"rmcgirr83/printallposts\";}'),
(82, 0, 2, 0, 0, 0, 0, '::1', 1603871152, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:21:\"vse/topicimagepreview\";}'),
(83, 0, 2, 0, 0, 0, 0, '::1', 1603871504, 'LOG_FORUM_ADD', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(84, 0, 2, 0, 0, 0, 0, '::1', 1603871545, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(85, 0, 2, 0, 0, 0, 0, '::1', 1603871549, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:11:\"REVIEW BOOK\";i:1;s:19:\"Your first category\";}'),
(86, 0, 2, 0, 0, 0, 0, '::1', 1603871560, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:19:\"Your first category\";i:1;s:11:\"REVIEW BOOK\";}'),
(87, 0, 2, 0, 0, 0, 0, '::1', 1603871561, 'LOG_FORUM_MOVE_DOWN', 'a:2:{i:0;s:19:\"Your first category\";i:1;s:11:\"REVIEW BOOK\";}'),
(88, 0, 2, 0, 0, 0, 0, '::1', 1603871563, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:19:\"Your first category\";i:1;s:11:\"REVIEW BOOK\";}'),
(89, 0, 2, 0, 0, 0, 0, '::1', 1603871636, 'LOG_FORUM_ADD', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(90, 0, 2, 0, 0, 0, 0, '::1', 1603871636, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:19:\"Your first category\";i:1;s:11:\"REVIEW BOOK\";}'),
(91, 0, 2, 0, 0, 0, 0, '::1', 1603871658, 'LOG_FORUM_ADD', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(92, 0, 2, 0, 0, 0, 0, '::1', 1603871658, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:19:\"Your first category\";i:1;s:11:\"REVIEW BOOK\";}'),
(93, 0, 2, 0, 0, 0, 0, '::1', 1603871672, 'LOG_FORUM_DEL_FORUM', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(94, 0, 2, 0, 0, 0, 0, '::1', 1603871676, 'LOG_FORUM_DEL_FORUM', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(95, 0, 2, 0, 0, 0, 0, '::1', 1603871696, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(96, 0, 2, 0, 0, 0, 0, '::1', 1603871696, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:19:\"Your first category\";i:1;s:11:\"REVIEW BOOK\";}'),
(97, 0, 2, 0, 0, 0, 0, '::1', 1603871739, 'LOG_FORUM_ADD', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(98, 0, 2, 0, 0, 0, 0, '::1', 1603871842, 'LOG_CONFIG_ATTACH', ''),
(99, 0, 2, 0, 0, 0, 0, '::1', 1603871875, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(100, 0, 2, 0, 0, 0, 0, '::1', 1603905151, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(101, 0, 2, 0, 0, 0, 0, '::1', 1603942764, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(102, 0, 2, 0, 0, 0, 0, '::1', 1603943891, 'LOG_CONFIG_SETTINGS', ''),
(103, 0, 2, 0, 0, 0, 0, '::1', 1603944286, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:21:\"hubaishan/audioplayer\";}'),
(104, 0, 2, 0, 0, 0, 0, '::1', 1603944403, 'LOG_CONFIG_SETTINGS', ''),
(105, 0, 2, 0, 0, 0, 0, '::1', 1603944448, 'LOG_CONFIG_SETTINGS', ''),
(106, 0, 2, 0, 0, 0, 0, '::1', 1603944510, 'LOG_CONFIG_SETTINGS', ''),
(107, 0, 2, 0, 0, 0, 0, '::1', 1603956090, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(108, 0, 2, 0, 0, 0, 0, '::1', 1603956147, 'ACP_PAGES_ADDED_LOG', 'a:1:{i:0;s:14:\"CREATE MEETING\";}'),
(109, 0, 2, 0, 0, 0, 0, '::1', 1603956382, 'ACP_PAGES_EDITED_LOG', 'a:1:{i:0;s:14:\"CREATE MEETING\";}'),
(110, 2, 50, 0, 0, 0, 0, '::1', 1603958204, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:307:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/ucp.php</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}'),
(111, 0, 2, 0, 0, 0, 0, '::1', 1603971103, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(112, 0, 2, 0, 0, 0, 0, '::1', 1604062240, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(113, 0, 2, 0, 0, 0, 0, '::1', 1604062788, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:20:\"pgreca/leagueofphpbb\";}'),
(114, 0, 2, 0, 0, 0, 0, '::1', 1604064526, 'LOG_RANK_ADDED', 'a:1:{i:0;s:6:\"Brozne\";}'),
(115, 0, 2, 0, 0, 0, 0, '::1', 1604064826, 'LOG_RANK_UPDATED', 'a:1:{i:0;s:6:\"Brozne\";}'),
(116, 0, 2, 0, 0, 0, 0, '::1', 1604064862, 'LOG_EXT_DISABLE', 'a:1:{i:0;s:20:\"pgreca/leagueofphpbb\";}'),
(117, 0, 2, 0, 0, 0, 0, '::1', 1604064974, 'LOG_RANK_UPDATED', 'a:1:{i:0;s:10:\"Site Admin\";}'),
(118, 0, 2, 0, 0, 0, 0, '::1', 1604065028, 'LOG_RANK_UPDATED', 'a:1:{i:0;s:9:\"Rank Dong\";}'),
(119, 0, 2, 0, 0, 0, 0, '::1', 1604065307, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(120, 0, 2, 0, 0, 0, 0, '::1', 1604213862, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(121, 0, 2, 0, 0, 0, 0, '::1', 1607852160, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(122, 0, 2, 0, 0, 0, 0, '::1', 1607853405, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:\"ACP_PG_SOCIAL_TITLE\";}'),
(123, 0, 2, 0, 0, 0, 0, '::1', 1607853405, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"ACP_PG_SOCIAL_MAIN\";}'),
(124, 0, 2, 0, 0, 0, 0, '::1', 1607853406, 'LOG_MODULE_ADD', 'a:1:{i:0;s:21:\"ACP_PG_SOCIAL_GENERAL\";}'),
(125, 0, 2, 0, 0, 0, 0, '::1', 1607853406, 'LOG_MODULE_ADD', 'a:1:{i:0;s:22:\"ACP_PG_SOCIAL_SETTINGS\";}'),
(126, 0, 2, 0, 0, 0, 0, '::1', 1607853407, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"ACP_PG_SOCIAL_CHAT\";}'),
(127, 0, 2, 0, 0, 0, 0, '::1', 1607853407, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"ACP_PG_SOCIAL_PAGE\";}'),
(128, 0, 2, 0, 0, 0, 0, '::1', 1607853408, 'LOG_MODULE_ADD', 'a:1:{i:0;s:25:\"ACP_PG_SOCIAL_PAGE_MANAGE\";}'),
(129, 0, 2, 0, 0, 0, 0, '::1', 1607853409, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:\"MCP_PG_SOCIAL_TITLE\";}'),
(130, 0, 2, 0, 0, 0, 0, '::1', 1607853409, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"MCP_PG_SOCIAL_MAIN\";}'),
(131, 0, 2, 0, 0, 0, 0, '::1', 1607853409, 'LOG_MODULE_ADD', 'a:1:{i:0;s:25:\"MCP_PG_SOCIAL_PAGE_MANAGE\";}'),
(132, 0, 2, 0, 0, 0, 0, '::1', 1607853410, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"UCP_PG_SOCIAL_MAIN\";}'),
(133, 0, 2, 0, 0, 0, 0, '::1', 1607853410, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"UCP_PG_SOCIAL_CHAT\";}'),
(134, 0, 2, 0, 0, 0, 0, '::1', 1607853416, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:15:\"pgreca/pgsocial\";}'),
(135, 0, 2, 0, 0, 0, 0, '::1', 1607853427, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:15:\"pgreca/pgsocial\";}'),
(136, 3, 2, 0, 0, 0, 0, '::1', 1607853770, 'PG_SOCIAL_STATUS_NEW_LOG', ''),
(137, 3, 2, 0, 0, 0, 0, '::1', 1607853787, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(138, 3, 2, 0, 0, 0, 0, '::1', 1607855954, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(139, 3, 2, 0, 0, 0, 0, '::1', 1607855959, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(140, 3, 2, 0, 0, 0, 0, '::1', 1607855960, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(141, 3, 2, 0, 0, 0, 0, '::1', 1607855960, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(142, 3, 2, 0, 0, 0, 0, '::1', 1607855960, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(143, 3, 2, 0, 0, 0, 0, '::1', 1607856145, 'PG_SOCIAL_COMMENT_REMOVE_LOG', ''),
(144, 3, 2, 0, 0, 0, 0, '::1', 1607856150, 'PG_SOCIAL_COMMENT_REMOVE_LOG', ''),
(145, 3, 2, 0, 0, 0, 0, '::1', 1607856152, 'PG_SOCIAL_COMMENT_REMOVE_LOG', ''),
(146, 3, 2, 0, 0, 0, 0, '::1', 1607856155, 'PG_SOCIAL_COMMENT_REMOVE_LOG', ''),
(147, 3, 2, 0, 0, 0, 0, '::1', 1607856156, 'PG_SOCIAL_COMMENT_REMOVE_LOG', ''),
(148, 0, 2, 0, 0, 0, 0, '::1', 1608265410, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(149, 0, 2, 0, 0, 0, 0, '::1', 1608444088, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(150, 0, 2, 0, 0, 0, 0, '::1', 1608445092, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:19:\"javiexin/advancedpf\";}'),
(151, 0, 2, 0, 0, 0, 0, '::1', 1608445925, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:20:\"bb3mobi/AvatarUpload\";}'),
(152, 0, 2, 0, 0, 0, 0, '::1', 1608445981, 'LOG_EXT_DISABLE', 'a:1:{i:0;s:20:\"bb3mobi/AvatarUpload\";}'),
(153, 0, 2, 0, 0, 0, 0, '::1', 1608461759, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(154, 0, 2, 0, 0, 0, 0, '::1', 1608534978, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(155, 0, 2, 0, 0, 0, 0, '::1', 1608535052, 'LOG_CONFIG_AVATAR', ''),
(156, 0, 2, 0, 0, 0, 0, '::1', 1608537756, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(157, 0, 2, 0, 0, 0, 0, '::1', 1608564026, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(158, 0, 2, 0, 0, 0, 0, '::1', 1608567821, 'LOG_EXT_DISABLE', 'a:1:{i:0;s:19:\"javiexin/advancedpf\";}'),
(159, 0, 2, 0, 0, 0, 0, '::1', 1608567872, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:19:\"javiexin/advancedpf\";}'),
(160, 0, 2, 0, 0, 0, 0, '::1', 1608567891, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:20:\"bb3mobi/AvatarUpload\";}'),
(161, 0, 2, 0, 0, 0, 0, '::1', 1608567926, 'LOG_EXT_DISABLE', 'a:1:{i:0;s:20:\"bb3mobi/AvatarUpload\";}'),
(162, 0, 2, 0, 0, 0, 0, '::1', 1608567946, 'LOG_EXT_PURGE', 'a:1:{i:0;s:20:\"bb3mobi/AvatarUpload\";}'),
(163, 0, 2, 0, 0, 0, 0, '::1', 1608568302, 'LOG_LANGUAGE_PACK_INSTALLED', 'a:1:{i:0;s:10:\"Vietnamese\";}'),
(164, 0, 2, 0, 0, 0, 0, '::1', 1608568330, 'LOG_LANGUAGE_PACK_UPDATED', 'a:1:{i:0;s:10:\"Vietnamese\";}'),
(165, 0, 2, 0, 0, 0, 0, '::1', 1608568581, 'LOG_CONFIG_SETTINGS', ''),
(166, 0, 2, 0, 0, 0, 0, '::1', 1608568620, 'LOG_CONFIG_SETTINGS', ''),
(167, 0, 2, 0, 0, 0, 0, '::1', 1608569083, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(168, 0, 2, 0, 0, 0, 0, '::1', 1608569204, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";}'),
(169, 0, 2, 0, 0, 0, 0, '::1', 1608569578, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:16:\"Your first forum\";}'),
(170, 0, 2, 0, 0, 0, 0, '::1', 1608569592, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(171, 0, 2, 0, 0, 0, 0, '::1', 1608569592, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(172, 0, 2, 0, 0, 0, 0, '::1', 1608569648, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(173, 0, 2, 0, 0, 0, 0, '::1', 1608569723, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(174, 0, 2, 0, 0, 0, 0, '::1', 1608569754, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:24:\"THÔNG TIN THẢO LUẬN\";i:1;s:11:\"REVIEW BOOK\";}'),
(175, 0, 2, 0, 0, 0, 0, '::1', 1608569848, 'LOG_FORUM_ADD', 'a:1:{i:0;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(176, 0, 2, 0, 0, 0, 0, '::1', 1608616101, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(177, 0, 2, 0, 0, 0, 0, '::1', 1608616261, 'LOG_CONFIG_AVATAR', ''),
(178, 0, 2, 0, 0, 0, 0, '::1', 1608616355, 'LOG_CONFIG_AVATAR', ''),
(179, 0, 2, 0, 0, 0, 0, '::1', 1608616386, 'LOG_CONFIG_AVATAR', ''),
(180, 0, 2, 0, 0, 0, 0, '::1', 1608616490, 'LOG_CONFIG_AVATAR', ''),
(181, 0, 2, 0, 0, 0, 0, '::1', 1608617038, 'LOG_CONFIG_AVATAR', ''),
(182, 0, 2, 0, 0, 0, 0, '::1', 1608617667, 'LOG_EXT_DISABLE', 'a:1:{i:0;s:15:\"pgreca/pgsocial\";}'),
(183, 0, 2, 0, 0, 0, 0, '::1', 1608617732, 'LOG_EXT_PURGE', 'a:1:{i:0;s:15:\"pgreca/pgsocial\";}'),
(184, 0, 2, 0, 0, 0, 0, '::1', 1608617804, 'LOG_CONFIG_AVATAR', ''),
(185, 0, 2, 0, 0, 0, 0, '::1', 1608617852, 'LOG_CONFIG_AVATAR', ''),
(186, 0, 2, 0, 0, 0, 0, '::1', 1608618005, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:\"ACP_PG_SOCIAL_TITLE\";}'),
(187, 0, 2, 0, 0, 0, 0, '::1', 1608618006, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"ACP_PG_SOCIAL_MAIN\";}'),
(188, 0, 2, 0, 0, 0, 0, '::1', 1608618008, 'LOG_MODULE_ADD', 'a:1:{i:0;s:21:\"ACP_PG_SOCIAL_GENERAL\";}'),
(189, 0, 2, 0, 0, 0, 0, '::1', 1608618008, 'LOG_MODULE_ADD', 'a:1:{i:0;s:22:\"ACP_PG_SOCIAL_SETTINGS\";}'),
(190, 0, 2, 0, 0, 0, 0, '::1', 1608618010, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"ACP_PG_SOCIAL_CHAT\";}'),
(191, 0, 2, 0, 0, 0, 0, '::1', 1608618010, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"ACP_PG_SOCIAL_PAGE\";}'),
(192, 0, 2, 0, 0, 0, 0, '::1', 1608618011, 'LOG_MODULE_ADD', 'a:1:{i:0;s:25:\"ACP_PG_SOCIAL_PAGE_MANAGE\";}'),
(193, 0, 2, 0, 0, 0, 0, '::1', 1608618012, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:\"MCP_PG_SOCIAL_TITLE\";}'),
(194, 0, 2, 0, 0, 0, 0, '::1', 1608618012, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"MCP_PG_SOCIAL_MAIN\";}'),
(195, 0, 2, 0, 0, 0, 0, '::1', 1608618012, 'LOG_MODULE_ADD', 'a:1:{i:0;s:25:\"MCP_PG_SOCIAL_PAGE_MANAGE\";}'),
(196, 0, 2, 0, 0, 0, 0, '::1', 1608618013, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"UCP_PG_SOCIAL_MAIN\";}'),
(197, 0, 2, 0, 0, 0, 0, '::1', 1608618013, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:\"UCP_PG_SOCIAL_CHAT\";}'),
(198, 0, 2, 0, 0, 0, 0, '::1', 1608618020, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:15:\"pgreca/pgsocial\";}'),
(199, 2, 51, 0, 0, 0, 0, '::1', 1608620316, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:307:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/ucp.php</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}'),
(200, 0, 2, 0, 0, 0, 0, '::1', 1608620732, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(201, 0, 2, 0, 0, 0, 0, '::1', 1608699956, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(202, 0, 2, 0, 0, 0, 0, '::1', 1608703471, 'LOG_RANK_REMOVED', 'a:1:{i:0;s:6:\"Brozne\";}'),
(203, 0, 2, 0, 0, 0, 0, '::1', 1608703477, 'LOG_RANK_REMOVED', 'a:1:{i:0;s:9:\"Rank Dong\";}'),
(204, 0, 2, 0, 0, 0, 0, '::1', 1608703561, 'LOG_RANK_ADDED', 'a:1:{i:0;s:12:\"LIKE ĐỒNG\";}'),
(205, 0, 2, 0, 0, 0, 0, '::1', 1608703579, 'LOG_RANK_ADDED', 'a:1:{i:0;s:10:\"LIKE BẠC\";}'),
(206, 0, 2, 0, 0, 0, 0, '::1', 1608703595, 'LOG_RANK_ADDED', 'a:1:{i:0;s:10:\"LIKE VÀNG\";}'),
(207, 0, 2, 0, 0, 0, 0, '::1', 1608703618, 'LOG_RANK_ADDED', 'a:1:{i:0;s:15:\"LIKE BẠCH KIM\";}'),
(208, 0, 2, 0, 0, 0, 0, '::1', 1608703638, 'LOG_RANK_ADDED', 'a:1:{i:0;s:16:\"LIKE KIM CƯƠNG\";}'),
(209, 0, 2, 0, 0, 0, 0, '::1', 1608703638, 'LOG_RANK_ADDED', 'a:1:{i:0;s:16:\"LIKE KIM CƯƠNG\";}'),
(210, 0, 2, 0, 0, 0, 0, '::1', 1608703658, 'LOG_RANK_ADDED', 'a:1:{i:0;s:14:\"LIKE CAO THỦ\";}'),
(211, 0, 2, 0, 0, 0, 0, '::1', 1608703681, 'LOG_RANK_ADDED', 'a:1:{i:0;s:21:\"LIKE ĐẠI CAO THỦ\";}'),
(212, 0, 2, 0, 0, 0, 0, '::1', 1608704073, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:24:\"THÔNG TIN THẢO LUẬN\";i:1;s:26:\"THƯ VIỆN - REVIEW SÁCH\";}'),
(213, 0, 2, 0, 0, 0, 0, '::1', 1608704096, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(214, 0, 2, 0, 0, 0, 0, '::1', 1608704096, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";i:1;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(215, 3, 2, 0, 0, 0, 0, '::1', 1608718640, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(216, 0, 2, 0, 0, 0, 0, '::1', 1608719851, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(217, 0, 2, 0, 0, 0, 0, '::1', 1608722652, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(218, 0, 2, 0, 0, 0, 0, '::1', 1608722689, 'LOG_PURGE_CACHE', ''),
(219, 3, 2, 0, 0, 0, 0, '::1', 1608736989, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(220, 3, 2, 0, 0, 0, 0, '::1', 1608737546, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(221, 0, 2, 0, 0, 0, 0, '::1', 1608737786, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(222, 0, 2, 0, 0, 0, 0, '::1', 1608739105, 'LOG_ACL_ADD_USER_GLOBAL_U_', 'a:1:{i:0;s:5:\"giaan\";}'),
(223, 3, 51, 0, 0, 0, 0, '::1', 1608739502, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(224, 3, 51, 0, 0, 0, 0, '::1', 1608739534, 'PG_SOCIAL_STATUS_NEW_LOG', ''),
(225, 3, 51, 0, 0, 0, 0, '::1', 1608739543, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(226, 3, 51, 0, 0, 0, 0, '::1', 1608739549, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(227, 3, 51, 0, 0, 0, 0, '::1', 1608739742, 'PG_SOCIAL_STATUS_REMOVE_LOG', ''),
(228, 0, 2, 0, 0, 0, 0, '::1', 1609248214, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(229, 3, 2, 0, 0, 0, 49, '::1', 1609248262, 'LOG_USER_NEW_PASSWORD', 'a:1:{i:0;s:7:\"kimtran\";}'),
(230, 0, 2, 0, 0, 0, 0, '::1', 1609248262, 'LOG_USER_USER_UPDATE', 'a:1:{i:0;s:7:\"kimtran\";}'),
(231, 3, 49, 0, 0, 0, 0, '::1', 1609248433, 'PG_SOCIAL_STATUS_NEW_LOG', ''),
(232, 3, 49, 0, 0, 0, 0, '::1', 1609248446, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(233, 0, 2, 0, 0, 0, 0, '::1', 1609339461, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(234, 0, 2, 0, 0, 0, 0, '::1', 1609339696, 'LOG_CONFIG_SETTINGS', ''),
(235, 0, 2, 0, 0, 0, 0, '::1', 1609511490, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(236, 0, 2, 0, 0, 0, 0, '::1', 1609511670, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:\"ACP_APS_POINTS\";}'),
(237, 0, 2, 0, 0, 0, 0, '::1', 1609511671, 'LOG_MODULE_ADD', 'a:1:{i:0;s:21:\"ACP_APS_MODE_SETTINGS\";}'),
(238, 0, 2, 0, 0, 0, 0, '::1', 1609511671, 'LOG_MODULE_ADD', 'a:1:{i:0;s:20:\"ACP_APS_MODE_DISPLAY\";}'),
(239, 0, 2, 0, 0, 0, 0, '::1', 1609511672, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:\"ACP_APS_MODE_POINTS\";}'),
(240, 0, 2, 0, 0, 0, 0, '::1', 1609511672, 'LOG_MODULE_ADD', 'a:1:{i:0;s:17:\"ACP_APS_MODE_LOGS\";}'),
(241, 0, 2, 0, 0, 0, 0, '::1', 1609511690, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:\"MCP_APS_POINTS\";}'),
(242, 0, 2, 0, 0, 0, 0, '::1', 1609511692, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:\"MCP_APS_FRONT\";}'),
(243, 0, 2, 0, 0, 0, 0, '::1', 1609511692, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:\"MCP_APS_CHANGE\";}'),
(244, 0, 2, 0, 0, 0, 0, '::1', 1609511693, 'LOG_MODULE_ADD', 'a:1:{i:0;s:12:\"MCP_APS_LOGS\";}'),
(245, 0, 2, 0, 0, 0, 0, '::1', 1609511708, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:\"UCP_APS_POINTS\";}'),
(246, 0, 2, 0, 0, 0, 0, '::1', 1609511714, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:15:\"phpbbstudio/aps\";}'),
(247, 0, 2, 0, 0, 0, 0, '::1', 1609511782, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:\"ACP_ASS_SYSTEM\";}'),
(248, 0, 2, 0, 0, 0, 0, '::1', 1609511783, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:\"ACP_ASS_OVERVIEW\";}'),
(249, 0, 2, 0, 0, 0, 0, '::1', 1609511783, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:\"ACP_ASS_SETTINGS\";}'),
(250, 0, 2, 0, 0, 0, 0, '::1', 1609511784, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:\"ACP_ASS_ITEMS\";}'),
(251, 0, 2, 0, 0, 0, 0, '::1', 1609511784, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:\"ACP_ASS_FILES\";}'),
(252, 0, 2, 0, 0, 0, 0, '::1', 1609511785, 'LOG_MODULE_ADD', 'a:1:{i:0;s:12:\"ACP_ASS_LOGS\";}'),
(253, 0, 2, 0, 0, 0, 0, '::1', 1609511841, 'LOG_MODULE_ADD', 'a:1:{i:0;s:17:\"ACP_ASS_INVENTORY\";}'),
(254, 0, 2, 0, 0, 0, 0, '::1', 1609511855, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:15:\"phpbbstudio/ass\";}'),
(255, 0, 2, 0, 0, 0, 0, '::1', 1609511861, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:15:\"phpbbstudio/ass\";}'),
(256, 0, 2, 0, 0, 0, 0, '::1', 1609512179, 'LOG_ACP_ASS_CATEGORY_ADDED', 'a:1:{i:0;s:10:\"SHOP BOOKS\";}'),
(257, 0, 2, 0, 0, 0, 0, '::1', 1609513691, 'LOG_ACP_ASS_ITEM_ADDED', 'a:1:{i:0;s:52:\"Con Chim Xanh Biếc Bay Về (Nguyễn Nhật Ánh)\";}'),
(258, 0, 2, 0, 0, 0, 0, '::1', 1609514350, 'LOG_ACP_APS_SETTINGS', ''),
(259, 0, 2, 0, 0, 0, 0, '::1', 1609519131, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(260, 0, 2, 0, 0, 0, 0, '::1', 1609602434, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(261, 0, 2, 0, 0, 0, 0, '::1', 1609603267, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(262, 0, 2, 0, 0, 0, 0, '::1', 1609603354, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(263, 0, 2, 0, 0, 0, 0, '::1', 1609603500, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:11:\"REVIEW BOOK\";i:1;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(264, 0, 2, 0, 0, 0, 0, '::1', 1609603529, 'LOG_FORUM_DEL_FORUM', 'a:1:{i:0;s:11:\"REVIEW BOOK\";}'),
(265, 0, 2, 0, 0, 0, 0, '::1', 1609603693, 'LOG_FORUM_ADD', 'a:1:{i:0;s:16:\"CÁC SỰ KIỆN\";}'),
(266, 0, 2, 0, 0, 0, 0, '::1', 1609603693, 'LOG_ACP_APS_POINTS_COPIED', 'a:3:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";i:1;s:16:\"CÁC SỰ KIỆN\";i:2;s:3:\"VND\";}'),
(267, 0, 2, 0, 0, 0, 0, '::1', 1609603693, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";i:1;s:16:\"CÁC SỰ KIỆN\";}'),
(268, 0, 2, 0, 0, 0, 0, '::1', 1609603819, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";}'),
(269, 0, 2, 0, 0, 0, 0, '::1', 1609604055, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(270, 0, 2, 0, 0, 0, 0, '::1', 1609604214, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(271, 0, 2, 0, 0, 0, 0, '::1', 1609604368, 'LOG_FORUM_ADD', 'a:1:{i:0;s:10:\"SÁNG TÁC\";}'),
(272, 0, 2, 0, 0, 0, 0, '::1', 1609604368, 'LOG_ACP_APS_POINTS_COPIED', 'a:3:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";i:1;s:10:\"SÁNG TÁC\";i:2;s:3:\"VND\";}'),
(273, 0, 2, 0, 0, 0, 0, '::1', 1609604368, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";i:1;s:10:\"SÁNG TÁC\";}'),
(274, 0, 2, 0, 0, 0, 0, '::1', 1609669725, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(275, 0, 2, 0, 0, 0, 0, '::1', 1609670961, 'LOG_ACP_ASS_ITEM_ADDED', 'a:1:{i:0;s:15:\"Đề thi Toeic\";}'),
(276, 0, 2, 0, 0, 0, 0, '::1', 1609673611, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(277, 0, 2, 0, 0, 0, 0, '::1', 1609673826, 'LOG_ACP_ASS_LOCATIONS', ''),
(278, 0, 2, 0, 0, 0, 0, '::1', 1609674091, 'LOG_ACP_APS_SETTINGS', ''),
(279, 0, 2, 0, 0, 0, 0, '::1', 1609674189, 'LOG_PURGE_CACHE', ''),
(280, 0, 2, 0, 0, 0, 0, '::1', 1609688676, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(281, 0, 2, 0, 0, 0, 0, '::1', 1609688796, 'LOG_ACP_ASS_ITEM_EDITED', 'a:1:{i:0;s:15:\"Đề thi Toeic\";}'),
(282, 0, 2, 0, 0, 0, 0, '::1', 1609689399, 'LOG_ACP_ASS_ITEM_ADDED', 'a:1:{i:0;s:24:\"Truyện cổ Tấm Cám\";}'),
(283, 0, 2, 0, 0, 0, 0, '::1', 1609689505, 'LOG_ACP_ASS_ITEM_EDITED', 'a:1:{i:0;s:52:\"Con Chim Xanh Biếc Bay Về (Nguyễn Nhật Ánh)\";}'),
(284, 0, 2, 0, 0, 0, 0, '::1', 1609689524, 'LOG_ACP_ASS_ITEM_EDITED', 'a:1:{i:0;s:15:\"Đề thi Toeic\";}'),
(285, 0, 2, 0, 0, 0, 0, '::1', 1609689544, 'LOG_ACP_ASS_ITEM_EDITED', 'a:1:{i:0;s:24:\"Truyện cổ Tấm Cám\";}'),
(286, 0, 2, 0, 0, 0, 0, '::1', 1609689811, 'LOG_ACP_APS_CLEANED', 'a:1:{i:0;s:3:\"VND\";}'),
(287, 0, 2, 0, 0, 0, 0, '::1', 1609689910, 'LOG_ACP_APS_SETTINGS', ''),
(288, 0, 2, 0, 0, 0, 0, '::1', 1609690197, 'LOG_ACP_ASS_INVENTORY_ADD', 'a:4:{i:0;i:3;i:1;s:95:\"Con Chim Xanh Biếc Bay Về (Nguyễn Nhật Ánh), Đề thi Toeic, Truyện cổ Tấm Cám\";i:2;i:1;i:3;s:5:\"admin\";}'),
(289, 0, 2, 0, 0, 0, 0, '::1', 1609690479, 'LOG_ACP_APS_REASON_ADD', ''),
(290, 0, 2, 0, 0, 0, 0, '::1', 1609690521, 'LOG_ACP_APS_REASON_ADD', ''),
(291, 0, 2, 0, 0, 0, 0, '::1', 1609690611, 'LOG_ACP_APS_REASON_ADD', ''),
(292, 0, 2, 0, 0, 0, 0, '::1', 1609690712, 'LOG_ACP_APS_REASON_EDIT', ''),
(293, 0, 2, 0, 0, 0, 0, '::1', 1609690755, 'LOG_ACP_APS_REASON_EDIT', ''),
(294, 0, 2, 0, 0, 0, 0, '::1', 1609690856, 'LOG_ACP_APS_SETTINGS', ''),
(295, 0, 2, 0, 0, 0, 0, '::1', 1609690914, 'LOG_ACP_APS_REASON_EDIT', ''),
(296, 0, 2, 0, 0, 0, 0, '::1', 1609691043, 'LOG_ACP_APS_POINTS', 'a:1:{i:0;s:3:\"VND\";}'),
(297, 0, 2, 0, 0, 0, 0, '::1', 1609691064, 'LOG_ACP_APS_REASON_EDIT', ''),
(298, 0, 2, 0, 0, 0, 0, '::1', 1609691596, 'LOG_ACP_APS_CLEANED', 'a:1:{i:0;s:3:\"VND\";}'),
(299, 0, 2, 0, 0, 0, 0, '::1', 1609691648, 'LOG_ACP_APS_DISPLAY', ''),
(300, 0, 2, 0, 0, 0, 0, '::1', 1609753242, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(301, 0, 2, 0, 0, 0, 0, '::1', 1609753846, 'LOG_ACP_ASS_ITEM_ADDED', 'a:1:{i:0;s:27:\"Pháp luật đại cương\";}'),
(302, 0, 2, 0, 0, 0, 0, '::1', 1609754104, 'LOG_ACP_ASS_ITEM_ADDED', 'a:1:{i:0;s:24:\"Tin học đại cương\";}'),
(303, 0, 2, 0, 0, 0, 0, '::1', 1609754474, 'LOG_ACP_ASS_ITEM_ADDED', 'a:1:{i:0;s:25:\"Giáo trình Mác lê nin\";}'),
(304, 0, 2, 0, 0, 0, 0, '::1', 1609755075, 'LOG_ACP_ASS_CATEGORY_ADDED', 'a:1:{i:0;s:5:\"Audio\";}'),
(305, 0, 2, 0, 0, 0, 0, '::1', 1609755270, 'LOG_ACP_ASS_ITEM_ADDED', 'a:1:{i:0;s:23:\"Định Mệnh phần 1\";}'),
(306, 0, 2, 0, 0, 0, 0, '::1', 1609755716, 'LOG_ACP_ASS_ITEM_ADDED', 'a:1:{i:0;s:23:\"Đỗ Nương báo oán\";}'),
(307, 0, 2, 0, 0, 0, 0, '::1', 1609755797, 'LOG_ACP_APS_REASON_EDIT', ''),
(308, 0, 2, 0, 0, 0, 0, '::1', 1609755829, 'LOG_ACP_APS_REASON_ADD', ''),
(309, 0, 2, 0, 0, 0, 0, '::1', 1609761168, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:26:\"THƯ VIỆN - REVIEW SÁCH\";}'),
(310, 0, 2, 0, 0, 0, 0, '::1', 1609761240, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(311, 0, 2, 0, 0, 0, 0, '::1', 1609761316, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(312, 0, 2, 0, 0, 0, 0, '::1', 1609761375, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:16:\"CÁC SỰ KIỆN\";}'),
(313, 0, 2, 0, 0, 0, 0, '::1', 1609761438, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(314, 0, 2, 0, 0, 0, 0, '::1', 1609761495, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:16:\"CÁC SỰ KIỆN\";}'),
(315, 0, 2, 0, 0, 0, 0, '::1', 1609762190, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:16:\"CÁC SỰ KIỆN\";}'),
(316, 0, 2, 0, 0, 0, 0, '::1', 1609762191, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";i:1;s:16:\"CÁC SỰ KIỆN\";}'),
(317, 1, 2, 8, 9, 0, 0, '::1', 1609762722, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:30:\"[Thông báo] Tính năng Rank\";i:1;s:5:\"admin\";i:2;s:0:\"\";}'),
(318, 0, 2, 0, 0, 0, 0, '::1', 1609762923, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(319, 0, 2, 0, 0, 0, 0, '::1', 1609762924, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";i:1;s:24:\"THÔNG TIN THẢO LUẬN\";}'),
(320, 0, 2, 0, 0, 0, 0, '::1', 1609824000, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(321, 2, 52, 0, 0, 0, 0, '::1', 1609833914, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:307:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/ucp.php</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}'),
(322, 3, 2, 0, 0, 0, 0, '::1', 1609834086, 'PG_SOCIAL_STATUS_NEW_LOG', ''),
(323, 3, 2, 0, 0, 0, 0, '::1', 1609834111, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(324, 0, 2, 0, 0, 0, 0, '::1', 1609834140, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(325, 0, 2, 0, 0, 0, 0, '::1', 1609834195, 'LOG_CONFIG_AVATAR', ''),
(326, 0, 2, 0, 0, 0, 0, '::1', 1609834271, 'LOG_CONFIG_REGISTRATION', ''),
(327, 1, 2, 2, 15, 15, 0, '::1', 1609836935, 'LOG_POST_APPROVED', 'a:1:{i:0;s:52:\"Review Sách Loài Plastic - Khi Nhựa Trỗi Dậy\";}'),
(328, 2, 2, 0, 0, 0, 0, '::1', 1609837019, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:333:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/app.php/cron/cron.task.core.queue</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}'),
(329, 0, 2, 0, 0, 0, 0, '::1', 1609837312, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(330, 0, 2, 0, 0, 0, 0, '::1', 1609838026, 'LOG_PURGE_CACHE', ''),
(331, 0, 2, 0, 0, 0, 0, '::1', 1609844303, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(332, 3, 2, 0, 0, 0, 0, '::1', 1609849365, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(333, 3, 2, 0, 0, 0, 0, '::1', 1609849367, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(334, 3, 2, 0, 0, 0, 0, '::1', 1609849368, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(335, 3, 2, 0, 0, 0, 0, '::1', 1609849369, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(336, 3, 2, 0, 0, 0, 0, '::1', 1609849369, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(337, 3, 2, 0, 0, 0, 0, '::1', 1609849369, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(338, 3, 2, 0, 0, 0, 0, '::1', 1609849371, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(339, 3, 2, 0, 0, 0, 0, '::1', 1609849371, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(340, 3, 2, 0, 0, 0, 0, '::1', 1609849371, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(341, 3, 2, 0, 0, 0, 0, '::1', 1609849371, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(342, 3, 2, 0, 0, 0, 0, '::1', 1609849372, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(343, 3, 2, 0, 0, 0, 0, '::1', 1609849372, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(344, 3, 2, 0, 0, 0, 0, '::1', 1609849372, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(345, 3, 2, 0, 0, 0, 0, '::1', 1609849374, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(346, 3, 2, 0, 0, 0, 0, '::1', 1609849374, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(347, 3, 2, 0, 0, 0, 0, '::1', 1609849375, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(348, 3, 2, 0, 0, 0, 0, '::1', 1609849377, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(349, 3, 2, 0, 0, 0, 0, '::1', 1609849381, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(350, 3, 2, 0, 0, 0, 0, '::1', 1609849382, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(351, 3, 2, 0, 0, 0, 0, '::1', 1609849382, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(352, 3, 2, 0, 0, 0, 0, '::1', 1609849383, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(353, 3, 2, 0, 0, 0, 0, '::1', 1609849383, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(354, 3, 2, 0, 0, 0, 0, '::1', 1609849402, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(355, 3, 2, 0, 0, 0, 0, '::1', 1609849404, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(356, 3, 2, 0, 0, 0, 0, '::1', 1609849404, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(357, 3, 2, 0, 0, 0, 0, '::1', 1609849404, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(358, 3, 2, 0, 0, 0, 0, '::1', 1609849404, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(359, 3, 2, 0, 0, 0, 0, '::1', 1609849405, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(360, 3, 2, 0, 0, 0, 0, '::1', 1609849405, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(361, 3, 2, 0, 0, 0, 0, '::1', 1609849405, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(362, 3, 2, 0, 0, 0, 0, '::1', 1609849405, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(363, 3, 2, 0, 0, 0, 0, '::1', 1609849406, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(364, 3, 2, 0, 0, 0, 0, '::1', 1609849406, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(365, 3, 2, 0, 0, 0, 0, '::1', 1609849406, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(366, 3, 2, 0, 0, 0, 0, '::1', 1609849406, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(367, 3, 2, 0, 0, 0, 0, '::1', 1609849413, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(368, 3, 2, 0, 0, 0, 0, '::1', 1609849427, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(369, 3, 2, 0, 0, 0, 0, '::1', 1609849439, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(370, 0, 2, 0, 0, 0, 0, '::1', 1609850804, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(371, 2, 53, 0, 0, 0, 0, '::1', 1609913239, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:307:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/ucp.php</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}'),
(372, 0, 2, 0, 0, 0, 0, '::1', 1609915244, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(373, 3, 2, 0, 0, 0, 0, '::1', 1609917432, 'PG_SOCIAL_LIKE_NEW_LOG', ''),
(374, 3, 2, 0, 0, 0, 0, '::1', 1609917439, 'PG_SOCIAL_COMMENT_NEW_LOG', ''),
(375, 1, 2, 2, 17, 17, 0, '::1', 1609918612, 'LOG_POST_APPROVED', 'a:1:{i:0;s:70:\"Review Hoàng Tử Bé - Triết lý về tình yêu và cuộc sống\";}'),
(376, 2, 2, 0, 0, 0, 0, '::1', 1609918638, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:333:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/app.php/cron/cron.task.core.queue</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_login_attempts`
--

CREATE TABLE `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_mchat`
--

CREATE TABLE `phpbb_mchat` (
  `message_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_bin NOT NULL,
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_options` tinyint(1) UNSIGNED NOT NULL DEFAULT 7,
  `message_time` int(11) NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_mchat`
--

INSERT INTO `phpbb_mchat` (`message_id`, `user_id`, `user_ip`, `message`, `bbcode_bitfield`, `bbcode_uid`, `bbcode_options`, `message_time`, `forum_id`, `post_id`) VALUES
(1, 2, '::1', '<t>Hello mn</t>', '', '', 7, 1603787406, 0, 0),
(4, 2, '::1', '<r><URL url=\"https://www.youtube.com/watch?v=zRwzZY4OB2U\"><s>[url]</s>https://www.youtube.com/watch?v=zRwzZY4OB2U<e>[/url]</e></URL></r>', '', '', 7, 1603791294, 0, 0),
(5, 2, '::1', '<t>Hi</t>', '', '', 7, 1603859290, 0, 0),
(6, 49, '::1', '<t>Chào admin</t>', '', '', 7, 1603870027, 0, 0),
(7, 2, '::1', '<t>M</t>', '', '', 7, 1603905569, 0, 0),
(8, 50, '::1', '<t>Hi mn</t>', '', '', 7, 1603958279, 0, 0),
(9, 50, '::1', '<t>Room-vn-1-RUC6UVOCUM-1603728645510</t>', '', '', 7, 1603959155, 0, 0),
(10, 2, '::1', '<t>Ca nha</t>', '', '', 7, 1608536576, 0, 0),
(11, 2, '::1', '<r><I><s>[i]</s>likes this message<e>[/i]</e></I><QUOTE author=\"giaan\" post_id=\"9\" time=\"1603959155\" user_id=\"50\"><s>[quote=\"giaan\" post_id=9 time=1603959155 user_id=50]</s> Room-vn-1-RUC6UVOCUM-1603728645510 <e>[/quote]</e></QUOTE></r>', '', '', 7, 1608536601, 0, 0),
(12, 51, '::1', '<t>Hi</t>', '', '', 7, 1608621627, 0, 0),
(13, 2, '::1', '<t>Hello</t>', '', '', 7, 1609242334, 0, 0),
(14, 52, '::1', '<t>Hi</t>', '', '', 7, 1609845746, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_mchat_log`
--

CREATE TABLE `phpbb_mchat_log` (
  `log_id` mediumint(8) UNSIGNED NOT NULL,
  `log_type` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `message_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_mchat_log`
--

INSERT INTO `phpbb_mchat_log` (`log_id`, `log_type`, `user_id`, `message_id`, `log_ip`, `log_time`) VALUES
(1, 2, 2, 3, '::1', 1603860015),
(2, 2, 2, 2, '::1', 1603860019);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_mchat_sessions`
--

CREATE TABLE `phpbb_mchat_sessions` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastupdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_migrations`
--

CREATE TABLE `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `migration_data_done` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `migration_end_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_migrations`
--

INSERT INTO `phpbb_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\dmzx\\mchat\\migrations\\mchat_2_0_0', 'a:1:{i:0;s:38:\"\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc7\";}', 1, 1, '', 1603787383, 1603787383),
('\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc3', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";}', 1, 1, '', 1603787381, 1603787383),
('\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc4', 'a:1:{i:0;s:38:\"\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc3\";}', 1, 1, '', 1603787383, 1603787383),
('\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc5', 'a:1:{i:0;s:38:\"\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc4\";}', 1, 1, '', 1603787383, 1603787383),
('\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc6', 'a:1:{i:0;s:38:\"\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc5\";}', 1, 1, '', 1603787383, 1603787383),
('\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc7', 'a:1:{i:0;s:38:\"\\dmzx\\mchat\\migrations\\mchat_2_0_0_rc6\";}', 1, 1, '', 1603787383, 1603787383),
('\\dmzx\\mchat\\migrations\\mchat_2_0_1', 'a:1:{i:0;s:34:\"\\dmzx\\mchat\\migrations\\mchat_2_0_0\";}', 1, 1, '', 1603787383, 1603787383),
('\\dmzx\\mchat\\migrations\\mchat_2_0_2', 'a:1:{i:0;s:34:\"\\dmzx\\mchat\\migrations\\mchat_2_0_1\";}', 1, 1, '', 1603787383, 1603787384),
('\\dmzx\\mchat\\migrations\\mchat_2_0_3', 'a:1:{i:0;s:34:\"\\dmzx\\mchat\\migrations\\mchat_2_0_2\";}', 1, 1, '', 1603787384, 1603787384),
('\\dmzx\\mchat\\migrations\\mchat_2_1_0', 'a:1:{i:0;s:38:\"\\dmzx\\mchat\\migrations\\mchat_2_1_0_rc1\";}', 1, 1, '', 1603787384, 1603787384),
('\\dmzx\\mchat\\migrations\\mchat_2_1_0_rc1', 'a:1:{i:0;s:34:\"\\dmzx\\mchat\\migrations\\mchat_2_0_3\";}', 1, 1, '', 1603787384, 1603787384),
('\\dmzx\\mchat\\migrations\\mchat_2_1_1', 'a:1:{i:0;s:34:\"\\dmzx\\mchat\\migrations\\mchat_2_1_0\";}', 1, 1, '', 1603787384, 1603787384),
('\\dmzx\\mchat\\migrations\\mchat_2_1_2', 'a:1:{i:0;s:34:\"\\dmzx\\mchat\\migrations\\mchat_2_1_1\";}', 1, 1, '', 1603787384, 1603787384),
('\\dmzx\\mchat\\migrations\\mchat_2_1_3', 'a:1:{i:0;s:34:\"\\dmzx\\mchat\\migrations\\mchat_2_1_2\";}', 1, 1, '', 1603787384, 1603787384),
('\\dmzx\\mchat\\migrations\\mchat_2_1_4', 'a:1:{i:0;s:38:\"\\dmzx\\mchat\\migrations\\mchat_2_1_4_rc2\";}', 1, 1, '', 1603787384, 1603787384),
('\\dmzx\\mchat\\migrations\\mchat_2_1_4_rc1', 'a:1:{i:0;s:34:\"\\dmzx\\mchat\\migrations\\mchat_2_1_3\";}', 1, 1, '', 1603787384, 1603787384),
('\\dmzx\\mchat\\migrations\\mchat_2_1_4_rc2', 'a:1:{i:0;s:38:\"\\dmzx\\mchat\\migrations\\mchat_2_1_4_rc1\";}', 1, 1, '', 1603787384, 1603787384),
('\\dmzx\\youtubegallery\\migrations\\youtubegallery_1_0_3', 'a:1:{i:0;s:54:\"\\dmzx\\youtubegallery\\migrations\\youtubegallery_install\";}', 1, 1, '', 1603860774, 1603860774),
('\\dmzx\\youtubegallery\\migrations\\youtubegallery_install', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603860774, 1603860774),
('\\gfksx\\thanksforposts\\migrations\\v_0_4_0', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603859601, 1603859601),
('\\gfksx\\thanksforposts\\migrations\\v_1_2_5', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_0_4_0\";}', 1, 1, '', 1603859601, 1603859601),
('\\gfksx\\thanksforposts\\migrations\\v_1_2_6', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_1_2_5\";}', 1, 1, '', 1603859601, 1603859601),
('\\gfksx\\thanksforposts\\migrations\\v_1_2_8', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_1_2_6\";}', 1, 1, '', 1603859601, 1603859602),
('\\gfksx\\thanksforposts\\migrations\\v_1_3_1', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_1_2_8\";}', 1, 1, '', 1603859602, 1603859602),
('\\gfksx\\thanksforposts\\migrations\\v_1_3_2', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_1_3_1\";}', 1, 1, '', 1603859602, 1603859602),
('\\gfksx\\thanksforposts\\migrations\\v_1_3_3', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_1_3_2\";}', 1, 1, '', 1603859602, 1603859602),
('\\gfksx\\thanksforposts\\migrations\\v_1_3_4', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_1_3_3\";}', 1, 1, '', 1603859602, 1603859602),
('\\gfksx\\thanksforposts\\migrations\\v_2_0_0', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_1_3_4\";}', 1, 1, '', 1603859602, 1603859602),
('\\gfksx\\thanksforposts\\migrations\\v_2_0_1', 'a:2:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_2_0_0\";i:1;s:57:\"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name\";}', 1, 1, '', 0, 0),
('\\gfksx\\thanksforposts\\migrations\\v_2_0_2', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_2_0_1\";}', 1, 1, '', 1603859602, 1603859602),
('\\gfksx\\thanksforposts\\migrations\\v_2_0_3', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_2_0_2\";}', 1, 1, '', 1603859602, 1603859602),
('\\gfksx\\thanksforposts\\migrations\\v_2_0_6', 'a:1:{i:0;s:40:\"\\gfksx\\thanksforposts\\migrations\\v_2_0_3\";}', 1, 1, '', 0, 0),
('\\javiexin\\advancedpf\\migrations\\profilefield_individual', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1608445091, 1608445092),
('\\kasimi\\pollonindex\\migrations\\m1_initial_schema', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v324\";}', 1, 1, '', 1603871139, 1603871139),
('\\kasimi\\pollonindex\\migrations\\m2_initial_data', 'a:1:{i:0;s:48:\"\\kasimi\\pollonindex\\migrations\\m1_initial_schema\";}', 1, 1, '', 1603871139, 1603871139),
('\\kinerity\\bestanswer\\migrations\\v10x\\release_0_0_1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1603871126, 1603871126),
('\\pgreca\\leagueofphpbb\\migrations\\install_leagueofphpbb', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1604062786, 1604062788),
('\\pgreca\\pgsocial\\migrations\\install_pg_social_01', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1608617987, 1608618017),
('\\pgreca\\pgsocial\\migrations\\install_pg_social_02', 'a:1:{i:0;s:48:\"\\pgreca\\pgsocial\\migrations\\install_pg_social_01\";}', 1, 1, '', 1608618017, 1608618020),
('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module\";i:3;s:39:\"\\phpbb\\db\\migration\\data\\v310\\allow_cdn\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";i:5;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";i:6;s:40:\"\\phpbb\\db\\migration\\data\\v310\\boardindex\";i:7;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";i:8;s:45:\"\\phpbb\\db\\migration\\data\\v310\\forgot_password\";i:9;s:41:\"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite\";i:10;s:49:\"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop\";i:11;s:40:\"\\phpbb\\db\\migration\\data\\v310\\namespaces\";i:12;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";i:13;s:60:\"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert\";i:14;s:38:\"\\phpbb\\db\\migration\\data\\v310\\plupload\";i:15;s:51:\"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth\";i:16;s:52:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules\";i:17;s:38:\"\\phpbb\\db\\migration\\data\\v310\\teampage\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\avatar_types\";i:2;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";i:2;s:52:\"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop\";i:3;s:63:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";i:5;s:54:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";i:1;s:52:\"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module\";i:2;s:59:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";i:1;s:50:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\board_contact_name\";i:3;s:44:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update2\";i:4;s:50:\"\\phpbb\\db\\migration\\data\\v310\\live_searches_config\";i:5;s:49:\"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta3\";i:1;s:69:\"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable\";i:2;s:58:\"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:\"\\phpbb\\db\\migration\\data\\v310\\extensions\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p2\";i:2;s:41:\"\\phpbb\\db\\migration\\data\\v310\\timezone_p2\";i:3;s:52:\"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display\";i:4;s:46:\"\\phpbb\\db\\migration\\data\\v310\\migrations_table\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";i:1;s:40:\"\\phpbb\\db\\migration\\data\\v310\\bot_update\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";i:1;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta4\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:3;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype\";i:7;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter\";i:8;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes\";i:3;s:41:\"\\phpbb\\db\\migration\\data\\v310\\search_type\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";i:1;s:57:\"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";i:1;s:66:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc5\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p1\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}', 1, 1, '', 1603785226, 1603785226),
('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\m_pm_report', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\update_hashes', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v31x\\style_update\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v3110', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3110rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v3110rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v3111', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v3111rc1', 'a:8:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options\";i:4;s:65:\"\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options\";i:5;s:43:\"\\phpbb\\db\\migration\\data\\v31x\\update_hashes\";i:6;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:7;s:53:\"\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v3112', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v312rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v313', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc1', 'a:5:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic\";i:2;s:71:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha\";i:3;s:59:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url\";i:4;s:60:\"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v314', 'a:2:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v313\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v315', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v315rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v315rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v314\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v316', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v316rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v315\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v317', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v317pl1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v317rc1', 'a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v31x\\m_pm_report\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v318', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v318rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v318rc1', 'a:2:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v319', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v319rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v31x\\v319rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\announce_global_permission', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\cookie_notice', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v320\\oauth_states\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\dev', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\font_awesome_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\icons_alt', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\log_post_id', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\notifications_board', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\oauth_states', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\text_reparser', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\v320', 'a:2:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\cookie_notice\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\v320a1', 'a:9:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";i:2;s:56:\"\\phpbb\\db\\migration\\data\\v320\\announce_global_permission\";i:3;s:53:\"\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v320\\font_awesome_update\";i:5;s:39:\"\\phpbb\\db\\migration\\data\\v320\\icons_alt\";i:6;s:41:\"\\phpbb\\db\\migration\\data\\v320\\log_post_id\";i:7;s:51:\"\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media\";i:8;s:49:\"\\phpbb\\db\\migration\\data\\v320\\notifications_board\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\v320a2', 'a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\text_reparser\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\v320b1', 'a:4:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\v320b2', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\v320rc1', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v320\\v320rc2', 'a:3:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:44:\"\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\add_missing_config', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v329\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\add_plupload_config', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v329\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\disable_remote_avatar', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v325\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\email_force_sender', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\font_awesome_update_cdn', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v32x\\add_missing_config\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\font_awesome_update_cdn_fix_depends_on', 'a:2:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v32x\\font_awesome_update_cdn\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v32x\\add_missing_config\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\jquery_update', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v325rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes', 'a:0:{}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\remove_imagick', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\smtp_dynamic_data', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v326rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\timezone_p3', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\user_emoji_permission', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v329rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1\";}', 1, 1, '', 1603785227, 1603785227);
INSERT INTO `phpbb_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates', 'a:1:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index', 'a:1:{i:0;s:74:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index', 'a:1:{i:0;s:72:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v321', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v321rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v3210', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v32x\\v3210rc2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v3210rc1', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v329\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v32x\\add_plupload_config\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v32x\\font_awesome_update_cdn\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v3210rc2', 'a:2:{i:0;s:68:\"\\phpbb\\db\\migration\\data\\v32x\\font_awesome_update_cdn_fix_depends_on\";i:1;s:38:\"\\phpbb\\db\\migration\\data\\v32x\\v3210rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v321rc1', 'a:4:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";i:1;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v322', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3112\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v322rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v322rc1', 'a:6:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles\";i:2;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v32x\\email_force_sender\";i:4;s:58:\"\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v323', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v323rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v323rc2', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v324', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v32x\\remove_imagick\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v324rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v325', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v325rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v32x\\jquery_update\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v325rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v324\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v326', 'a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v326rc1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v32x\\disable_remote_avatar\";i:2;s:47:\"\\phpbb\\db\\migration\\data\\v32x\\smtp_dynamic_data\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v326rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v325\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v327', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v327rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v327rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v326\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v328', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v328rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v328rc1', 'a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v32x\\timezone_p3\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v327\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v329', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v329rc1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v32x\\user_emoji_permission\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v32x\\v329rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v328\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\add_display_unapproved_posts_config', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\dev', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v327\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\forums_legend_limit', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v330\\v330b1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\jquery_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\remove_attachment_flash', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\remove_email_hash', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\remove_max_pass_chars', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\reset_password', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\v330', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v329\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v330\\v330rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\v330b1', 'a:6:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v330\\jquery_update\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v330\\reset_password\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v330\\remove_attachment_flash\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v330\\remove_max_pass_chars\";i:4;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v328\";i:5;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\v330b2', 'a:4:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v330\\add_display_unapproved_posts_config\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v330\\forums_legend_limit\";i:2;s:47:\"\\phpbb\\db\\migration\\data\\v330\\remove_email_hash\";i:3;s:36:\"\\phpbb\\db\\migration\\data\\v330\\v330b1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v330\\v330rc1', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v330\\v330b2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\add_notification_emails_table', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v330\\v330\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\bot_update', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v330\\v330\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\default_search_return_chars', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v330\\v330\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\fix_display_unapproved_posts_config', 'a:1:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v330\\add_display_unapproved_posts_config\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\font_awesome_5_rollback', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v33x\\font_awesome_5_update\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\font_awesome_5_update', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v330\\v330\";i:1;s:53:\"\\phpbb\\db\\migration\\data\\v32x\\font_awesome_update_cdn\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\google_recaptcha_v3', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v330\\v330\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\jquery_update', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v33x\\v331rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\profilefield_cleanup', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v330\\v330\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\v331', 'a:4:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v33x\\font_awesome_5_rollback\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v33x\\jquery_update\";i:2;s:35:\"\\phpbb\\db\\migration\\data\\v32x\\v3210\";i:3;s:37:\"\\phpbb\\db\\migration\\data\\v33x\\v331rc1\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\db\\migration\\data\\v33x\\v331rc1', 'a:8:{i:0;s:59:\"\\phpbb\\db\\migration\\data\\v33x\\add_notification_emails_table\";i:1;s:65:\"\\phpbb\\db\\migration\\data\\v33x\\fix_display_unapproved_posts_config\";i:2;s:40:\"\\phpbb\\db\\migration\\data\\v33x\\bot_update\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v33x\\font_awesome_5_update\";i:4;s:50:\"\\phpbb\\db\\migration\\data\\v33x\\profilefield_cleanup\";i:5;s:49:\"\\phpbb\\db\\migration\\data\\v33x\\google_recaptcha_v3\";i:6;s:57:\"\\phpbb\\db\\migration\\data\\v33x\\default_search_return_chars\";i:7;s:38:\"\\phpbb\\db\\migration\\data\\v32x\\v3210rc2\";}', 1, 1, '', 1603785227, 1603785227),
('\\phpbb\\mediaembed\\migrations\\m1_install_data', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc1\";}', 1, 1, '', 1603859586, 1603859587),
('\\phpbb\\mediaembed\\migrations\\m2_signature_config', 'a:1:{i:0;s:44:\"\\phpbb\\mediaembed\\migrations\\m1_install_data\";}', 1, 1, '', 1603859587, 1603859587),
('\\phpbb\\mediaembed\\migrations\\m3_plain_urls_config', 'a:1:{i:0;s:44:\"\\phpbb\\mediaembed\\migrations\\m1_install_data\";}', 1, 1, '', 1603859587, 1603859587),
('\\phpbb\\mediaembed\\migrations\\m4_permissions', 'a:2:{i:0;s:44:\"\\phpbb\\mediaembed\\migrations\\m1_install_data\";i:1;s:49:\"\\phpbb\\mediaembed\\migrations\\m3_plain_urls_config\";}', 1, 1, '', 1603859587, 1603859587),
('\\phpbb\\mediaembed\\migrations\\m5_cache', 'a:1:{i:0;s:43:\"\\phpbb\\mediaembed\\migrations\\m4_permissions\";}', 1, 1, '', 1603859587, 1603859587),
('\\phpbb\\pages\\migrations\\converter\\c1_convert_table', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}', 1, 1, '', 0, 0),
('\\phpbb\\pages\\migrations\\converter\\c2_convert_data', 'a:2:{i:0;s:50:\"\\phpbb\\pages\\migrations\\converter\\c1_convert_table\";i:1;s:46:\"\\phpbb\\pages\\migrations\\v10x\\m1_initial_schema\";}', 1, 1, '', 0, 0),
('\\phpbb\\pages\\migrations\\converter\\c3_convert_module', 'a:1:{i:0;s:50:\"\\phpbb\\pages\\migrations\\converter\\c1_convert_table\";}', 1, 1, '', 0, 0),
('\\phpbb\\pages\\migrations\\v10x\\m1_initial_schema', 'a:1:{i:0;s:50:\"\\phpbb\\pages\\migrations\\converter\\c1_convert_table\";}', 1, 1, '', 1603785381, 1603785381),
('\\phpbb\\pages\\migrations\\v10x\\m2_initial_data', 'a:1:{i:0;s:46:\"\\phpbb\\pages\\migrations\\v10x\\m1_initial_schema\";}', 1, 1, '', 1603785381, 1603785381),
('\\phpbb\\pages\\migrations\\v10x\\m3_initial_permission', 'a:1:{i:0;s:46:\"\\phpbb\\pages\\migrations\\v10x\\m1_initial_schema\";}', 1, 1, '', 1603785381, 1603785381),
('\\phpbb\\pages\\migrations\\v10x\\m4_initial_module', 'a:2:{i:0;s:51:\"\\phpbb\\pages\\migrations\\converter\\c3_convert_module\";i:1;s:50:\"\\phpbb\\pages\\migrations\\v10x\\m3_initial_permission\";}', 1, 1, '', 1603785381, 1603785381),
('\\phpbb\\pages\\migrations\\v10x\\m5_update_link_names', 'a:1:{i:0;s:44:\"\\phpbb\\pages\\migrations\\v10x\\m2_initial_data\";}', 1, 1, '', 1603785381, 1603785381),
('\\phpbb\\pages\\migrations\\v10x\\m6_reparser_cron', 'a:1:{i:0;s:49:\"\\phpbb\\pages\\migrations\\v10x\\m5_update_link_names\";}', 1, 1, '', 1603785381, 1603785381),
('\\phpbb\\pages\\migrations\\v10x\\m7_reparser_cron_update', 'a:1:{i:0;s:45:\"\\phpbb\\pages\\migrations\\v10x\\m6_reparser_cron\";}', 1, 1, '', 1603785381, 1603785381),
('\\phpbb\\pages\\migrations\\v20x\\m8_font_icons', 'a:1:{i:0;s:52:\"\\phpbb\\pages\\migrations\\v10x\\m7_reparser_cron_update\";}', 1, 1, '', 1603785381, 1603785381),
('\\phpbb\\pages\\migrations\\v20x\\m9_page_title_switch', 'a:1:{i:0;s:42:\"\\phpbb\\pages\\migrations\\v20x\\m8_font_icons\";}', 1, 1, '', 1603785381, 1603785381),
('\\phpbb\\viglink\\migrations\\viglink_ask_admin', 'a:1:{i:0;s:41:\"\\phpbb\\viglink\\migrations\\viglink_data_v2\";}', 1, 1, '', 1603785228, 1603785228),
('\\phpbb\\viglink\\migrations\\viglink_ask_admin_wait', 'a:1:{i:0;s:43:\"\\phpbb\\viglink\\migrations\\viglink_ask_admin\";}', 1, 1, '', 1603785228, 1603785228),
('\\phpbb\\viglink\\migrations\\viglink_cron', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 0, 0),
('\\phpbb\\viglink\\migrations\\viglink_data', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1603785228, 1603785228),
('\\phpbb\\viglink\\migrations\\viglink_data_v2', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 1603785228, 1603785228),
('\\phpbbstudio\\aps\\migrations\\install_acp_module', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v327\";}', 1, 1, '', 1609511670, 1609511672),
('\\phpbbstudio\\aps\\migrations\\install_configuration', 'a:1:{i:0;s:47:\"\\phpbbstudio\\aps\\migrations\\install_user_schema\";}', 1, 1, '', 1609511682, 1609511690),
('\\phpbbstudio\\aps\\migrations\\install_mcp_module', 'a:1:{i:0;s:46:\"\\phpbbstudio\\aps\\migrations\\install_acp_module\";}', 1, 1, '', 1609511690, 1609511693),
('\\phpbbstudio\\aps\\migrations\\install_permissions', 'a:1:{i:0;s:47:\"\\phpbbstudio\\aps\\migrations\\install_user_schema\";}', 1, 1, '', 1609511693, 1609511707),
('\\phpbbstudio\\aps\\migrations\\install_ucp_module', 'a:1:{i:0;s:46:\"\\phpbbstudio\\aps\\migrations\\install_acp_module\";}', 1, 1, '', 1609511707, 1609511708),
('\\phpbbstudio\\aps\\migrations\\install_user_schema', 'a:1:{i:0;s:46:\"\\phpbbstudio\\aps\\migrations\\install_acp_module\";}', 1, 1, '', 1609511672, 1609511682),
('\\phpbbstudio\\aps\\migrations\\update_configuration', 'a:1:{i:0;s:49:\"\\phpbbstudio\\aps\\migrations\\install_configuration\";}', 1, 1, '', 1609511708, 1609511708),
('\\phpbbstudio\\aps\\migrations\\update_permissions', 'a:1:{i:0;s:47:\"\\phpbbstudio\\aps\\migrations\\install_permissions\";}', 1, 1, '', 1609511709, 1609511711),
('\\phpbbstudio\\aps\\migrations\\v105_configuration', 'a:1:{i:0;s:48:\"\\phpbbstudio\\aps\\migrations\\update_configuration\";}', 1, 1, '', 1609511711, 1609511713),
('\\phpbbstudio\\ass\\migrations\\install_acp_module', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v327\";}', 1, 1, '', 1609511781, 1609511785),
('\\phpbbstudio\\ass\\migrations\\install_configuration', 'a:1:{i:0;s:42:\"\\phpbbstudio\\ass\\migrations\\install_tables\";}', 1, 1, '', 1609511806, 1609511825),
('\\phpbbstudio\\ass\\migrations\\install_directories', 'a:1:{i:0;s:49:\"\\phpbbstudio\\ass\\migrations\\install_configuration\";}', 1, 1, '', 1609511826, 1609511826),
('\\phpbbstudio\\ass\\migrations\\install_permissions', 'a:1:{i:0;s:46:\"\\phpbbstudio\\ass\\migrations\\install_acp_module\";}', 1, 1, '', 1609511826, 1609511831),
('\\phpbbstudio\\ass\\migrations\\install_roles', 'a:1:{i:0;s:47:\"\\phpbbstudio\\ass\\migrations\\install_permissions\";}', 1, 1, '', 1609511831, 1609511840),
('\\phpbbstudio\\ass\\migrations\\install_tables', 'a:1:{i:0;s:46:\"\\phpbbstudio\\ass\\migrations\\install_acp_module\";}', 1, 1, '', 1609511785, 1609511806),
('\\phpbbstudio\\ass\\migrations\\update_acp_module', 'a:1:{i:0;s:46:\"\\phpbbstudio\\ass\\migrations\\install_acp_module\";}', 1, 1, '', 1609511840, 1609511841),
('\\phpbbstudio\\ass\\migrations\\update_permissions', 'a:1:{i:0;s:47:\"\\phpbbstudio\\ass\\migrations\\install_permissions\";}', 1, 1, '', 1609511842, 1609511842),
('\\phpbbstudio\\ass\\migrations\\update_roles', 'a:1:{i:0;s:46:\"\\phpbbstudio\\ass\\migrations\\update_permissions\";}', 1, 1, '', 1609511842, 1609511843),
('\\phpbbstudio\\ass\\migrations\\update_tables', 'a:1:{i:0;s:42:\"\\phpbbstudio\\ass\\migrations\\install_tables\";}', 1, 1, '', 1609511843, 1609511846),
('\\phpbbstudio\\ass\\migrations\\v111_update_configuration', 'a:1:{i:0;s:49:\"\\phpbbstudio\\ass\\migrations\\install_configuration\";}', 1, 1, '', 1609511846, 1609511851),
('\\phpbbstudio\\ass\\migrations\\v111_update_permissions', 'a:1:{i:0;s:47:\"\\phpbbstudio\\ass\\migrations\\install_permissions\";}', 1, 1, '', 1609511851, 1609511852),
('\\phpbbstudio\\ass\\migrations\\v111_update_tables', 'a:1:{i:0;s:42:\"\\phpbbstudio\\ass\\migrations\\install_tables\";}', 1, 1, '', 1609511852, 1609511853),
('\\phpbbstudio\\ass\\migrations\\v112_update_configuration', 'a:1:{i:0;s:49:\"\\phpbbstudio\\ass\\migrations\\install_configuration\";}', 1, 1, '', 1609511853, 1609511854),
('\\phpbbstudio\\ass\\migrations\\v113_update_configuration', 'a:1:{i:0;s:49:\"\\phpbbstudio\\ass\\migrations\\install_configuration\";}', 1, 1, '', 1609511854, 1609511855),
('\\planetstyles\\flightdeck\\migrations\\install_style_settings', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}', 1, 1, '', 1603785754, 1603785754),
('\\senky\\massnotification\\migrations\\m1_acp_module', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1603859948, 1603859948),
('\\senky\\massnotification\\migrations\\m2_id_incrementer', 'a:1:{i:0;s:48:\"\\senky\\massnotification\\migrations\\m1_acp_module\";}', 1, 1, '', 1603859948, 1603859948),
('\\vinny\\shareon\\migrations\\install_shareon_1_0_0', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1603791473, 1603791473),
('\\vinny\\shareon\\migrations\\install_shareon_2_0_0', 'a:1:{i:0;s:47:\"\\vinny\\shareon\\migrations\\install_shareon_1_0_0\";}', 1, 1, '', 1603791473, 1603791473),
('\\vinny\\shareon\\migrations\\install_shareon_3_0_0', 'a:1:{i:0;s:47:\"\\vinny\\shareon\\migrations\\install_shareon_2_0_0\";}', 1, 1, '', 1603791473, 1603791473),
('\\vse\\topicimagepreview\\migrations\\install_tip', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1603871152, 1603871152),
('\\vse\\topicimagepreview\\migrations\\permissions', 'a:1:{i:0;s:45:\"\\vse\\topicimagepreview\\migrations\\install_tip\";}', 1, 1, '', 1603871152, 1603871152),
('\\vse\\topicimagepreview\\migrations\\ucp_option', 'a:1:{i:0;s:45:\"\\vse\\topicimagepreview\\migrations\\install_tip\";}', 1, 1, '', 1603871152, 1603871152);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_moderator_cache`
--

CREATE TABLE `phpbb_moderator_cache` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_modules`
--

CREATE TABLE `phpbb_modules` (
  `module_id` mediumint(8) UNSIGNED NOT NULL,
  `module_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `module_display` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_modules`
--

INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 68, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 45, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 46, 53, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 54, 67, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 69, 88, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 70, 75, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 76, 87, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 89, 122, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 90, 103, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 110, 121, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 123, 180, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 124, 159, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 160, 169, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 170, 179, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 181, 230, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 184, 193, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 194, 205, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 206, 215, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 216, 229, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 231, 246, 'ACP_CAT_CUSTOMISE', '', ''),
(22, 1, 1, '', 'acp', 21, 236, 241, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 232, 235, 'ACP_EXTENSION_MANAGEMENT', '', ''),
(24, 1, 1, '', 'acp', 21, 242, 245, 'ACP_LANGUAGE', '', ''),
(25, 1, 1, '', 'acp', 0, 247, 266, 'ACP_CAT_MAINTENANCE', '', ''),
(26, 1, 1, '', 'acp', 25, 248, 257, 'ACP_FORUM_LOGS', '', ''),
(27, 1, 1, '', 'acp', 25, 258, 265, 'ACP_CAT_DATABASE', '', ''),
(28, 1, 1, '', 'acp', 0, 267, 292, 'ACP_CAT_SYSTEM', '', ''),
(29, 1, 1, '', 'acp', 28, 268, 271, 'ACP_AUTOMATION', '', ''),
(30, 1, 1, '', 'acp', 28, 272, 283, 'ACP_GENERAL_TASKS', '', ''),
(31, 1, 1, '', 'acp', 28, 284, 291, 'ACP_MODULE_MANAGEMENT', '', ''),
(32, 1, 1, '', 'acp', 0, 293, 354, 'ACP_CAT_DOT_MODS', '', ''),
(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(35, 1, 1, 'acp_attachments', 'acp', 11, 113, 114, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(36, 1, 1, 'acp_attachments', 'acp', 11, 115, 116, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(37, 1, 1, 'acp_attachments', 'acp', 11, 117, 118, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(38, 1, 1, 'acp_attachments', 'acp', 11, 119, 120, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach'),
(39, 1, 1, 'acp_ban', 'acp', 15, 171, 172, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(40, 1, 1, 'acp_ban', 'acp', 15, 173, 174, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(41, 1, 1, 'acp_ban', 'acp', 15, 175, 176, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(42, 1, 1, 'acp_bbcodes', 'acp', 10, 91, 92, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(47, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(49, 1, 1, 'acp_board', 'acp', 10, 95, 96, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(53, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(54, 1, 1, 'acp_board', 'acp', 4, 49, 50, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(55, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(56, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(57, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(58, 1, 1, 'acp_board', 'acp', 5, 61, 62, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(59, 1, 1, 'acp_bots', 'acp', 30, 273, 274, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board'),
(63, 1, 1, 'acp_database', 'acp', 27, 259, 260, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(64, 1, 1, 'acp_database', 'acp', 27, 261, 262, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(65, 1, 1, 'acp_disallow', 'acp', 15, 177, 178, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(66, 1, 1, 'acp_email', 'acp', 30, 275, 276, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(67, 1, 1, 'acp_extensions', 'acp', 23, 233, 234, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions'),
(68, 1, 1, 'acp_forums', 'acp', 7, 71, 72, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(69, 1, 1, 'acp_groups', 'acp', 14, 161, 162, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(70, 1, 1, 'acp_groups', 'acp', 14, 163, 164, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group'),
(71, 1, 1, 'acp_help_phpbb', 'acp', 5, 63, 64, 'ACP_HELP_PHPBB', 'help_phpbb', 'acl_a_server'),
(72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(73, 1, 1, 'acp_icons', 'acp', 10, 99, 100, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(74, 1, 1, 'acp_inactive', 'acp', 13, 125, 126, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(75, 1, 1, 'acp_jabber', 'acp', 4, 51, 52, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(76, 1, 1, 'acp_language', 'acp', 24, 243, 244, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(77, 1, 1, 'acp_logs', 'acp', 26, 249, 250, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(78, 1, 1, 'acp_logs', 'acp', 26, 251, 252, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(79, 1, 1, 'acp_logs', 'acp', 26, 253, 254, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(80, 1, 1, 'acp_logs', 'acp', 26, 255, 256, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(81, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(82, 1, 1, 'acp_modules', 'acp', 31, 285, 286, 'ACP', 'acp', 'acl_a_modules'),
(83, 1, 1, 'acp_modules', 'acp', 31, 287, 288, 'UCP', 'ucp', 'acl_a_modules'),
(84, 1, 1, 'acp_modules', 'acp', 31, 289, 290, 'MCP', 'mcp', 'acl_a_modules'),
(85, 1, 1, 'acp_permission_roles', 'acp', 19, 207, 208, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(86, 1, 1, 'acp_permission_roles', 'acp', 19, 209, 210, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(87, 1, 1, 'acp_permission_roles', 'acp', 19, 211, 212, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(88, 1, 1, 'acp_permission_roles', 'acp', 19, 213, 214, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(89, 1, 1, 'acp_permissions', 'acp', 16, 182, 183, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(90, 1, 0, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(91, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(92, 1, 1, 'acp_permissions', 'acp', 18, 197, 198, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(93, 1, 1, 'acp_permissions', 'acp', 18, 199, 200, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(94, 1, 1, 'acp_permissions', 'acp', 17, 185, 186, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(95, 1, 1, 'acp_permissions', 'acp', 13, 129, 130, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(96, 1, 1, 'acp_permissions', 'acp', 18, 201, 202, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(97, 1, 1, 'acp_permissions', 'acp', 13, 131, 132, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(98, 1, 1, 'acp_permissions', 'acp', 17, 187, 188, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(99, 1, 1, 'acp_permissions', 'acp', 14, 165, 166, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(100, 1, 1, 'acp_permissions', 'acp', 18, 203, 204, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(101, 1, 1, 'acp_permissions', 'acp', 14, 167, 168, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(102, 1, 1, 'acp_permissions', 'acp', 17, 189, 190, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(103, 1, 1, 'acp_permissions', 'acp', 17, 191, 192, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(104, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(105, 1, 1, 'acp_permissions', 'acp', 20, 221, 222, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(106, 1, 1, 'acp_permissions', 'acp', 20, 223, 224, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(107, 1, 1, 'acp_permissions', 'acp', 20, 225, 226, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(108, 1, 1, 'acp_permissions', 'acp', 20, 227, 228, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(109, 1, 1, 'acp_php_info', 'acp', 30, 277, 278, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(110, 1, 1, 'acp_profile', 'acp', 13, 133, 134, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(111, 1, 1, 'acp_prune', 'acp', 7, 73, 74, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(112, 1, 1, 'acp_prune', 'acp', 13, 135, 136, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(113, 1, 1, 'acp_ranks', 'acp', 13, 137, 138, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(114, 1, 1, 'acp_reasons', 'acp', 30, 279, 280, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(115, 1, 1, 'acp_search', 'acp', 5, 65, 66, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(116, 1, 1, 'acp_search', 'acp', 27, 263, 264, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(117, 1, 1, 'acp_styles', 'acp', 22, 237, 238, 'ACP_STYLES', 'style', 'acl_a_styles'),
(118, 1, 1, 'acp_styles', 'acp', 22, 239, 240, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles'),
(119, 1, 1, 'acp_update', 'acp', 29, 269, 270, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(120, 1, 1, 'acp_users', 'acp', 13, 127, 128, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(121, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(122, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(123, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(124, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(125, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(126, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(127, 1, 0, 'acp_users', 'acp', 13, 151, 152, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(128, 1, 0, 'acp_users', 'acp', 13, 153, 154, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(129, 1, 0, 'acp_users', 'acp', 13, 155, 156, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(130, 1, 0, 'acp_users', 'acp', 13, 157, 158, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(131, 1, 1, 'acp_words', 'acp', 10, 101, 102, 'ACP_WORDS', 'words', 'acl_a_words'),
(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(138, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(139, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(140, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(141, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(142, 1, 1, 'acp_permissions', 'acp', 8, 85, 86, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', ''),
(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', ''),
(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', ''),
(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', ''),
(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', ''),
(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', ''),
(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', ''),
(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', ''),
(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'acl_m_pm_report'),
(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'acl_m_pm_report'),
(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'acl_m_pm_report'),
(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve'),
(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve'),
(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', ''),
(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', ''),
(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', ''),
(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth'),
(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', 'cfg_allow_board_notifications'),
(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', ''),
(198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', ''),
(199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', ''),
(200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo'),
(201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
(202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar'),
(203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', ''),
(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', ''),
(207, 1, 1, '\\phpbb\\viglink\\acp\\viglink_module', 'acp', 3, 43, 44, 'ACP_VIGLINK_SETTINGS', 'settings', 'ext_phpbb/viglink && acl_a_board'),
(208, 1, 1, '', 'acp', 32, 294, 297, 'ACP_PAGES', '', ''),
(209, 1, 1, '\\phpbb\\pages\\acp\\pages_module', 'acp', 208, 295, 296, 'ACP_PAGES_MANAGE', 'manage', 'ext_phpbb/pages && acl_a_pages'),
(210, 1, 1, '', 'acp', 32, 298, 301, 'ACP_STYLE_SETTINGS_TITLE', '', ''),
(211, 1, 1, '\\planetstyles\\flightdeck\\acp\\main_module', 'acp', 210, 299, 300, 'ACP_STYLE_SETTINGS_SETTINGS', 'settings', 'ext_planetstyles/flightdeck && acl_a_board'),
(212, 1, 1, '', 'acp', 32, 302, 307, 'ACP_CAT_MCHAT', '', ''),
(213, 1, 1, '\\dmzx\\mchat\\acp\\acp_mchat_module', 'acp', 212, 303, 304, 'ACP_MCHAT_GLOBALSETTINGS', 'globalsettings', 'ext_dmzx/mchat && acl_a_mchat'),
(214, 1, 1, '\\dmzx\\mchat\\acp\\acp_mchat_module', 'acp', 212, 305, 306, 'ACP_MCHAT_GLOBALUSERSETTINGS', 'globalusersettings', 'ext_dmzx/mchat && acl_a_mchat'),
(215, 1, 1, '', 'ucp', 0, 61, 64, 'UCP_MCHAT_CONFIG', '', ''),
(216, 1, 1, '\\dmzx\\mchat\\ucp\\ucp_mchat_module', 'ucp', 215, 62, 63, 'UCP_MCHAT_CONFIG', 'configuration', 'ext_dmzx/mchat && acl_u_mchat_view'),
(217, 1, 1, '', 'acp', 32, 308, 311, 'SO_ACP', '', ''),
(218, 1, 1, '\\vinny\\shareon\\acp\\shareon_module', 'acp', 217, 309, 310, 'SO_CONFIG', 'settings', 'ext_vinny/shareon && acl_a_group'),
(219, 1, 1, '', 'acp', 9, 104, 109, 'ACP_PHPBB_MEDIA_EMBED', '', ''),
(220, 1, 1, '\\phpbb\\mediaembed\\acp\\main_module', 'acp', 219, 105, 106, 'ACP_PHPBB_MEDIA_EMBED_SETTINGS', 'settings', 'ext_phpbb/mediaembed && acl_a_bbcode'),
(221, 1, 1, '\\phpbb\\mediaembed\\acp\\main_module', 'acp', 219, 107, 108, 'ACP_PHPBB_MEDIA_EMBED_MANAGE', 'manage', 'ext_phpbb/mediaembed && acl_a_bbcode'),
(222, 1, 1, '', 'acp', 32, 312, 321, 'ACP_THANKS', '', ''),
(223, 1, 1, '\\gfksx\\thanksforposts\\acp\\acp_thanks_module', 'acp', 222, 313, 314, 'ACP_THANKS_SETTINGS', 'thanks', 'ext_gfksx/thanksforposts && acl_a_board'),
(224, 1, 1, '\\gfksx\\thanksforposts\\acp\\acp_thanks_refresh_module', 'acp', 222, 315, 316, 'ACP_THANKS_REFRESH', 'thanks', 'ext_gfksx/thanksforposts && acl_a_board'),
(225, 1, 1, '\\gfksx\\thanksforposts\\acp\\acp_thanks_truncate_module', 'acp', 222, 317, 318, 'ACP_THANKS_TRUNCATE', 'thanks', 'ext_gfksx/thanksforposts && acl_a_board'),
(226, 1, 1, '\\gfksx\\thanksforposts\\acp\\acp_thanks_reput_module', 'acp', 222, 319, 320, 'ACP_THANKS_REPUT_SETTINGS', 'thanks', 'ext_gfksx/thanksforposts && acl_a_board'),
(227, 1, 1, '\\senky\\massnotification\\acp\\main_module', 'acp', 30, 281, 282, 'ACP_SENKY_MASSNOTIFICATION_TITLE', 'notification', 'ext_senky/massnotification && acl_a_board'),
(228, 1, 1, '', 'acp', 32, 322, 329, 'ACP_VIDEO', '', ''),
(229, 1, 1, '\\dmzx\\youtubegallery\\acp\\acp_youtubegallery_module', 'acp', 228, 323, 324, 'ACP_VIDEO_SETTINGS', 'settings', 'ext_dmzx/youtubegallery && acl_a_board'),
(230, 1, 1, '\\dmzx\\youtubegallery\\acp\\acp_youtubegallery_module', 'acp', 228, 325, 326, 'ACP_VIDEO_CATEGORY', 'cat', 'ext_dmzx/youtubegallery && acl_a_board'),
(231, 1, 1, '\\dmzx\\youtubegallery\\acp\\acp_youtubegallery_module', 'acp', 228, 327, 328, 'ACP_VIDEO_TITLE', 'title', 'ext_dmzx/youtubegallery && acl_a_board'),
(244, 1, 1, '', 'acp', 0, 355, 368, 'ACP_PG_SOCIAL_TITLE', '', ''),
(245, 1, 1, '', 'acp', 244, 356, 363, 'ACP_PG_SOCIAL_MAIN', '', ''),
(246, 1, 1, '\\pgreca\\pgsocial\\acp\\main_module', 'acp', 245, 357, 358, 'ACP_PG_SOCIAL_GENERAL', 'settings', 'ext_pgreca/pgsocial && acl_a_board'),
(247, 1, 1, '\\pgreca\\pgsocial\\acp\\main_module', 'acp', 245, 359, 360, 'ACP_PG_SOCIAL_SETTINGS', 'social', 'ext_pgreca/pgsocial && acl_a_board'),
(248, 1, 1, '\\pgreca\\pgsocial\\acp\\main_module', 'acp', 245, 361, 362, 'ACP_PG_SOCIAL_CHAT', 'chat', 'ext_pgreca/pgsocial && acl_a_board'),
(249, 1, 1, '', 'acp', 244, 364, 367, 'ACP_PG_SOCIAL_PAGE', '', ''),
(250, 1, 1, '\\pgreca\\pgsocial\\acp\\main_module', 'acp', 249, 365, 366, 'ACP_PG_SOCIAL_PAGE_MANAGE', 'page_manage', 'ext_pgreca/pgsocial && acl_a_board'),
(251, 1, 1, '', 'mcp', 0, 69, 74, 'MCP_PG_SOCIAL_TITLE', '', ''),
(252, 1, 1, '', 'mcp', 251, 70, 73, 'MCP_PG_SOCIAL_MAIN', '', ''),
(253, 1, 1, '\\pgreca\\pgsocial\\mcp\\main_module', 'mcp', 252, 71, 72, 'MCP_PG_SOCIAL_PAGE_MANAGE', 'page_manage', 'ext_pgreca/pgsocial'),
(254, 1, 1, '', 'ucp', 0, 65, 68, 'UCP_PG_SOCIAL_MAIN', '', ''),
(255, 1, 1, '\\pgreca\\pgsocial\\ucp\\main_module', 'ucp', 254, 66, 67, 'UCP_PG_SOCIAL_CHAT', 'chat', 'ext_pgreca/pgsocial'),
(256, 1, 1, '', 'acp', 32, 330, 339, 'ACP_APS_POINTS', '', ''),
(257, 1, 1, '\\phpbbstudio\\aps\\acp\\main_module', 'acp', 256, 331, 332, 'ACP_APS_MODE_SETTINGS', 'settings', 'ext_phpbbstudio/aps && acl_a_aps_settings'),
(258, 1, 1, '\\phpbbstudio\\aps\\acp\\main_module', 'acp', 256, 333, 334, 'ACP_APS_MODE_DISPLAY', 'display', 'ext_phpbbstudio/aps && acl_a_aps_display'),
(259, 1, 1, '\\phpbbstudio\\aps\\acp\\main_module', 'acp', 256, 335, 336, 'ACP_APS_MODE_POINTS', 'points', 'ext_phpbbstudio/aps && (acl_a_aps_points || acl_a_aps_reasons)'),
(260, 1, 1, '\\phpbbstudio\\aps\\acp\\main_module', 'acp', 256, 337, 338, 'ACP_APS_MODE_LOGS', 'logs', 'ext_phpbbstudio/aps && acl_a_aps_logs'),
(261, 1, 1, '', 'mcp', 0, 75, 82, 'MCP_APS_POINTS', '', ''),
(262, 1, 1, '\\phpbbstudio\\aps\\mcp\\main_module', 'mcp', 261, 76, 77, 'MCP_APS_FRONT', 'front', 'ext_phpbbstudio/aps'),
(263, 1, 1, '\\phpbbstudio\\aps\\mcp\\main_module', 'mcp', 261, 78, 79, 'MCP_APS_CHANGE', 'change', 'ext_phpbbstudio/aps && (acl_m_aps_adjust_custom || acl_m_aps_adjust_reason)'),
(264, 1, 1, '\\phpbbstudio\\aps\\mcp\\main_module', 'mcp', 261, 80, 81, 'MCP_APS_LOGS', 'logs', 'ext_phpbbstudio/aps && acl_u_aps_view_logs'),
(265, 1, 1, '', 'ucp', 0, 69, 70, 'UCP_APS_POINTS', '', 'ext_phpbbstudio/aps'),
(266, 1, 1, '', 'acp', 32, 340, 353, 'ACP_ASS_SYSTEM', '', ''),
(267, 1, 1, '\\phpbbstudio\\ass\\acp\\main_module', 'acp', 266, 341, 342, 'ACP_ASS_OVERVIEW', 'overview', 'ext_phpbbstudio/ass && acl_a_ass_overview'),
(268, 1, 1, '\\phpbbstudio\\ass\\acp\\main_module', 'acp', 266, 343, 344, 'ACP_ASS_SETTINGS', 'settings', 'ext_phpbbstudio/ass && acl_a_ass_settings'),
(269, 1, 1, '\\phpbbstudio\\ass\\acp\\main_module', 'acp', 266, 345, 346, 'ACP_ASS_ITEMS', 'items', 'ext_phpbbstudio/ass && acl_a_ass_items'),
(270, 1, 1, '\\phpbbstudio\\ass\\acp\\main_module', 'acp', 266, 347, 348, 'ACP_ASS_FILES', 'files', 'ext_phpbbstudio/ass && acl_a_ass_files'),
(271, 1, 1, '\\phpbbstudio\\ass\\acp\\main_module', 'acp', 266, 349, 350, 'ACP_ASS_LOGS', 'logs', 'ext_phpbbstudio/ass && acl_a_ass_logs'),
(272, 1, 1, '\\phpbbstudio\\ass\\acp\\main_module', 'acp', 266, 351, 352, 'ACP_ASS_INVENTORY', 'inventory', 'ext_phpbbstudio/ass && acl_a_ass_inventory');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_notifications`
--

CREATE TABLE `phpbb_notifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `notification_type_id` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `item_parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notification_read` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `notification_time` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `notification_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_notifications`
--

INSERT INTO `phpbb_notifications` (`notification_id`, `notification_type_id`, `item_id`, `item_parent_id`, `user_id`, `notification_read`, `notification_time`, `notification_data`) VALUES
(1, 22, 5, 0, 51, 1, 1608736989, 'a:4:{s:9:\"status_id\";i:5;s:7:\"user_id\";i:51;s:9:\"poster_id\";i:2;s:4:\"lang\";s:28:\"NOTIFICATION_SOCIAL_LIKE_ADD\";}'),
(2, 23, 9, 0, 2, 0, 1608739534, 'a:4:{s:9:\"status_id\";i:9;s:7:\"user_id\";i:2;s:9:\"poster_id\";i:51;s:4:\"lang\";s:30:\"NOTIFICATION_SOCIAL_STATUS_ADD\";}'),
(3, 22, 8, 0, 2, 0, 1608739543, 'a:4:{s:9:\"status_id\";i:8;s:7:\"user_id\";i:2;s:9:\"poster_id\";i:51;s:4:\"lang\";s:28:\"NOTIFICATION_SOCIAL_LIKE_ADD\";}'),
(4, 24, 8, 0, 2, 0, 1608739549, 'a:4:{s:9:\"status_id\";i:8;s:7:\"user_id\";i:2;s:9:\"poster_id\";s:2:\"51\";s:4:\"lang\";s:31:\"NOTIFICATION_SOCIAL_COMMENT_ADD\";}'),
(5, 25, 1, 2, 2, 0, 1609690197, 'a:4:{s:15:\"inventory_index\";i:2;s:13:\"category_slug\";s:4:\"book\";s:9:\"item_slug\";s:36:\"con-chim-xanh-bic-bay-v-nguyn-nht-nh\";s:7:\"user_id\";i:2;}'),
(6, 25, 2, 3, 2, 0, 1609690197, 'a:4:{s:15:\"inventory_index\";i:1;s:13:\"category_slug\";s:4:\"book\";s:9:\"item_slug\";s:9:\"thi-toeic\";s:7:\"user_id\";i:2;}'),
(7, 25, 3, 4, 2, 0, 1609690197, 'a:4:{s:15:\"inventory_index\";i:1;s:13:\"category_slug\";s:4:\"book\";s:9:\"item_slug\";s:6:\"truyen\";s:7:\"user_id\";i:2;}'),
(8, 26, 1, 0, 51, 0, 1609691676, 'a:4:{s:4:\"name\";s:3:\"VND\";s:6:\"reason\";s:51:\"Nạp tiền<br />thưỡng cho các hoạt động\";s:9:\"moderator\";s:68:\"<span style=\"color: #AA0000;\" class=\"username-coloured\">admin</span>\";s:12:\"moderator_id\";i:2;}'),
(9, 26, 2, 0, 2, 0, 1609755855, 'a:4:{s:4:\"name\";s:3:\"VND\";s:6:\"reason\";s:22:\"Xóa<br />tẩy sạch\";s:9:\"moderator\";s:68:\"<span style=\"color: #AA0000;\" class=\"username-coloured\">admin</span>\";s:12:\"moderator_id\";i:2;}'),
(10, 26, 3, 0, 2, 0, 1609755882, 'a:4:{s:4:\"name\";s:3:\"VND\";s:6:\"reason\";s:22:\"Xóa<br />tẩy sạch\";s:9:\"moderator\";s:68:\"<span style=\"color: #AA0000;\" class=\"username-coloured\">admin</span>\";s:12:\"moderator_id\";i:2;}'),
(12, 1, 15, 2, 2, 1, 1609836524, 'a:4:{s:9:\"poster_id\";s:2:\"51\";s:11:\"topic_title\";s:52:\"Review Sách Loài Plastic - Khi Nhựa Trỗi Dậy\";s:13:\"post_username\";s:0:\"\";s:10:\"forum_name\";s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(13, 2, 15, 2, 51, 0, 1609836935, 'a:4:{s:9:\"poster_id\";s:2:\"51\";s:11:\"topic_title\";s:52:\"Review Sách Loài Plastic - Khi Nhựa Trỗi Dậy\";s:13:\"post_username\";s:0:\"\";s:10:\"forum_name\";s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(15, 20, 18, 2, 2, 0, 1609843939, 'a:4:{s:9:\"poster_id\";i:51;s:11:\"topic_title\";s:85:\"Review nghệ thuật truyền đạt, bí quyết thành công của người Nhật\";s:13:\"post_username\";s:0:\"\";s:10:\"forum_name\";s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(16, 22, 0, 0, 0, 0, 1609849365, 'a:4:{s:9:\"status_id\";i:0;s:7:\"user_id\";i:0;s:9:\"poster_id\";i:2;s:4:\"lang\";s:28:\"NOTIFICATION_SOCIAL_LIKE_ADD\";}'),
(17, 1, 17, 2, 2, 1, 1609843536, 'a:4:{s:9:\"poster_id\";s:2:\"51\";s:11:\"topic_title\";s:70:\"Review Hoàng Tử Bé - Triết lý về tình yêu và cuộc sống\";s:13:\"post_username\";s:0:\"\";s:10:\"forum_name\";s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}'),
(18, 2, 17, 2, 51, 0, 1609918614, 'a:4:{s:9:\"poster_id\";s:2:\"51\";s:11:\"topic_title\";s:70:\"Review Hoàng Tử Bé - Triết lý về tình yêu và cuộc sống\";s:13:\"post_username\";s:0:\"\";s:10:\"forum_name\";s:28:\"THƯ VIỆN THÔNG TIN SÁCH\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_notification_emails`
--

CREATE TABLE `phpbb_notification_emails` (
  `notification_type_id` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_notification_types`
--

CREATE TABLE `phpbb_notification_types` (
  `notification_type_id` smallint(4) UNSIGNED NOT NULL,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_notification_types`
--

INSERT INTO `phpbb_notification_types` (`notification_type_id`, `notification_type_name`, `notification_type_enabled`) VALUES
(1, 'notification.type.topic', 1),
(2, 'notification.type.approve_topic', 1),
(3, 'notification.type.quote', 1),
(4, 'notification.type.bookmark', 1),
(5, 'notification.type.post', 1),
(6, 'notification.type.approve_post', 1),
(7, 'gfksx.thanksforposts.notification.type.thanks', 1),
(8, 'gfksx.thanksforposts.notification.type.thanks_remove', 1),
(9, 'notification.type.group_request', 1),
(10, 'notification.type.admin_activate_user', 1),
(11, 'notification.type.disapprove_post', 1),
(12, 'notification.type.disapprove_topic', 1),
(13, 'notification.type.group_request_approved', 1),
(14, 'notification.type.pm', 1),
(15, 'notification.type.post_in_queue', 1),
(16, 'notification.type.report_pm', 1),
(17, 'notification.type.report_pm_closed', 1),
(18, 'notification.type.report_post', 1),
(19, 'notification.type.report_post_closed', 1),
(20, 'notification.type.topic_in_queue', 1),
(21, 'senky.massnotification.notification.type.manual', 1),
(22, 'pgreca.pgsocial.notification.type.social_likes', 1),
(23, 'pgreca.pgsocial.notification.type.social_status', 1),
(24, 'pgreca.pgsocial.notification.type.social_comments', 1),
(25, 'phpbbstudio.ass.notification.type.gift', 1),
(26, 'phpbbstudio.aps.notification.type.adjust', 1),
(27, 'post_in_queue', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_oauth_accounts`
--

CREATE TABLE `phpbb_oauth_accounts` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_oauth_states`
--

CREATE TABLE `phpbb_oauth_states` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_state` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_oauth_tokens`
--

CREATE TABLE `phpbb_oauth_tokens` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pages`
--

CREATE TABLE `phpbb_pages` (
  `page_id` mediumint(8) UNSIGNED NOT NULL,
  `page_title` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_route` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `page_content` mediumtext COLLATE utf8_bin NOT NULL,
  `page_content_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_content_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_content_bbcode_options` int(11) UNSIGNED NOT NULL DEFAULT 7,
  `page_content_allow_html` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `page_display` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `page_display_to_guests` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `page_template` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_icon_font` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_title_switch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_pages`
--

INSERT INTO `phpbb_pages` (`page_id`, `page_title`, `page_description`, `page_route`, `page_order`, `page_content`, `page_content_bbcode_uid`, `page_content_bbcode_bitfield`, `page_content_bbcode_options`, `page_content_allow_html`, `page_display`, `page_display_to_guests`, `page_template`, `page_icon_font`, `page_title_switch`) VALUES
(1, 'NỘI QUY', '', 'noiquy', 0, '<r><COLOR color=\"#0000FF\"><s>[color=#0000FF]</s><B><s>[b]</s>NỘI QUY DIỄN ĐÀN<e>[/b]</e></B><br/>\n<e>[/color]</e></COLOR><B><s>[b]</s>1. Đối tượng áp dụng<e>[/b]</e></B><br/>\nToàn bộ những quy định của bản nội quy này sẽ được thông báo công khai đến mọi thành viên và là căn cứ để xử lý và giải quyết thắc mắc của thành viên. Được áp dụng đối với tất cả thành viên đã đăng ký tài khoản hoạt động tại diễn đàn. Bao gồm:<br/>\n•	Ban quản trị diễn đàn.<br/>\n•	Thành viên diễn đàn<br/>\nNội dung của nội quy có thể thay đổi bất cứ lúc nào mà không cần báo trước.<br/>\n<B><s>[b]</s>2. Quy định về nội dung và hình thức viết bài<br/>\n<e>[/b]</e></B>•	Không sử dụng ngôn ngữ hay hình ảnh thô tục, phản cảm, vi phạm đạo đức, xúc phạm người khác.<br/>\n•	Không phổ biến các loại virus, bom mail hay các hướng dẫn hacking.<br/>\n•	Không được hướng dẫn lừa gạt, các hoạt động vi phạm Pháp Luật.<br/>\n•	Không gây thù hằn, kích động lẫn nhau; không bàn luận các vấn đề mang tính chất tôn giáo, chính trị, tuân thủ Pháp Luật nước Cộng hòa Xã hội Chủ nghĩa Việt Nam.<br/>\n•	Đọc hết các bài viết của chủ đề trước khi trả lời để tránh trả lời lạc đề, phải có tính xây dựng, nội dung trả lời rõ ràng, tránh trả lời không đúng, không chính xác.<br/>\n•	Nghiêm cấm các hình thức lạm dụng diễn đàn để quảng cáo, rao vặt các dịch vụ hoặc sản phẩm tại các chuyên mục trên Diễn đàn mà chưa có sự cho phép của Ban Quản trị. Tất cả các bài thuộc loại này muốn đưa lên Diễn đàn hay trang tin, thành viên phải liên hệ Ban Quản trị để được hỗ trợ, xử lý.<br/>\n•	Mỗi bài viết phải viết bằng tiếng Việt có dấu. Tránh những bài viết nhiều lỗi chính tả, viết không dấu tiếng Việt. Những bài viết này sẽ được nhắc nhở và biên tập lại hoặc bị xóa bỏ mà không cần báo trước.<br/>\n•	Thành viên phải chịu trách nhiệm về nội dung bài viết của mình. BQT sẽ cung cấp những thông tin cần thiết cho cơ quan chức năng khi được yêu cầu.<br/>\n•	Bất kỳ nào cảm thấy một hình ảnh, bài viết có nội dung không lành mạnh hay không phù hợp với diễn đàn thì xin hãy thông báo cho Ban Quản trị biết bằng e-mail hoặc tin nhắn cá nhân. Ban Quản trị sẽ xóa nội dung không lành mạnh trong thời gian sớm nhất nếu chúng tôi xét thấy việc xóa là cần thiết.<br/>\n<B><s>[b]</s>3. Quy định về tên chủ đề (topic)<br/>\n<e>[/b]</e></B>•	Phải ngắn gọn, súc tích, bao gồm nội dung của bài viết để người đọc dễ dàng hiểu qua nội dung khi đọc tên chủ đề (tránh những chủ đề như: Help me, chỉ cho tôi với!! …)<br/>\n•	Chủ đề mới phải nằm trong đúng chuyên mục, đúng tiêu chí của diễn đàn. Không được viết hoa toàn bộ.<br/>\n<B><s>[b]</s>4. Quy định về việc spam bài viết<br/>\n<e>[/b]</e></B>Các bài viết mang tính chất spam sẽ bị nhắc nhở, xóa bài, khóa tài khoản… tùy mức độ.<br/>\n•	Bài chỉ có mấy từ cụt lủn mang tính chất cảm thán: đồng ý, điên, khùng, chán…<br/>\n•	Bài chỉ có biểu tượng biểu hiện cảm xúc (emotion icon).<br/>\n•	Nhiều chủ đề có cùng nội dung (kể cả trong trường hợp dùng nhiều nick để gửi và hình thức có thể thay đổi một chút cho khác, nhưng vẫn mang cùng một nội dung).<br/>\n•	Bài trả lời lạc chủ đề, chen ngang vào cuộc thảo luận.<br/>\n•	Bài mang tính chất chat, trao đổi cá nhân, buôn chuyện không thảo luận về chủ đề chung.<br/>\n•	Bài viết sai chính tả quá nhiều, sử dụng ngôn ngữ chat, ngôn từ xúc phạm thành viên khác.<br/>\n<B><s>[b]</s>5. Quy định về xử lý vi phạm nội quy<br/>\n<e>[/b]</e></B>•	Bất cứ thành viên nào của Diễn đàn vi phạm quy định được nêu sẽ bị phạt<br/>\n•	Hình thức xử phạt: Nhắc nhở, sửa bài, di chuyển bài, khóa bài, xóa bài. Khóa thành viên, cấm hoạt động một thời gian, hoặc xóa thành viên vĩnh viễn.<br/>\n•	Trong phạm vi quyền hạn của mình, Ban Quản trị diễn đàn có quyền thực hiện các quy định xử phạt trên.<br/>\n<B><s>[b]</s>6. Quy định quản lý thành viên<br/>\n<e>[/b]</e></B>•	Quy định về chữ ký<br/>\no	Nên tạo chữ ký ngắn gọn, kích thước cho toàn bộ khung chữ ký về chiều ngang không được vượt quá độ rộng bình thường của trang diễn đàn, không được vượt quá 5 dòng chữ (tính dòng trống).<br/>\no	Chữ ký không chứa hình ảnh.<br/>\n•	Tuân thủ các điều khoản có liên quan trong Quy định chung.<br/>\n•	Không được đăng ký định danh (nick, username) trùng với các Điều hành viên, Quản trị viên dưới mọi hình thức.<br/>\n•	Thành viên không được đăng ký hơn 01 định danh (nick, username) trên diễn đàn.</r>', '', '', 7, 0, 1, 1, 'pages_default.html', '', 1),
(6, 'CREATE MEETING', '', 'create-meeting', 0, '<r>&lt;!-- Copy and Paste Me --&gt;<br/>\n&lt;div class=\"glitch-embed-wrap\" style=\"height: 420px; width: 100%;\"&gt;<br/>\n  &lt;iframe<br/>\n    src=\"<URL url=\"https://glitch.com/embed/#!/embed/phpbb?path=index.html&amp;previewSize=100&amp;attributionHidden=true\"><LINK_TEXT text=\"https://glitch.com/embed/#!/embed/phpbb ... idden=true\">https://glitch.com/embed/#!/embed/phpbb?path=index.html&amp;previewSize=100&amp;attributionHidden=true</LINK_TEXT></URL>\"<br/>\n    title=\"phpbb on Glitch\"<br/>\n    allow=\"geolocation; microphone; camera; midi; vr; encrypted-media\"<br/>\n    style=\"height: 100%; width: 100%; border: 0;\"&gt;<br/>\n  &lt;/iframe&gt;<br/>\n&lt;/div&gt;</r>', '', '', 7, 0, 1, 1, 'pages_default.html', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pages_links`
--

CREATE TABLE `phpbb_pages_links` (
  `page_link_id` mediumint(8) UNSIGNED NOT NULL,
  `page_link_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_link_event_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_pages_links`
--

INSERT INTO `phpbb_pages_links` (`page_link_id`, `page_link_location`, `page_link_event_name`) VALUES
(1, 'NAV_BAR_LINKS_BEFORE', 'overall_header_navigation_prepend'),
(2, 'NAV_BAR_LINKS_AFTER', 'overall_header_navigation_append'),
(3, 'NAV_BAR_CRUMBS_BEFORE', 'overall_header_breadcrumbs_before'),
(4, 'NAV_BAR_CRUMBS_AFTER', 'overall_header_breadcrumbs_after'),
(5, 'FOOTER_TIMEZONE_BEFORE', 'overall_footer_timezone_before'),
(6, 'FOOTER_TIMEZONE_AFTER', 'overall_footer_timezone_after'),
(7, 'FOOTER_TEAMS_BEFORE', 'overall_footer_teamlink_before'),
(8, 'FOOTER_TEAMS_AFTER', 'overall_footer_teamlink_after'),
(9, 'QUICK_LINK_MENU_BEFORE', 'navbar_header_quick_links_before'),
(10, 'QUICK_LINK_MENU_AFTER', 'navbar_header_quick_links_after');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pages_pages_links`
--

CREATE TABLE `phpbb_pages_pages_links` (
  `page_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `page_link_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_pages_pages_links`
--

INSERT INTO `phpbb_pages_pages_links` (`page_id`, `page_link_id`) VALUES
(1, 9),
(6, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pg_social_chat`
--

CREATE TABLE `phpbb_pg_social_chat` (
  `chat_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `chat_text` mediumtext COLLATE utf8_bin NOT NULL,
  `chat_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `chat_member` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `chat_status` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `chat_read` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_options` tinyint(1) UNSIGNED NOT NULL DEFAULT 7
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_pg_social_chat`
--

INSERT INTO `phpbb_pg_social_chat` (`chat_id`, `user_id`, `chat_text`, `chat_time`, `chat_member`, `chat_status`, `chat_read`, `bbcode_bitfield`, `bbcode_uid`, `bbcode_options`) VALUES
(1, 2, '<t>m</t>', 1608723134, 51, 1, 1, '', '', 7),
(2, 2, '<t>hello , iam admin</t>', 1608723154, 51, 1, 1, '', '', 7),
(3, 2, '<r><E>:)</E></r>', 1608737909, 51, 1, 1, '', '', 7),
(4, 51, '<t>toi day</t>', 1609836888, 2, 1, 1, '', '', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pg_social_gallery`
--

CREATE TABLE `phpbb_pg_social_gallery` (
  `gallery_id` int(11) UNSIGNED NOT NULL,
  `gallery_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `gallery_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `gallery_privacy` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_pg_social_gallery`
--

INSERT INTO `phpbb_pg_social_gallery` (`gallery_id`, `gallery_name`, `user_id`, `gallery_time`, `gallery_privacy`) VALUES
(1, '<t>???nh m???i</t>', 2, 1609917468, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pg_social_pages`
--

CREATE TABLE `phpbb_pg_social_pages` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `page_type` tinyint(2) NOT NULL DEFAULT 0,
  `page_status` tinyint(1) NOT NULL DEFAULT 0,
  `page_founder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `page_regdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `page_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_cover` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_cover_position` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_about` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pg_social_pages_like`
--

CREATE TABLE `phpbb_pg_social_pages_like` (
  `page_like_ID` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `page_like_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pg_social_photos`
--

CREATE TABLE `phpbb_pg_social_photos` (
  `photo_id` int(11) UNSIGNED NOT NULL,
  `photo_where` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `gallery_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `album_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `photo_file` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `photo_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `photo_privacy` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_pg_social_photos`
--

INSERT INTO `phpbb_pg_social_photos` (`photo_id`, `photo_where`, `gallery_id`, `album_id`, `user_id`, `photo_file`, `photo_time`, `photo_privacy`) VALUES
(1, 0, 0, 3, 2, 'photo_wall_1608618120.webp', 1608618120, 1),
(2, 0, 0, 2, 2, 'photo_cover_1608618215.webp', 1608618215, 2),
(3, 0, 0, 1, 2, 'photo_avatar_1608618284.webp', 1608618284, 2),
(4, 0, 0, 1, 2, 'photo_avatar_1608618292.webp', 1608618292, 2),
(5, 0, 0, 1, 2, 'photo_avatar_1608618708.webp', 1608618708, 2),
(6, 0, 0, 1, 2, 'photo_avatar_1608619826.webp', 1608619826, 2),
(7, 0, 0, 1, 2, 'photo_avatar_1608619846.webp', 1608619846, 2),
(8, 0, 0, 2, 51, 'photo_cover_1608620403.webp', 1608620403, 2),
(9, 0, 0, 1, 51, 'photo_avatar_1608620438.webp', 1608620438, 2),
(10, 0, 0, 3, 2, 'photo_wall_1608718717.webp', 1608718717, 1),
(11, 0, 0, 1, 2, 'photo_avatar_1608718909.webp', 1608718909, 2),
(12, 0, 0, 3, 2, 'photo_wall_1608723733.webp', 1608723733, 1),
(13, 0, 0, 3, 2, 'photo_wall_1608739633.webp', 1608739633, 1),
(14, 0, 0, 3, 2, 'photo_wall_1609761786.webp', 1609761786, 1),
(15, 0, 0, 2, 2, 'photo_cover_1609762828.webp', 1609762828, 2),
(16, 0, 0, 3, 52, 'photo_wall_1609846614.webp', 1609846614, 1),
(17, 0, 0, 3, 2, 'photo_wall_1609917416.webp', 1609917416, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pg_social_wall_comment`
--

CREATE TABLE `phpbb_pg_social_wall_comment` (
  `post_comment_ID` int(11) UNSIGNED NOT NULL,
  `post_ID` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `message` mediumtext COLLATE utf8_bin NOT NULL,
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_options` tinyint(1) UNSIGNED NOT NULL DEFAULT 7
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_pg_social_wall_comment`
--

INSERT INTO `phpbb_pg_social_wall_comment` (`post_comment_ID`, `post_ID`, `user_id`, `time`, `message`, `bbcode_bitfield`, `bbcode_uid`, `bbcode_options`) VALUES
(1, 8, 2, 1608737546, '<t>hi</t>', '', '', 7),
(2, 8, 51, 1608739548, '<t>de thuong</t>', '', '', 7),
(3, 12, 2, 1609834110, '<t>good</t>', '', '', 7),
(4, 8, 2, 1609849427, '<t>ĐẸP</t>', '', '', 7),
(5, 6, 2, 1609849439, '<t>TEST1</t>', '', '', 7),
(6, 15, 2, 1609917439, '<t>hi</t>', '', '', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pg_social_wall_like`
--

CREATE TABLE `phpbb_pg_social_wall_like` (
  `post_like_ID` int(11) UNSIGNED NOT NULL,
  `post_ID` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `post_like_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_pg_social_wall_like`
--

INSERT INTO `phpbb_pg_social_wall_like` (`post_like_ID`, `post_ID`, `user_id`, `post_like_time`) VALUES
(1, 2, 2, 1608718640),
(2, 5, 2, 1608736988),
(3, 5, 51, 1608739502),
(4, 8, 51, 1608739543),
(5, 5, 49, 1609248446),
(6, 6, 2, 1609849377),
(7, 8, 2, 1609849413),
(8, 15, 2, 1609917432);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_pg_social_wall_post`
--

CREATE TABLE `phpbb_pg_social_wall_post` (
  `post_ID` int(11) UNSIGNED NOT NULL,
  `post_parent` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `post_where` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `wall_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `message` mediumtext COLLATE utf8_bin NOT NULL,
  `time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `post_privacy` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `post_type` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `post_extra` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_options` tinyint(1) UNSIGNED NOT NULL DEFAULT 7,
  `tagged_user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_pg_social_wall_post`
--

INSERT INTO `phpbb_pg_social_wall_post` (`post_ID`, `post_parent`, `post_where`, `wall_id`, `user_id`, `message`, `time`, `post_privacy`, `post_type`, `post_extra`, `bbcode_bitfield`, `bbcode_uid`, `bbcode_options`, `tagged_user`) VALUES
(1, 0, 0, 2, 2, '<t>it me</t>', 1608618121, 1, 3, '1', '', '', 7, ''),
(2, 0, 0, 2, 2, '', 1608619826, 2, 1, '6', '', '', 0, ''),
(3, 0, 0, 2, 2, '', 1608619848, 2, 1, '7', '', '', 0, ''),
(4, 0, 0, 51, 51, '', 1608620404, 2, 2, '8', '', '', 0, ''),
(5, 0, 0, 51, 51, '', 1608620438, 2, 1, '9', '', '', 0, ''),
(6, 0, 0, 2, 2, '<t>my page</t>', 1608718721, 1, 3, '10', '', '', 7, ''),
(7, 0, 0, 2, 2, '', 1608718909, 2, 1, '11', '', '', 0, ''),
(8, 0, 0, 2, 2, '<t>chao</t>', 1608723734, 1, 3, '12', '', '', 7, ''),
(9, 0, 0, 2, 51, '<t>Welcome</t>', 1608739532, 1, 0, '', '', '', 7, ''),
(11, 0, 0, 49, 49, '<t>https://www.facebook.com/doanhoitvtth</t>', 1609248432, 1, 0, '', '', '', 7, ''),
(12, 0, 0, 2, 2, '<t>Xin chào các thành viên trên diễn đàn “Trạm Sách” của chúng tôi, cảm ơn các bạn trong suốt thời gian vừa qua đã ủng hộ chúng tôi để diễn đàn có thể hoạt động tốt hơn và phát triển như ngày nay.<br/>\nĐể ghi nhận sự đóng góp tích cực của các thành viên, diễn đàn chúng tôi tạo ra các mức rank phân cấp cho các thành viên để các bạn có thể hưởng được những lợi ích từ việc tham gia diễn đàn.<br/>\n* Các mức rank cụ thể như sau:<br/>\n- Rank 1: Đồng =&gt; Đạt từ 10 bài viết được duyệt trên diễn đàn<br/>\n- Rank 2: Bạc 50 =&gt; Đạt từ 50 bài viết được duyệt trên diễn đàn<br/>\n- Rank 3: Vàng 100 =&gt; Đạt từ 100 bài viết được duyệt trên diễn đàn<br/>\n- Rank 4: Kim cương 200 =&gt; Đạt từ 200 bài viết được duyệt trên diễn đàn<br/>\n- Rank 5: Cao thủ 300 =&gt; Đạt từ 300 bài viết được duyệt trên diễn đàn<br/>\n* Đặc biệt: Khi thành viên đạt mức rank 4 trở lên thì các bạn sẽ được đặc quyền tham gia chuyên mục nâng cao tại diễn đàn với các chia sẻ từ các chuyên gia về review có uy tín như các tác giả nổi tiếng, những người có tầm ảnh hưởng đến giới trẻ hiện nay.<br/>\nChúc các bạn thành công!</t>', 1609761788, 1, 3, '14', '', '', 7, ''),
(13, 0, 0, 2, 2, '<t>Chào mừng các thành viên mới</t>', 1609834086, 1, 0, '', '', '', 7, ''),
(14, 0, 0, 52, 52, '<t>JACK</t>', 1609846614, 1, 3, '16', '', '', 7, ''),
(15, 0, 0, 2, 2, '<t>Diễn đàn Trạm Sách</t>', 1609917417, 1, 3, '17', '', '', 7, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_poll_options`
--

CREATE TABLE `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_poll_votes`
--

CREATE TABLE `phpbb_poll_votes` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `poll_option_id` tinyint(4) NOT NULL DEFAULT 0,
  `vote_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_posts`
--

CREATE TABLE `phpbb_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `post_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `post_edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `post_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `post_edit_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `post_visibility` tinyint(3) NOT NULL DEFAULT 0,
  `post_delete_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_posts`
--

INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`, `post_visibility`, `post_delete_time`, `post_delete_reason`, `post_delete_user`) VALUES
(1, 1, 2, 2, 0, '::1', 1603785223, 0, 1, 1, 1, 1, '', 'Welcome to phpBB3', '<t>This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!</t>', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(2, 2, 2, 2, 0, '::1', 1603789290, 0, 1, 1, 1, 1, '', 'REVIEW SÁCH', '<t>Quy luật 3 lần: TỬ TẾ LÀ TỬ TẾ MÀ NGỐC NGHẾCH LÀ NGỐC NGHẾCH<br/>\n- Khi bạn hỏi ai đó một chuyện gì, quá 3 tin nhắn họ chưa trả lời tức là họ không muốn trả lời. <br/>\n- Một người được nhờ bạn giúp không công 3 lần, lần thứ 4 trở đi là lợi dụng.<br/>\n- Vị khách mặc cả quá 3 lần chắc chắn không có tiền. Vị khách 3 lần dùng quan hệ bạn bè với bạn để ép giá thì không phải là khách cũng không phải là bạn.<br/>\n- Bạn có thể xuống nước 3 lần để níu kéo một mối quan hệ mà bạn thấy quan trọng. Đến lần thứ 3 làm ơn dẹp đi.<br/>\n- Mỗi biến cố trong đời đều không nên có quá 3 người biết. Mỗi thành tựu trong đời chỉ cần tối đa 3 người chúc mừng.<br/>\n- Sau 3 lần nhắc nhở bạn về kỉ luật, người ta có ghét bạn ra mặt thì cũng không phải lỗi của họ.<br/>\n- Việc gì trì hoãn quá 3 lần đều không tốt.<br/>\n- Chúng ta không có nghĩa vụ phải dạy dỗ ai trưởng thành hết. Ngoài con cái của bạn ra, những người không phải ruột thịt, cứ 3 năm 1 lần bạn hãy xem lại mối quan hệ có tiến triển gì không, người đó có bản lĩnh, có hiểu biết hơn không, có vững chãi, đáng tin cậy hơn không, so với sự phát triển của bạn có còn phù hợp, có cùng tầng mây không, rồi quyết định có đi cùng nhau nữa hay không.<br/>\n- Đi muộn quá 3 lần trong tháng thì đừng kêu về tiền phạt. Một người cao su tới 3 lần là kỷ luật yếu kém.<br/>\n- Thất hứa một lần là sơ suất, thất hứa 2 lần là tuổi trẻ, thất hứa 3 lần là không có năng lực.<br/>\n- Một người làm phật ý bạn tới 3 lần trong một tháng thì tính cách người đó quá khó chịu hoặc là tính cách của bạn quá khó ở.<br/>\n- Tích đủ 3 lần vắng mặt trong hoạn nạn, người yêu trở thành người dưng.<br/>\n- Nếu bạn muốn thoát khỏi một mối quan hệ hoặc một công việc tồi tệ, hãy kể ra 3 lần những thứ đó làm bạn kiệt quệ, có trên 3 người  khách quan đồng ý với bạn thì bạn có thể đi ngẩng cao đầu. Giới hạn chịu đựng của một người với một yếu tố ngoại cảnh là 3 lần. Tích đủ 3 lần và 3 người ủng hộ, không ai có quyền nói bạn thiếu bản lĩnh.<br/>\nSưu tầm Internet<br/>\nHình ảnh có thể có: văn bản<br/>\n<br/>\n99<br/>\n7 lượt chia sẻ<br/>\nThích<br/>\nBình luận<br/>\nChia sẻ</t>', '315285c9678384bf6e19c2cfa333a7e1', 1, '', '43s06a', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(3, 3, 2, 2, 0, '::1', 1603859751, 0, 1, 1, 1, 1, '', 'TEST', '<r>chao <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E></r>', '761ca12d4c463ee21286818ae61fab45', 0, '', '1l70ea1', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(4, 4, 2, 2, 0, '::1', 1603871352, 0, 1, 1, 1, 1, '', 'Nanh Trang', '<r><URL url=\"https://postimg.cc/z3ptm7cr\"><s>[url=https://postimg.cc/z3ptm7cr]</s><IMG src=\"https://i.postimg.cc/z3ptm7cr/Untitled.png\"><s>[img]</s>https://i.postimg.cc/z3ptm7cr/Untitled.png<e>[/img]</e></IMG><e>[/url]</e></URL></r>', '0c43bd7e6f5b7c8a087b90ccf69c6c2d', 0, '', '1hbxwnie', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(5, 5, 2, 2, 0, '::1', 1603942302, 0, 1, 1, 1, 1, '', '1.	Tâm lý – Kỹ năng sống:', '<r>1.1.	Đời đơn giản khi chúng ta đơn giản:<br/>\nTa lớn lên trong một thế giới do não trái định hướng. Não trái thích xác định sự tồn tại của các quy định hiện hành, phù hợp với các quy tắc và chuyên mục đó, nhưng nó không phù hợp với các khả năng mới phát sinh. Bạn không thể biết điều gì sẽ xảy ra, hoặc những cơ hội nào sẽ phát sinh, cho đến khi bạn đến được thời điểm đó. Bạn có thể lên hết kế hoạch này đến kế hoạch khác, nhưng đơn giản không có cách nào để biết mọi việc sẽ ra sao. Chắc chắn, bạn có thể liên tục điều chỉnh kế hoạch dựa trên thay đổi hoàn cảnh... nhưng vậy thì, ý nghĩa của kế hoạch là gì?<br/>\nKhông có kế hoạch nào, chỉ việc thưởng thức những gì đang làm, làm hết sức có thể, và xem chuyện gì phát sinh. Đây là một cách tiếp cận hoàn toàn khác cách nhiều người vẫn làm. Điều này không có nghĩa là sẽ thiếu động lực để làm hết sức mình – cũng không có nghĩa là bạn giữ thái độ thiếu nhiệt tình với công việc. Mà nó có nghĩa là bạn được thúc đẩy bởi công việc, bạn tận hưởng các hoạt động, chứ không phải được thúc đẩy bởi mục tiêu, điểm đến hoặc kết quả.<br/>\n<br/>\n<URL url=\"https://postimg.cc/grPhwpyv\"><s>[url=https://postimg.cc/grPhwpyv]</s><IMG src=\"https://i.postimg.cc/grPhwpyv/Picture1.jpg\"><s>[img]</s>https://i.postimg.cc/grPhwpyv/Picture1.jpg<e>[/img]</e></IMG><e>[/url]</e></URL></r>', '0d083a61a74e5726de3762ac0dc7813f', 0, '', '9ndml', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(6, 6, 8, 2, 0, '::1', 1609762369, 0, 1, 1, 1, 1, '', '[Thông báo] Tính năng Rank', '<r>-Xin chào các thành viên trên diễn đàn “Trạm Sách” của chúng tôi, cảm ơn các bạn trong suốt thời gian vừa qua đã ủng hộ chúng tôi để diễn đàn có thể hoạt động tốt hơn và phát triển như ngày nay.<br/>\n-Để ghi nhận sự đóng góp tích cực của các thành viên, diễn đàn chúng tôi tạo ra các mức rank phân cấp cho các thành viên để các bạn có thể hưởng được những lợi ích từ việc tham gia diễn đàn.<br/>\n<B><s>[b]</s>* Các mức rank cụ thể như sau:<br/>\n<e>[/b]</e></B><br/>\n- Rank 1: Đồng =&gt; Đạt từ 10 bài viết được duyệt trên diễn đàn<br/>\n- Rank 2: Bạc 50 =&gt; Đạt từ 50 bài viết được duyệt trên diễn đàn<br/>\n- Rank 3: Vàng 100 =&gt; Đạt từ 100 bài viết được duyệt trên diễn đàn<br/>\n- Rank 4: Kim cương 200 =&gt; Đạt từ 200 bài viết được duyệt trên diễn đàn<br/>\n- Rank 5: Cao thủ 300 =&gt; Đạt từ 300 bài viết được duyệt trên diễn đàn<br/>\n<B><s>[b]</s>* Đặc biệt:<e>[/b]</e></B> Khi thành viên đạt mức rank 4 trở lên thì các bạn sẽ được đặc quyền tham gia chuyên mục nâng cao tại diễn đàn với các chia sẻ từ các chuyên gia về review có uy tín như các tác giả nổi tiếng, những người có tầm ảnh hưởng đến giới trẻ hiện nay.<br/>\nChúc các bạn thành công!<br/>\n<br/>\n<br/>\n<URL url=\"https://postimg.cc/p5HSm7xk\"><s>[url=https://postimg.cc/p5HSm7xk]</s><IMG src=\"https://i.postimg.cc/p5HSm7xk/hinh-anh-dep-ve-quyen-sach-12.jpg\"><s>[img]</s>https://i.postimg.cc/p5HSm7xk/hinh-anh-dep-ve-quyen-sach-12.jpg<e>[/img]</e></IMG><e>[/url]</e></URL></r>', '5543b3861702f17bd0c07ab3b85c6206', 0, '', '1jwzen9', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(7, 7, 8, 2, 0, '::1', 1609762385, 0, 1, 1, 1, 1, '', '[Thông báo] Tính năng Rank', '<r>-Xin chào các thành viên trên diễn đàn “Trạm Sách” của chúng tôi, cảm ơn các bạn trong suốt thời gian vừa qua đã ủng hộ chúng tôi để diễn đàn có thể hoạt động tốt hơn và phát triển như ngày nay.<br/>\n-Để ghi nhận sự đóng góp tích cực của các thành viên, diễn đàn chúng tôi tạo ra các mức rank phân cấp cho các thành viên để các bạn có thể hưởng được những lợi ích từ việc tham gia diễn đàn.<br/>\n<B><s>[b]</s>* Các mức rank cụ thể như sau:<br/>\n<e>[/b]</e></B><br/>\n- Rank 1: Đồng =&gt; Đạt từ 10 bài viết được duyệt trên diễn đàn<br/>\n- Rank 2: Bạc 50 =&gt; Đạt từ 50 bài viết được duyệt trên diễn đàn<br/>\n- Rank 3: Vàng 100 =&gt; Đạt từ 100 bài viết được duyệt trên diễn đàn<br/>\n- Rank 4: Kim cương 200 =&gt; Đạt từ 200 bài viết được duyệt trên diễn đàn<br/>\n- Rank 5: Cao thủ 300 =&gt; Đạt từ 300 bài viết được duyệt trên diễn đàn<br/>\n<B><s>[b]</s>* Đặc biệt:<e>[/b]</e></B> Khi thành viên đạt mức rank 4 trở lên thì các bạn sẽ được đặc quyền tham gia chuyên mục nâng cao tại diễn đàn với các chia sẻ từ các chuyên gia về review có uy tín như các tác giả nổi tiếng, những người có tầm ảnh hưởng đến giới trẻ hiện nay.<br/>\nChúc các bạn thành công!<br/>\n<br/>\n<br/>\n<URL url=\"https://postimg.cc/p5HSm7xk\"><s>[url=https://postimg.cc/p5HSm7xk]</s><IMG src=\"https://i.postimg.cc/p5HSm7xk/hinh-anh-dep-ve-quyen-sach-12.jpg\"><s>[img]</s>https://i.postimg.cc/p5HSm7xk/hinh-anh-dep-ve-quyen-sach-12.jpg<e>[/img]</e></IMG><e>[/url]</e></URL></r>', '5543b3861702f17bd0c07ab3b85c6206', 0, '', 'y3m59l', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(8, 8, 8, 2, 0, '::1', 1609762431, 0, 1, 1, 1, 1, '', '[Thông báo] Tính năng Rank', '<r>-Xin chào các thành viên trên diễn đàn “Trạm Sách” của chúng tôi, cảm ơn các bạn trong suốt thời gian vừa qua đã ủng hộ chúng tôi để diễn đàn có thể hoạt động tốt hơn và phát triển như ngày nay.<br/>\n-Để ghi nhận sự đóng góp tích cực của các thành viên, diễn đàn chúng tôi tạo ra các mức rank phân cấp cho các thành viên để các bạn có thể hưởng được những lợi ích từ việc tham gia diễn đàn.<br/>\n *Các mức rank cụ thể như sau:<br/>\n- Rank 1: Đồng =&gt; Đạt từ 10 bài viết được duyệt trên diễn đàn<br/>\n- Rank 2: Bạc 50 =&gt; Đạt từ 50 bài viết được duyệt trên diễn đàn<br/>\n- Rank 3: Vàng 100 =&gt; Đạt từ 100 bài viết được duyệt trên diễn đàn<br/>\n- Rank 4: Kim cương 200 =&gt; Đạt từ 200 bài viết được duyệt trên diễn đàn<br/>\n- Rank 5: Cao thủ 300 =&gt; Đạt từ 300 bài viết được duyệt trên diễn đàn<br/>\n* Đặc biệt: Khi thành viên đạt mức rank 4 trở lên thì các bạn sẽ được đặc quyền tham gia chuyên mục nâng cao tại diễn đàn với các chia sẻ từ các chuyên gia về review có uy tín như các tác giả nổi tiếng, những người có tầm ảnh hưởng đến giới trẻ hiện nay.<br/>\nChúc các bạn thành công!<br/>\n<br/>\n<br/>\n<URL url=\"https://postimg.cc/p5HSm7xk\"><s>[url=https://postimg.cc/p5HSm7xk]</s><IMG src=\"https://i.postimg.cc/p5HSm7xk/hinh-anh-dep-ve-quyen-sach-12.jpg\"><s>[img]</s>https://i.postimg.cc/p5HSm7xk/hinh-anh-dep-ve-quyen-sach-12.jpg<e>[/img]</e></IMG><e>[/url]</e></URL></r>', 'cbfb9f981e632aa198e1bf84769e2a57', 0, '', '3rjje6', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(10, 10, 2, 2, 0, '::1', 1609762572, 0, 1, 1, 1, 1, '', '[Thông báo] Tính năng Rank', '<t>Xin chào các thành viên trên diễn đàn “Trạm Sách” của chúng tôi, cảm ơn các bạn trong suốt thời gian vừa qua đã ủng hộ chúng tôi để diễn đàn có thể hoạt động tốt hơn và phát triển như ngày nay.<br/>\nĐể ghi nhận sự đóng góp tích cực của các thành viên, diễn đàn chúng tôi tạo ra các mức rank phân cấp cho các thành viên để các bạn có thể hưởng được những lợi ích từ việc tham gia diễn đàn.<br/>\n* Các mức rank cụ thể như sau:<br/>\n- Rank 1: Đồng =&gt; Đạt từ 10 bài viết được duyệt trên diễn đàn<br/>\n- Rank 2: Bạc 50 =&gt; Đạt từ 50 bài viết được duyệt trên diễn đàn<br/>\n- Rank 3: Vàng 100 =&gt; Đạt từ 100 bài viết được duyệt trên diễn đàn<br/>\n- Rank 4: Kim cương 200 =&gt; Đạt từ 200 bài viết được duyệt trên diễn đàn<br/>\n- Rank 5: Cao thủ 300 =&gt; Đạt từ 300 bài viết được duyệt trên diễn đàn<br/>\n* Đặc biệt: Khi thành viên đạt mức rank 4 trở lên thì các bạn sẽ được đặc quyền tham gia chuyên mục nâng cao tại diễn đàn với các chia sẻ từ các chuyên gia về review có uy tín như các tác giả nổi tiếng, những người có tầm ảnh hưởng đến giới trẻ hiện nay.<br/>\nChúc các bạn thành công!</t>', '811158d1d36c7e65518979edb87d9d2e', 0, '', '5y5w07tf', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(11, 11, 2, 2, 0, '::1', 1609835541, 0, 1, 1, 1, 1, '', 'Review Nói ra đừng sợ - Kỹ năng thuyết trình cho người mới bắt đầu', '<r>Để có thể dễ dàng hơn trong công việc và cuộc sống thì có lẽ việc trau dồi những kỹ năng mềm là một trong những điều chúng ta không thể bỏ qua. Ngày nay việc nói hoặc thuyết trình trước đám đông rất phổ biến nhưng cũng là nỗi sợ của rất nhiều người, họ không thể vượt qua và chinh phục được thuyết trình trước đám đông. Nếu như vẫn không biết cách rèn luyện kỹ năng này như thế nào thì đã đến lúc bạn nên tìm đến cuốn sách “Nói ra đừng sợ - Kỹ năng thuyết trình cho người mới bắt đầu”.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/noi-ra-dung-so-ky-nang-thuyet-trinh-cho-nguoi-moi-bat-dau-0.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/noi-ra-dung-so-ky-nang-thuyet-trinh-cho-nguoi-moi-bat-dau-0.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/n ... -dau-0.jpg\">https://sachhay24h.com/uploads/images/noi-ra-dung-so-ky-nang-thuyet-trinh-cho-nguoi-moi-bat-dau-0.jpg</LINK_TEXT></URL><e>[/img]</e></IMG><br/>\nLý do bạn nên chọn cuốn sách này<br/>\nBẠN CÓ BIẾT?<br/>\n<br/>\nLời nói có thể giúp cho một bạn trẻ đang chán nản trở nên yêu đời và sống có ích hơn.<br/>\nLời nói có thể giúp cho một nhà quản lý có thiện cảm với nhân viên của mình hơn.<br/>\n<br/>\n <br/>\nLời nói có thể giúp cho việc truyền đạt kiến thức của thầy cô đến với học trò trọn vẹn hơn.<br/>\n<br/>\n <br/>\nLời nói có thể giúp các bạn sinh viên có một bài thuyết trình cuốn hút hơn.<br/>\nLời nói có thể giúp bạn dễ dàng đạt được các mục tiêu của mình hơn.<br/>\nĐằng sau mỗi một người thành công luôn là một câu chuyện rất dài, để đạt được những đỉnh cao mà bạn muốn chinh phục thì việc rèn luyện chắc chắn là điều mà bạn không thể bỏ qua trên từng hành trình. Để việc thuyết trình trở nên tốt hơn, lời nói của bạn có trọng lượng hơn thì hẳn bạn cũng phải có một quá trình rất dài để luyện tập. Và để luyện tập những gì ? Phải chuẩn bị những gì trước khi thuyết trình thì cuốn sách này sẽ giúp bạn giải đáp những thắc mắc.<br/>\n<br/>\nBạn sẽ không trở thành người có thể thuyết trình giỏi ngay sau khi đọc xong cuốn sách này nhưng đây chắc chắn sẽ là những bước đầu cùng hướng dẫn để bạn không bị lạc hướng và luyện tập đúng trọng tâm cho việc thuyết trình trở nên dễ dàng hơn.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/noi-ra-dung-so-ky-nang-thuyet-trinh-cho-nguoi-moi-bat-dau.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/noi-ra-dung-so-ky-nang-thuyet-trinh-cho-nguoi-moi-bat-dau.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/n ... at-dau.jpg\">https://sachhay24h.com/uploads/images/noi-ra-dung-so-ky-nang-thuyet-trinh-cho-nguoi-moi-bat-dau.jpg</LINK_TEXT></URL><e>[/img]</e></IMG></r>', '1ca8039c78f6b3ae6bd74e26690e0253', 0, '', '2tl', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(12, 12, 2, 2, 0, '::1', 1609835750, 0, 1, 1, 1, 1, '', 'Review Sách Muốn Ít Đi, Hạnh Phúc Nhiều Hơn', '<r>Hạnh phúc luôn xuất phát từ trái tim của mỗi người, mỗi người sẽ luôn có các mục tiêu khác nhau nhưng chắc chắn với những người biết sống vừa đủ thì hạnh phúc sẽ luôn đong đầy. Đây chính là điều mà mình học được từ cuốn sách “Muốn ít đi hạnh phúc nhiều hơn”.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/muon-it-di-hanh-phuc-nhieu-hon-bat-dau-tu-chinh-can-nha-cua-ban-0.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/muon-it-di-hanh-phuc-nhieu-hon-bat-dau-tu-chinh-can-nha-cua-ban-0.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/m ... -ban-0.jpg\">https://sachhay24h.com/uploads/images/muon-it-di-hanh-phuc-nhieu-hon-bat-dau-tu-chinh-can-nha-cua-ban-0.jpg</LINK_TEXT></URL><e>[/img]</e></IMG><br/>\nLý do bạn nên chọn cuốn sách này<br/>\nChúng ta vẫn hay nghĩ về những điều rất vĩ đại khi nhắc đến hạnh phúc. Nhưng thật ra chúng ta vẫn có thể tìm kiếm được sự bình an trong tâm hồn từ việc bắt đầu tìm kiếm hạnh phúc từ chính căn nhà của bạn.<br/>\n<br/>\nNgoài giờ làm việc thì chắc hẳn hầu hết ngôi nhà là nơi gắn bó lâu dài với chúng ta. Đôi khi dành quá nhiều mối bận tâm cho công việc, các mối quan hệ mà chúng ta quên việc chăm sóc cho “ngôi nhà” của mình. Khiến cho việc thỉnh thoảng bạn bị mất đồ dùng hay không nhớ những trật tự để đồ vật trong nhà... làm cho bạn khó chịu và đôi lúc còn cáu giận với những thành viên trong gia đình. Nếu căn nhà của bạn đang bị quá tải bởi những đồ vật hoặc bạn là người hay phải di chuyển nơi ở thì cuốn sách này dành cho bạn.<br/>\n<br/>\n<br/>\n <br/>\nMột số cuốn sách khác về việc tối giản đồ đạc cho gia đình mà bạn đọc có thể tham khảo thêm: Sống thanh thản như người Thụy Điển, Phong cách sống Minimalism – Sống tối giản cho đời thanh thản, …<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/muon-it-di-hanh-phuc-nhieu-hon-bat-dau-tu-chinh-can-nha-cua-ban-1.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/muon-it-di-hanh-phuc-nhieu-hon-bat-dau-tu-chinh-can-nha-cua-ban-1.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/m ... -ban-1.jpg\">https://sachhay24h.com/uploads/images/muon-it-di-hanh-phuc-nhieu-hon-bat-dau-tu-chinh-can-nha-cua-ban-1.jpg</LINK_TEXT></URL><e>[/img]</e></IMG></r>', '51ee9fc536f3ae060fe780bfebcbb6e6', 0, '', '1cgj', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(13, 13, 2, 2, 0, '::1', 1609836022, 0, 1, 1, 1, 1, '', 'Review nghệ thuật truyền đạt, bí quyết thành công của người Nhật', '<r>Mọi người vẫn thuộc lòng câu “Lời nói chẳng mất tiền mua, lựa lời mà nói cho vừa lòng nhau”. Nhưng mấy ai vận hiểu sâu xa và vận dụng đúng. Ngày nay, giao tiếp là chìa khóa dẫn các bạn đến thành công. Khi lời nói của bạn trau chuốt, dễ hiểu, tránh được những hiểu lầm thì càng quan trọng. Mặc dù nói rất dễ nhưng để thực hiện một cách máy móc không dễ dàng. Ngay lúc này, bạn cần một người thầy dẫn đường chỉ lối bạn đi đúng hướng. Người thầy phù hợp cho bạn là cuốn sách “Nghệ thuật truyền đạt, bí quyết thành công của người Nhật”. Cuốn sách sẽ trở thành người dẫn đường tinh anh, giúp bạn tự tin, tinh tế và tỏa sáng hơn trong mắt mọi người.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-0.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-0.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/n ... nhat-0.jpg\">https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-0.jpg</LINK_TEXT></URL><e>[/img]</e></IMG><br/>\n1. Hoàn cảnh ra đời cuốn sách “Nghệ thuật truyền đạt, bí quyết thành công của người Nhật” – tác giả Keiichi Sasaki<br/>\nQuá trình lắng nghe của mọi người chưa bao giờ dễ dàng và càng khó khăn hơn khi thuyết phục người khác lắng nghe ý kiến của ai đó. Điều đó dẫn đến sự khó khăn càng chồng chất lên gấp bội khi phải làm việc hoặc học tập qua chiếc màn hình kết nối internet. Để làm sao làm việc nhóm từ xa hiệu quả nhất? Keiichi Sasaki đã đề cập tới trong cuốn sách “Nghệ thuật truyền đạt, bí quyết thành công của người Nhật” một phương pháp vô cùng hữu hiệu và tạo tinh thần làm việc nhóm.<br/>\n<br/>\nNội dung cuốn sách chính là những trải nghiệm thực tế của tác giả. Từ một người rất kém trong diễn đạt, dẫn đến stress nặng đến nỗi mắc phải chứng cuồng ăn. Và kết quả đã tăng 10 cân trong vòng 1 năm. Nhưng giờ đây, đã trở thành người dẫn dắt và giúp bao nhiêu người cải thiện kỹ năng diễn đạt.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-1.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-1.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/n ... nhat-1.jpg\">https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-1.jpg</LINK_TEXT></URL><e>[/img]</e></IMG></r>', 'e590d7fd0a3ea8748e71549c67ccc983', 0, '', '3pr34', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(14, 14, 2, 2, 0, '::1', 1609836199, 0, 1, 1, 1, 0, '', 'Review Sách Một Năm Tư Duy Tích Cực', '<r>Tư duy tích cực sẽ đưa chúng ta đến thành công nhưng để duy trì sự tích cực, lạc quan trong một khoảng thời gian dài là một điều không thể của rất nhiều bạn trẻ. Đừng qua lo lắng, hãy để “Một năm tư duy tích cực” giúp bạn cân bằng cảm xúc để cuộc sống dễ dàng hơn nhé.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/mot-nam-tu-duy-tich-cuc-1.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/mot-nam-tu-duy-tich-cuc-1.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/m ... -cuc-1.jpg\">https://sachhay24h.com/uploads/images/mot-nam-tu-duy-tich-cuc-1.jpg</LINK_TEXT></URL><e>[/img]</e></IMG><br/>\nGiới thiệu về tác giả<br/>\nCyndie Spiegel là một nhà diễn thuyết trực tính, cô không ngại thỉnh thoảng dung những từ “tục” thông dụng cũng như hay dùng các từ “bày tỏ” hay “thuộc về”. Cô là người xây dựng cộng đồng đa dạng vốn không thể tìm thấy trong thế giới điên loạn. Cô cũng là người kể sự thật về những người xung quanh các nhà quản lý, với mục đích khuyến khích mọi người sống táo bạo hơn, thay đổi tư duy hướng đến điều tốt, và giúp họ nhận diện những ước mơ được truyền cảm hứng một cách khôi hài nhất.<br/>\n<br/>\nPhong cách trình bày pha trộn giữa cá tính đọc đáo, bộc trực và cách nói thẳng, xấc nhưng đầy cảm hứng khiến cô trở thành một trong những người hướng dẫn và nhà diễn thuyết chính được “ săn lùng” nhất cho các buổi hội thảo.<br/>\n<br/>\n<br/>\n <br/>\nCydie ngoài sở hữu kinh nghiệm kỳ cựu trong lĩnh vực thời trang, còn là một giáo sư kiêm nhiệm, người thách thức tư duy và chuyên gia về yoga. Cô sống ở Brooklyn, New York cùng chồng nhiếp ảnh gia và 2 chú mèo hết sức khó chiều.<br/>\n<br/>\nCuốn sách này có gì?<br/>\nKhông phải là những câu chuyện dài dòng, triết lý khó hiểu. Những trích dẫn ngắn gọn tạo nên động lực và cảm xúc vui vẻ mới chính là điều mà sách hướng đến.<br/>\n<br/>\nViệc đọc và nghiền ngẫm cuốn sách “Một năm tư duy tích cực”sẽ giúp bạn trong cả việc đối nhân xử thế.<br/>\n<br/>\nTình yêu, tình bạn, lòng biết ơn, yêu thương bản thân, … tất cả sẽ xuất hiện trong cuốn sách này.<br/>\n<br/>\nCuốn sách này cũng không đòi hỏi bạn đọc phải đọc hết trong một vài giờ đồng hồ hay phải hoàn thành nó trong một thời gian ngắn như những cuốn sách khác.<br/>\n<br/>\n<br/>\n <br/>\nNếu bạn quá bận rộn để có thể dành một ngày hay thậm chí chỉ là một vài giờ đồng hồ để đọc sách thì cuốn sách này cũng sẽ dành cho bạn.<br/>\n<br/>\nHãy đọc nó mỗi ngày chính là điều mà bạn cần làm. Với tất cả chúng ta, cảm xúc mỗi sáng thức dậy đôi khi làm ảnh hưởng rất nhiều đến hiệu quả làm việc và cảm xúc cả ngày. Hãy đọc một vài trang sách để bắt đầu một ngày mới bằng những niềm vui nho nhỏ và sự thoải mái của bản thân bạn.<br/>\n<br/>\nNhững lúc buồn, chán cuốn sách này vẫn sẽ giúp bạn tìm lại cảm hứng để sống vui và tập trung làm việc.<br/>\n<br/>\n10 trích dẫn hay từ sách</r>', 'a250995d760cfcf6dffb873d6ee615df', 0, '', '32hba6', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(15, 15, 2, 51, 0, '::1', 1609836524, 0, 1, 1, 1, 1, '', 'Review Sách Loài Plastic - Khi Nhựa Trỗi Dậy', '<r>Đồ nhựa dùng một lần luôn là sự lựa chọn của tất cả chúng ta bởi sự tiện lợi mà nó đem lại. Nhưng có một sự thật rằng chúng ta đang bị phụ thuộc vào “loài nhựa” một cách vô tội vạ điều này mang lại không ít rắc rối cho mẹ thiên nhiên và cuộc sống của chính chúng ta. Hãy cùng “Loài plastic – khi nhựa trỗi dậy” tìm hiểu xem chúng ta đã và đang vô tình hủy hoại Trái Đất như thế nào.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-1.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-1.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/l ... -day-1.jpg\">https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-1.jpg</LINK_TEXT></URL><e>[/img]</e></IMG><br/>\nLý do bạn nên chọn cuốn sách này<br/>\nCó rất nhiều cuốn sách nói về vấn đề sống xanh nhưng “Loài plastic – Khi nhựa trỗi dậy” sẽ là một trong những cuốn sách đáng đọc bởi sự phân tích rất kĩ và cụ thể về nhựa sẽ khiến bạn đọc phải giật mình bởi sự khủng khiếp và hậu quả khi chúng ta lạm dụng và sử dụng nhựa một cách vô tội vạ. Cuốn sách này cũng sẽ là một trong những lời cảnh tỉnh khiến bạn đọc phải thay đổi để tránh làm tổn hại đến mẹ thiên nhiên nữa.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-2.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-2.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/l ... -day-2.jpg\">https://sachhay24h.com/uploads/images/loai-plastic-khi-nhua-troi-day-2.jpg</LINK_TEXT></URL><e>[/img]</e></IMG></r>', 'a85dbf90e05fbb8376eec3d5ba761d4a', 0, '', '3qvw0m', 1, 0, '', 0, 0, 0, 1, 1609836934, '', 2),
(16, 16, 2, 2, 0, '::1', 1609837206, 0, 1, 1, 1, 1, '', 'Review sách Nếu tôi biết được khi còn 20', '<r>Tuổi 20, không ít người mãi đắm chìm trong câu hỏi tôi cần làm gì khi rời xa giảng đường êm ả, hay một sự khởi đầu mới thường khiến con người ta cảm thấy nhụt chí, nản lòng. Mọi chuyện sẽ trở nên suôn sẻ khi bạn tìm đến cuốn sách “Nếu tôi biết được khi còn 20”, nó mang đến những kiến thức bổ ích về vấn đề quản trị, tư duy và xây dựng mối quan hệ giúp các bạn trẻ vững vàng hơn trên con đường lập nghiệp.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/neu-toi-biet-duoc-khi-con-20-0.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/neu-toi-biet-duoc-khi-con-20-0.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/n ... n-20-0.jpg\">https://sachhay24h.com/uploads/images/neu-toi-biet-duoc-khi-con-20-0.jpg</LINK_TEXT></URL><e>[/img]</e></IMG></r>', 'f39ddaecd1b7f331335a64f36b220f1d', 0, '', 'bpuwhcfq', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(17, 17, 2, 51, 0, '::1', 1609843536, 0, 1, 1, 1, 1, '', 'Review Hoàng Tử Bé - Triết lý về tình yêu và cuộc sống', '<r>Hoàng Tử Bé là một câu chuyện đã được rất nhiều người biết đến. Đây là câu truyện vô cùng nổi tiếng được xuất bản từ năm 1943. Tiểu thuyết này kể về một cậu bé sống trên tiểu hành tinh của mình và những chuyện xoay quanh cuộc sống hàng ngày. Để giúp mọi người biết rõ hơn về truyện và những triết lý tình yêu, cuộc sống chúng tôi sẽ chia sẻ qua bài viết sau.<br/>\nGiới thiệu về tác phẩm Hoàng Tử Bé<br/>\nĐây là tác phẩm được nhà văn hay nhà phi công nổi tiếng Antoine de Saint – Exupéry của Pháp sáng tác. Hoàng Tử Bé được xuất bản vào năm 1943. Tác phẩm này đã được dịch ra hơn 250 ngôn ngữ khác nhau và bán trên 200 triệu bản trên toàn thế giới. <br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/hoang-tu-be-triet-ly-ve-tinh-yeu-va-cuoc-song-1.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/hoang-tu-be-triet-ly-ve-tinh-yeu-va-cuoc-song-1.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/h ... song-1.jpg\">https://sachhay24h.com/uploads/images/hoang-tu-be-triet-ly-ve-tinh-yeu-va-cuoc-song-1.jpg</LINK_TEXT></URL><e>[/img]</e></IMG><br/>\nTác phẩm gồm có 39 chương kể về một cậu bé sống trên tiểu hành tinh B612. Đây là nơi mà cậu bé sinh sống cậu luôn chăm chút cho hành tinh bé nhỏ của mình. Cậu đã đi xem những tiểu hành tinh xung quanh mình và phát hiện ra được nhiều điều thú vị về trái đất.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/hoang-tu-be-triet-ly-ve-tinh-yeu-va-cuoc-song-2.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/hoang-tu-be-triet-ly-ve-tinh-yeu-va-cuoc-song-2.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/h ... song-2.jpg\">https://sachhay24h.com/uploads/images/hoang-tu-be-triet-ly-ve-tinh-yeu-va-cuoc-song-2.jpg</LINK_TEXT></URL><e>[/img]</e></IMG></r>', '3e6ee03f1699df411803b758dfbcb16b', 0, '', '6p7vo', 1, 0, '', 0, 0, 0, 1, 1609918612, '', 2),
(18, 18, 2, 51, 0, '::1', 1609843938, 0, 1, 1, 1, 1, '', 'Review nghệ thuật truyền đạt, bí quyết thành công của người Nhật', '<r>Mọi người vẫn thuộc lòng câu “Lời nói chẳng mất tiền mua, lựa lời mà nói cho vừa lòng nhau”. Nhưng mấy ai vận hiểu sâu xa và vận dụng đúng. Ngày nay, giao tiếp là chìa khóa dẫn các bạn đến thành công. Khi lời nói của bạn trau chuốt, dễ hiểu, tránh được những hiểu lầm thì càng quan trọng. Mặc dù nói rất dễ nhưng để thực hiện một cách máy móc không dễ dàng. Ngay lúc này, bạn cần một người thầy dẫn đường chỉ lối bạn đi đúng hướng. Người thầy phù hợp cho bạn là cuốn sách “Nghệ thuật truyền đạt, bí quyết thành công của người Nhật”. Cuốn sách sẽ trở thành người dẫn đường tinh anh, giúp bạn tự tin, tinh tế và tỏa sáng hơn trong mắt mọi người.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-0.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-0.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/n ... nhat-0.jpg\">https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-0.jpg</LINK_TEXT></URL><e>[/img]</e></IMG><br/>\n1. Hoàn cảnh ra đời cuốn sách “Nghệ thuật truyền đạt, bí quyết thành công của người Nhật” – tác giả Keiichi Sasaki<br/>\nQuá trình lắng nghe của mọi người chưa bao giờ dễ dàng và càng khó khăn hơn khi thuyết phục người khác lắng nghe ý kiến của ai đó. Điều đó dẫn đến sự khó khăn càng chồng chất lên gấp bội khi phải làm việc hoặc học tập qua chiếc màn hình kết nối internet. Để làm sao làm việc nhóm từ xa hiệu quả nhất? Keiichi Sasaki đã đề cập tới trong cuốn sách “Nghệ thuật truyền đạt, bí quyết thành công của người Nhật” một phương pháp vô cùng hữu hiệu và tạo tinh thần làm việc nhóm.<br/>\n<br/>\nNội dung cuốn sách chính là những trải nghiệm thực tế của tác giả. Từ một người rất kém trong diễn đạt, dẫn đến stress nặng đến nỗi mắc phải chứng cuồng ăn. Và kết quả đã tăng 10 cân trong vòng 1 năm. Nhưng giờ đây, đã trở thành người dẫn dắt và giúp bao nhiêu người cải thiện kỹ năng diễn đạt.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-1.jpg\"><s>[img]</s><URL url=\"https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-1.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/n ... nhat-1.jpg\">https://sachhay24h.com/uploads/images/nghe-thuat-truyen-dat-bi-quyet-thanh-cong-cua-nguoi-nhat-1.jpg</LINK_TEXT></URL><e>[/img]</e></IMG></r>', 'e590d7fd0a3ea8748e71549c67ccc983', 0, '', '302qv', 1, 0, '', 0, 0, 0, 0, 0, '', 0),
(19, 19, 2, 2, 0, '::1', 1609914684, 0, 1, 1, 1, 1, '', 'Review sách Tớ thích cậu hơn cả Harvard', '<r>“Tớ thích cậu hơn cả Harvard” của tác giả Lan Rùa cuốn tiểu thuyết về tuổi thanh xuân hứa hẹn sẽ bùng nổ, đem đến cho bạn những kỷ niệm ngọt ngào cũng có, cay đắng cũng có khiến bạn phải xúc động.<br/>\n<IMG src=\"https://sachhay24h.com/uploads/images/tieu-thuyet-to-thich-cau-hon-ca-harvard-3.jpg\"><s>[img]</s><br/>\n<URL url=\"https://sachhay24h.com/uploads/images/tieu-thuyet-to-thich-cau-hon-ca-harvard-3.jpg\"><LINK_TEXT text=\"https://sachhay24h.com/uploads/images/t ... vard-3.jpg\">https://sachhay24h.com/uploads/images/tieu-thuyet-to-thich-cau-hon-ca-harvard-3.jpg</LINK_TEXT></URL><br/>\n<e>[/img]</e></IMG></r>', 'f625d9703fc5989b2416086f7677d0d1', 0, '', 'udo', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(20, 19, 2, 2, 0, '::1', 1609914764, 0, 1, 1, 1, 1, '', 'Re: Review sách Tớ thích cậu hơn cả Harvard', '<t>xin chào</t>', 'd79ae2922c29b26e06d8cd8eb7494fba', 0, '', '1pxf', 1, 0, '', 0, 0, 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_privmsgs`
--

CREATE TABLE `phpbb_privmsgs` (
  `msg_id` int(10) UNSIGNED NOT NULL,
  `root_level` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `message_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_privmsgs_folder`
--

CREATE TABLE `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_privmsgs_rules`
--

CREATE TABLE `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rule_check` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rule_connection` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rule_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rule_action` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rule_folder_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_privmsgs_to`
--

CREATE TABLE `phpbb_privmsgs_to` (
  `msg_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pm_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pm_new` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `pm_unread` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `pm_replied` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pm_marked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pm_forwarded` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_profile_fields`
--

CREATE TABLE `phpbb_profile_fields` (
  `field_id` mediumint(8) UNSIGNED NOT NULL,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_on_reg` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_hide` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_no_view` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_profile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_on_vt` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_novalue` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_on_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_on_ml` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_individual` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_is_contact` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_profile_fields`
--

INSERT INTO `phpbb_profile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_hide`, `field_no_view`, `field_active`, `field_order`, `field_show_profile`, `field_show_on_vt`, `field_show_novalue`, `field_show_on_pm`, `field_show_on_ml`, `field_individual`, `field_is_contact`, `field_contact_desc`, `field_contact_url`) VALUES
(1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, '', ''),
(2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 0, 1, 'VISIT_WEBSITE', '%s'),
(3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, '', ''),
(4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '', ''),
(5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 0, 1, '', ''),
(6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 0, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/'),
(7, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 0, 1, 'SEND_YIM_MESSAGE', 'ymsgr:sendim?%s'),
(8, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 0, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/'),
(9, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 0, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s'),
(10, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 0, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo'),
(11, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 0, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_profile_fields_data`
--

CREATE TABLE `phpbb_profile_fields_data` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_profile_fields_data`
--

INSERT INTO `phpbb_profile_fields_data` (`user_id`, `pf_phpbb_interests`, `pf_phpbb_occupation`, `pf_phpbb_location`, `pf_phpbb_youtube`, `pf_phpbb_facebook`, `pf_phpbb_icq`, `pf_phpbb_skype`, `pf_phpbb_twitter`, `pf_phpbb_website`, `pf_phpbb_yahoo`, `pf_phpbb_aol`) VALUES
(2, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_profile_fields_lang`
--

CREATE TABLE `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_profile_lang`
--

CREATE TABLE `phpbb_profile_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_profile_lang`
--

INSERT INTO `phpbb_profile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
(1, 1, 'LOCATION', '', ''),
(1, 2, 'LOCATION', '', ''),
(2, 1, 'WEBSITE', '', ''),
(2, 2, 'WEBSITE', '', ''),
(3, 1, 'INTERESTS', '', ''),
(3, 2, 'INTERESTS', '', ''),
(4, 1, 'OCCUPATION', '', ''),
(4, 2, 'OCCUPATION', '', ''),
(5, 1, 'AOL', '', ''),
(5, 2, 'AOL', '', ''),
(6, 1, 'ICQ', '', ''),
(6, 2, 'ICQ', '', ''),
(7, 1, 'YAHOO', '', ''),
(7, 2, 'YAHOO', '', ''),
(8, 1, 'FACEBOOK', '', ''),
(8, 2, 'FACEBOOK', '', ''),
(9, 1, 'TWITTER', '', ''),
(9, 2, 'TWITTER', '', ''),
(10, 1, 'SKYPE', '', ''),
(10, 2, 'SKYPE', '', ''),
(11, 1, 'YOUTUBE', '', ''),
(11, 2, 'YOUTUBE', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_ranks`
--

CREATE TABLE `phpbb_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(3, 'LIKE ĐỒNG', 0, 1, 'rank1.png'),
(4, 'LIKE BẠC', 0, 1, 'rank2.png'),
(5, 'LIKE VÀNG', 0, 1, 'rank3.png'),
(6, 'LIKE BẠCH KIM', 0, 1, 'rank4.png'),
(7, 'LIKE KIM CƯƠNG', 0, 1, 'rank55.png'),
(8, 'LIKE KIM CƯƠNG', 0, 1, 'rank55.png'),
(9, 'LIKE CAO THỦ', 0, 1, 'rank6.png'),
(10, 'LIKE ĐẠI CAO THỦ', 0, 1, 'rank7.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_reports`
--

CREATE TABLE `phpbb_reports` (
  `report_id` int(10) UNSIGNED NOT NULL,
  `reason_id` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `report_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `report_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reported_post_enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `reported_post_enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `reported_post_enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_reports_reasons`
--

CREATE TABLE `phpbb_reports_reasons` (
  `reason_id` smallint(4) UNSIGNED NOT NULL,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 'The post contains links to illegal or pirated software.', 1),
(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2),
(3, 'off_topic', 'The reported post is off topic.', 3),
(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_search_results`
--

CREATE TABLE `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_search_wordlist`
--

CREATE TABLE `phpbb_search_wordlist` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `word_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'this', 0, 1),
(2, 'is', 0, 1),
(3, 'an', 0, 1),
(4, 'example', 0, 1),
(5, 'post', 0, 1),
(6, 'in', 0, 1),
(7, 'your', 0, 1),
(8, 'phpbb3', 0, 2),
(9, 'installation', 0, 1),
(10, 'everything', 0, 1),
(11, 'seems', 0, 1),
(12, 'to', 0, 2),
(13, 'be', 0, 1),
(14, 'working', 0, 1),
(15, 'you', 0, 1),
(16, 'may', 0, 1),
(17, 'delete', 0, 1),
(18, 'if', 0, 1),
(19, 'like', 0, 1),
(20, 'and', 0, 1),
(21, 'continue', 0, 1),
(22, 'set', 0, 1),
(23, 'up', 0, 1),
(24, 'board', 0, 1),
(25, 'during', 0, 1),
(26, 'the', 0, 1),
(27, 'process', 0, 1),
(28, 'first', 0, 1),
(29, 'category', 0, 1),
(30, 'forum', 0, 1),
(31, 'are', 0, 1),
(32, 'assigned', 0, 1),
(33, 'appropriate', 0, 1),
(34, 'of', 0, 1),
(35, 'permissions', 0, 1),
(36, 'for', 0, 1),
(37, 'predefined', 0, 1),
(38, 'usergroups', 0, 1),
(39, 'administrators', 0, 1),
(40, 'bots', 0, 1),
(41, 'global', 0, 1),
(42, 'moderators', 0, 1),
(43, 'guests', 0, 1),
(44, 'registered', 0, 1),
(45, 'users', 0, 1),
(46, 'coppa', 0, 1),
(47, 'also', 0, 1),
(48, 'choose', 0, 1),
(49, 'do', 0, 1),
(50, 'not', 0, 1),
(51, 'forget', 0, 1),
(52, 'assign', 0, 1),
(53, 'all', 0, 1),
(54, 'these', 0, 1),
(55, 'new', 0, 2),
(56, 'categories', 0, 1),
(57, 'forums', 0, 1),
(58, 'create', 0, 1),
(59, 'it', 0, 1),
(60, 'recommended', 0, 1),
(61, 'rename', 0, 1),
(62, 'copy', 0, 1),
(63, 'from', 0, 1),
(64, 'while', 0, 1),
(65, 'creating', 0, 1),
(66, 'have', 0, 1),
(67, 'fun', 0, 1),
(68, 'welcome', 0, 1),
(69, 'quy', 0, 2),
(70, 'luật', 0, 1),
(71, 'lần', 0, 2),
(72, 'ngốc', 0, 1),
(73, 'nghếch', 0, 1),
(74, 'khi', 0, 15),
(75, 'bạn', 0, 14),
(76, 'hỏi', 0, 3),
(77, 'một', 0, 11),
(78, 'chuyện', 0, 6),
(79, 'quá', 0, 6),
(80, 'tin', 0, 3),
(81, 'nhắn', 0, 1),
(82, 'chưa', 0, 3),
(83, 'trả', 0, 1),
(84, 'lời', 0, 5),
(85, 'tức', 0, 1),
(86, 'không', 0, 9),
(87, 'muốn', 0, 4),
(88, 'người', 0, 16),
(89, 'được', 0, 14),
(90, 'nhờ', 0, 1),
(91, 'giúp', 0, 7),
(92, 'công', 0, 14),
(93, 'thứ', 0, 1),
(94, 'trở', 0, 10),
(95, 'lợi', 0, 6),
(96, 'dụng', 0, 5),
(97, 'khách', 0, 1),
(98, 'mặc', 0, 3),
(99, 'chắc', 0, 4),
(100, 'chắn', 0, 4),
(101, 'tiền', 0, 3),
(102, 'dùng', 0, 4),
(103, 'quan', 0, 6),
(104, 'với', 0, 9),
(105, 'giá', 0, 1),
(106, 'thì', 0, 11),
(107, 'phải', 0, 9),
(108, 'cũng', 0, 6),
(109, 'thể', 0, 10),
(110, 'xuống', 0, 1),
(111, 'nước', 0, 1),
(112, 'níu', 0, 1),
(113, 'kéo', 0, 1),
(114, 'mối', 0, 3),
(115, 'thấy', 0, 3),
(116, 'trọng', 0, 4),
(117, 'đến', 0, 15),
(118, 'làm', 0, 8),
(119, 'dẹp', 0, 1),
(120, 'mỗi', 0, 4),
(121, 'biến', 0, 2),
(122, 'trong', 0, 13),
(123, 'đời', 0, 6),
(124, 'đều', 0, 1),
(125, 'nên', 0, 6),
(126, 'biết', 0, 8),
(127, 'thành', 0, 12),
(128, 'tựu', 0, 1),
(129, 'chỉ', 0, 5),
(130, 'cần', 0, 5),
(131, 'tối', 0, 2),
(132, 'chúc', 0, 5),
(133, 'mừng', 0, 1),
(134, 'sau', 0, 7),
(135, 'nhắc', 0, 2),
(136, 'nhở', 0, 1),
(137, 'ghét', 0, 1),
(138, 'mặt', 0, 1),
(139, 'lỗi', 0, 1),
(140, 'của', 0, 16),
(141, 'việc', 0, 11),
(142, 'trì', 0, 2),
(143, 'hoãn', 0, 1),
(144, 'tốt', 0, 7),
(145, 'chúng', 0, 11),
(146, 'nghĩa', 0, 2),
(147, 'dạy', 0, 1),
(148, 'trưởng', 0, 1),
(149, 'hết', 0, 4),
(150, 'ngoài', 0, 3),
(151, 'con', 0, 2),
(152, 'cái', 0, 1),
(153, 'những', 0, 15),
(154, 'ruột', 0, 1),
(155, 'thịt', 0, 1),
(156, 'năm', 0, 6),
(157, 'hãy', 0, 3),
(158, 'xem', 0, 4),
(159, 'lại', 0, 3),
(160, 'tiến', 0, 1),
(161, 'triển', 0, 5),
(162, 'bản', 0, 3),
(163, 'lĩnh', 0, 2),
(164, 'hiểu', 0, 5),
(165, 'hơn', 0, 16),
(166, 'vững', 0, 2),
(167, 'chãi', 0, 1),
(168, 'đáng', 0, 2),
(169, 'cậy', 0, 1),
(170, 'phát', 0, 8),
(171, 'còn', 0, 5),
(172, 'phù', 0, 4),
(173, 'hợp', 0, 4),
(174, 'cùng', 0, 7),
(175, 'tầng', 0, 1),
(176, 'mây', 0, 1),
(177, 'rồi', 0, 1),
(178, 'quyết', 0, 5),
(179, 'định', 0, 2),
(180, 'nhau', 0, 5),
(181, 'nữa', 0, 2),
(182, 'hay', 0, 5),
(183, 'muộn', 0, 1),
(184, 'tháng', 0, 1),
(185, 'đừng', 0, 4),
(186, 'kêu', 0, 1),
(187, 'phạt', 0, 1),
(188, 'cao', 0, 6),
(189, 'tới', 0, 3),
(190, 'yếu', 0, 1),
(191, 'kém', 0, 3),
(192, 'thất', 0, 1),
(193, 'hứa', 0, 2),
(194, 'suất', 0, 1),
(195, 'tuổi', 0, 3),
(196, 'trẻ', 0, 8),
(197, 'năng', 0, 11),
(198, 'lực', 0, 3),
(199, 'phật', 0, 1),
(200, 'tính', 0, 6),
(201, 'cách', 0, 8),
(202, 'khó', 0, 5),
(203, 'chịu', 0, 2),
(204, 'hoặc', 0, 6),
(205, 'tích', 0, 8),
(206, 'vắng', 0, 1),
(207, 'hoạn', 0, 1),
(208, 'nạn', 0, 1),
(209, 'yêu', 0, 5),
(210, 'dưng', 0, 1),
(211, 'nếu', 0, 6),
(212, 'thoát', 0, 1),
(213, 'khỏi', 0, 1),
(214, 'tồi', 0, 1),
(215, 'kiệt', 0, 1),
(216, 'quệ', 0, 1),
(217, 'trên', 0, 9),
(218, 'đồng', 0, 6),
(219, 'ngẩng', 0, 1),
(220, 'đầu', 0, 6),
(221, 'giới', 0, 8),
(222, 'hạn', 0, 1),
(223, 'đựng', 0, 1),
(224, 'ngoại', 0, 1),
(225, 'cảnh', 0, 5),
(226, 'ủng', 0, 5),
(227, 'quyền', 0, 5),
(228, 'nói', 0, 7),
(229, 'thiếu', 0, 2),
(230, 'sưu', 0, 1),
(231, 'tầm', 0, 5),
(232, 'internet', 0, 3),
(233, 'hình', 0, 3),
(234, 'ảnh', 0, 6),
(235, 'văn', 0, 2),
(236, 'lượt', 0, 1),
(237, 'chia', 0, 6),
(238, 'thích', 0, 5),
(239, 'bình', 0, 2),
(240, 'luận', 0, 1),
(241, 'review', 0, 15),
(242, 'sách', 0, 18),
(243, 'chao', 0, 1),
(244, 'test', 0, 1),
(245, 'img', 0, 14),
(246, 'https', 0, 14),
(247, 'postimg', 0, 5),
(248, 'z3ptm7cr', 0, 1),
(249, 'untitled', 0, 1),
(250, 'png', 0, 1),
(251, 'url', 0, 5),
(252, 'nanh', 0, 1),
(253, 'trang', 0, 2),
(254, 'đơn', 0, 1),
(255, 'giản', 0, 2),
(256, 'lớn', 0, 1),
(257, 'lên', 0, 7),
(258, 'thế', 0, 5),
(259, 'não', 0, 1),
(260, 'trái', 0, 4),
(261, 'hướng', 0, 5),
(262, 'xác', 0, 1),
(263, 'tồn', 0, 1),
(264, 'tại', 0, 5),
(265, 'các', 0, 11),
(266, 'hiện', 0, 9),
(267, 'hành', 0, 3),
(268, 'tắc', 0, 1),
(269, 'chuyên', 0, 6),
(270, 'mục', 0, 8),
(271, 'nhưng', 0, 7),
(272, 'khả', 0, 1),
(273, 'mới', 0, 5),
(274, 'sinh', 0, 3),
(275, 'điều', 0, 8),
(276, 'xảy', 0, 1),
(277, 'hội', 0, 2),
(278, 'nào', 0, 3),
(279, 'cho', 0, 14),
(280, 'thời', 0, 6),
(281, 'điểm', 0, 1),
(282, 'hoạch', 0, 1),
(283, 'này', 0, 8),
(284, 'khác', 0, 6),
(285, 'mọi', 0, 6),
(286, 'sao', 0, 3),
(287, 'liên', 0, 1),
(288, 'tục', 0, 2),
(289, 'chỉnh', 0, 1),
(290, 'dựa', 0, 1),
(291, 'thay', 0, 3),
(292, 'đổi', 0, 3),
(293, 'hoàn', 0, 4),
(294, 'vậy', 0, 1),
(295, 'thưởng', 0, 1),
(296, 'thức', 0, 4),
(297, 'đang', 0, 4),
(298, 'sức', 0, 2),
(299, 'đây', 0, 6),
(300, 'tiếp', 0, 3),
(301, 'cận', 0, 1),
(302, 'toàn', 0, 2),
(303, 'nhiều', 0, 7),
(304, 'vẫn', 0, 6),
(305, 'động', 0, 7),
(306, 'mình', 0, 5),
(307, 'giữ', 0, 1),
(308, 'thái', 0, 1),
(309, 'nhiệt', 0, 1),
(310, 'tình', 0, 5),
(311, 'thúc', 0, 1),
(312, 'đẩy', 0, 1),
(313, 'bởi', 0, 3),
(314, 'tận', 0, 1),
(315, 'hưởng', 0, 6),
(316, 'hoạt', 0, 5),
(317, 'chứ', 0, 1),
(318, 'tiêu', 0, 3),
(319, 'kết', 0, 3),
(320, 'quả', 0, 5),
(321, 'grphwpyv', 0, 1),
(322, 'picture1', 0, 1),
(323, 'jpg', 0, 13),
(324, 'tâm', 0, 3),
(325, 'sống', 0, 7),
(326, 'xin', 0, 5),
(327, 'chào', 0, 5),
(328, 'viên', 0, 6),
(329, 'diễn', 0, 7),
(330, 'đàn', 0, 4),
(331, 'trạm', 0, 4),
(332, 'tôi', 0, 7),
(333, 'cảm', 0, 7),
(334, 'suốt', 0, 4),
(335, 'gian', 0, 5),
(336, 'vừa', 0, 7),
(337, 'qua', 0, 9),
(338, 'như', 0, 8),
(339, 'ngày', 0, 9),
(340, 'nay', 0, 7),
(341, 'ghi', 0, 4),
(342, 'nhận', 0, 5),
(343, 'đóng', 0, 4),
(344, 'góp', 0, 4),
(345, 'cực', 0, 6),
(346, 'tạo', 0, 7),
(347, 'mức', 0, 4),
(348, 'rank', 0, 8),
(349, 'phân', 0, 5),
(350, 'cấp', 0, 4),
(351, 'ích', 0, 6),
(352, 'tham', 0, 5),
(353, 'gia', 0, 6),
(354, 'đạt', 0, 9),
(355, 'bài', 0, 6),
(356, 'viết', 0, 5),
(357, 'duyệt', 0, 4),
(358, 'bạc', 0, 4),
(359, 'vàng', 0, 5),
(360, '100', 0, 4),
(361, 'kim', 0, 4),
(362, 'cương', 0, 4),
(363, '200', 0, 5),
(364, 'thủ', 0, 4),
(365, '300', 0, 4),
(366, 'đặc', 0, 4),
(367, 'biệt', 0, 4),
(368, 'nâng', 0, 4),
(369, 'tín', 0, 4),
(370, 'tác', 0, 9),
(371, 'giả', 0, 8),
(372, 'nổi', 0, 5),
(373, 'tiếng', 0, 5),
(374, 'p5hsm7xk', 0, 3),
(375, 'hinh', 0, 3),
(376, 'anh', 0, 5),
(377, 'dep', 0, 3),
(378, 'quyen', 0, 3),
(379, 'sach', 0, 3),
(380, 'thông', 0, 5),
(381, 'báo', 0, 4),
(382, 'dàng', 0, 4),
(383, 'cuộc', 0, 5),
(384, 'trau', 0, 3),
(385, 'dồi', 0, 1),
(386, 'mềm', 0, 1),
(387, 'thuyết', 0, 7),
(388, 'trình', 0, 5),
(389, 'trước', 0, 1),
(390, 'đám', 0, 1),
(391, 'đông', 0, 1),
(392, 'rất', 0, 7),
(393, 'phổ', 0, 1),
(394, 'nỗi', 0, 3),
(395, 'vượt', 0, 1),
(396, 'chinh', 0, 2),
(397, 'phục', 0, 3),
(398, 'rèn', 0, 1),
(399, 'luyện', 0, 1),
(400, 'lúc', 0, 5),
(401, 'tìm', 0, 5),
(402, 'cuốn', 0, 8),
(403, 'bắt', 0, 4),
(404, 'sachhay24h', 0, 9),
(405, 'com', 0, 9),
(406, 'uploads', 0, 9),
(407, 'images', 0, 9),
(408, 'noi', 0, 1),
(409, 'dung', 0, 4),
(410, 'nang', 0, 1),
(411, 'thuyet', 0, 2),
(412, 'trinh', 0, 1),
(413, 'nguoi', 0, 3),
(414, 'moi', 0, 1),
(415, 'bat', 0, 2),
(416, 'dau', 0, 2),
(417, 'chọn', 0, 3),
(418, 'chán', 0, 2),
(419, 'nản', 0, 2),
(420, 'nhà', 0, 4),
(421, 'quản', 0, 3),
(422, 'thiện', 0, 3),
(423, 'nhân', 0, 2),
(424, 'truyền', 0, 6),
(425, 'kiến', 0, 4),
(426, 'thầy', 0, 3),
(427, 'học', 0, 4),
(428, 'trò', 0, 1),
(429, 'trọn', 0, 1),
(430, 'vẹn', 0, 1),
(431, 'hút', 0, 1),
(432, 'đằng', 0, 1),
(433, 'luôn', 0, 4),
(434, 'câu', 0, 6),
(435, 'dài', 0, 3),
(436, 'đỉnh', 0, 1),
(437, 'từng', 0, 1),
(438, 'lượng', 0, 1),
(439, 'hẳn', 0, 2),
(440, 'tập', 0, 4),
(441, 'chuẩn', 0, 1),
(442, 'giải', 0, 1),
(443, 'đáp', 0, 1),
(444, 'thắc', 0, 1),
(445, 'mắc', 0, 3),
(446, 'giỏi', 0, 1),
(447, 'ngay', 0, 3),
(448, 'đọc', 0, 4),
(449, 'xong', 0, 1),
(450, 'bước', 0, 1),
(451, 'dẫn', 0, 4),
(452, 'lạc', 0, 2),
(453, 'đúng', 0, 3),
(454, 'hạnh', 0, 2),
(455, 'phúc', 0, 2),
(456, 'xuất', 0, 3),
(457, 'tim', 0, 1),
(458, 'đong', 0, 1),
(459, 'đầy', 0, 2),
(460, 'chính', 0, 5),
(461, 'muon', 0, 1),
(462, 'hanh', 0, 1),
(463, 'phuc', 0, 1),
(464, 'nhieu', 0, 1),
(465, 'hon', 0, 2),
(466, 'can', 0, 1),
(467, 'nha', 0, 1),
(468, 'cua', 0, 3),
(469, 'ban', 0, 1),
(470, 'nghĩ', 0, 1),
(471, 'đại', 0, 1),
(472, 'thật', 0, 3),
(473, 'kiếm', 0, 1),
(474, 'hồn', 0, 1),
(475, 'căn', 0, 1),
(476, 'giờ', 0, 4),
(477, 'hầu', 0, 1),
(478, 'ngôi', 0, 1),
(479, 'nơi', 0, 2),
(480, 'gắn', 0, 1),
(481, 'lâu', 0, 1),
(482, 'đôi', 0, 2),
(483, 'dành', 0, 2),
(484, 'bận', 0, 2),
(485, 'quên', 0, 1),
(486, 'chăm', 0, 2),
(487, 'sóc', 0, 1),
(488, 'khiến', 0, 5),
(489, 'thỉnh', 0, 2),
(490, 'thoảng', 0, 2),
(491, 'mất', 0, 3),
(492, 'nhớ', 0, 1),
(493, 'trật', 0, 1),
(494, 'vật', 0, 1),
(495, 'cáu', 0, 1),
(496, 'giận', 0, 1),
(497, 'đình', 0, 1),
(498, 'tải', 0, 1),
(499, 'chuyển', 0, 1),
(500, 'đạc', 0, 1),
(501, 'khảo', 0, 1),
(502, 'thêm', 0, 1),
(503, 'thanh', 0, 4),
(504, 'thản', 0, 1),
(505, 'thụy', 0, 1),
(506, 'điển', 0, 1),
(507, 'phong', 0, 2),
(508, 'minimalism', 0, 1),
(509, 'thuộc', 0, 4),
(510, 'lòng', 0, 4),
(511, 'chẳng', 0, 2),
(512, 'mua', 0, 2),
(513, 'lựa', 0, 3),
(514, 'mấy', 0, 2),
(515, 'vận', 0, 2),
(516, 'sâu', 0, 2),
(517, 'giao', 0, 2),
(518, 'chìa', 0, 2),
(519, 'khóa', 0, 2),
(520, 'chuốt', 0, 2),
(521, 'tránh', 0, 3),
(522, 'lầm', 0, 2),
(523, 'càng', 0, 2),
(524, 'thực', 0, 2),
(525, 'máy', 0, 2),
(526, 'móc', 0, 2),
(527, 'đường', 0, 3),
(528, 'lối', 0, 2),
(529, 'nghệ', 0, 4),
(530, 'thuật', 0, 4),
(531, 'nhật', 0, 4),
(532, 'tinh', 0, 3),
(533, 'tỏa', 0, 2),
(534, 'sáng', 0, 4),
(535, 'mắt', 0, 2),
(536, 'nghe', 0, 2),
(537, 'thuat', 0, 2),
(538, 'truyen', 0, 2),
(539, 'dat', 0, 2),
(540, 'quyet', 0, 2),
(541, 'cong', 0, 2),
(542, 'nhat', 0, 2),
(543, 'keiichi', 0, 2),
(544, 'sasaki', 0, 2),
(545, 'lắng', 0, 3),
(546, 'bao', 0, 2),
(547, 'khăn', 0, 2),
(548, 'chồng', 0, 3),
(549, 'chất', 0, 2),
(550, 'gấp', 0, 2),
(551, 'bội', 0, 2),
(552, 'chiếc', 0, 2),
(553, 'màn', 0, 2),
(554, 'nối', 0, 2),
(555, 'nhóm', 0, 2),
(556, 'hiệu', 0, 3),
(557, 'nhất', 0, 3),
(558, 'cập', 0, 2),
(559, 'phương', 0, 2),
(560, 'pháp', 0, 3),
(561, 'hữu', 0, 3),
(562, 'thần', 0, 2),
(563, 'nội', 0, 2),
(564, 'trải', 0, 2),
(565, 'nghiệm', 0, 3),
(566, 'stress', 0, 2),
(567, 'nặng', 0, 2),
(568, 'chứng', 0, 2),
(569, 'cuồng', 0, 2),
(570, 'tăng', 0, 2),
(571, 'cân', 0, 3),
(572, 'vòng', 0, 2),
(573, 'dắt', 0, 2),
(574, 'nhiêu', 0, 2),
(575, 'cải', 0, 2),
(576, 'duy', 0, 3),
(577, 'đưa', 0, 1),
(578, 'khoảng', 0, 1),
(579, 'bằng', 0, 1),
(580, 'xúc', 0, 2),
(581, 'nhé', 0, 1),
(582, 'mot', 0, 1),
(583, 'nam', 0, 1),
(584, 'tich', 0, 1),
(585, 'cuc', 0, 1),
(586, 'thiệu', 0, 2),
(587, 'cyndie', 0, 1),
(588, 'spiegel', 0, 1),
(589, 'trực', 0, 1),
(590, 'ngại', 0, 1),
(591, 'bày', 0, 1),
(592, 'xây', 0, 2),
(593, 'dựng', 0, 2),
(594, 'cộng', 0, 1),
(595, 'dạng', 0, 1),
(596, 'vốn', 0, 1),
(597, 'điên', 0, 1),
(598, 'loạn', 0, 1),
(599, 'xung', 0, 2),
(600, 'quanh', 0, 2),
(601, 'đích', 0, 1),
(602, 'khuyến', 0, 1),
(603, 'khích', 0, 1),
(604, 'táo', 0, 1),
(605, 'bạo', 0, 1),
(606, 'diện', 0, 1),
(607, 'ước', 0, 1),
(608, 'hứng', 0, 1),
(609, 'khôi', 0, 1),
(610, 'hài', 0, 1),
(611, 'pha', 0, 1),
(612, 'trộn', 0, 1),
(613, 'giữa', 0, 1),
(614, 'đáo', 0, 1),
(615, 'bộc', 0, 1),
(616, 'thẳng', 0, 1),
(617, 'xấc', 0, 1),
(618, 'săn', 0, 1),
(619, 'lùng', 0, 1),
(620, 'buổi', 0, 1),
(621, 'thảo', 0, 1),
(622, 'cydie', 0, 1),
(623, 'kinh', 0, 1),
(624, 'cựu', 0, 1),
(625, 'vực', 0, 1),
(626, 'giáo', 0, 1),
(627, 'kiêm', 0, 1),
(628, 'nhiệm', 0, 1),
(629, 'thách', 0, 1),
(630, 'yoga', 0, 1),
(631, 'brooklyn', 0, 1),
(632, 'york', 0, 1),
(633, 'nhiếp', 0, 1),
(634, 'chú', 0, 1),
(635, 'mèo', 0, 1),
(636, 'chiều', 0, 1),
(637, 'dòng', 0, 1),
(638, 'triết', 0, 3),
(639, 'trích', 0, 1),
(640, 'ngắn', 0, 1),
(641, 'gọn', 0, 1),
(642, 'vui', 0, 1),
(643, 'nghiền', 0, 1),
(644, 'ngẫm', 0, 1),
(645, 'đối', 0, 1),
(646, 'thương', 0, 1),
(647, 'thân', 0, 1),
(648, 'tất', 0, 2),
(649, 'đòi', 0, 1),
(650, 'vài', 0, 1),
(651, 'rộn', 0, 1),
(652, 'thậm', 0, 1),
(653, 'chí', 0, 2),
(654, 'dậy', 0, 3),
(655, 'niềm', 0, 1),
(656, 'nho', 0, 1),
(657, 'nhỏ', 0, 2),
(658, 'thoải', 0, 1),
(659, 'mái', 0, 1),
(660, 'buồn', 0, 1),
(661, 'trung', 0, 1),
(662, 'nhựa', 0, 2),
(663, 'tiện', 0, 1),
(664, 'đem', 0, 2),
(665, 'rằng', 0, 1),
(666, 'phụ', 0, 1),
(667, 'vào', 0, 2),
(668, 'loài', 0, 2),
(669, 'tội', 0, 1),
(670, 'mang', 0, 2),
(671, 'rắc', 0, 1),
(672, 'rối', 0, 1),
(673, 'thiên', 0, 1),
(674, 'nhiên', 0, 1),
(675, 'plastic', 0, 2),
(676, 'trỗi', 0, 2),
(677, 'hủy', 0, 1),
(678, 'hoại', 0, 1),
(679, 'đất', 0, 2),
(680, 'loai', 0, 1),
(681, 'nhua', 0, 1),
(682, 'troi', 0, 1),
(683, 'day', 0, 1),
(684, 'vấn', 0, 2),
(685, 'xanh', 0, 1),
(686, 'giật', 0, 1),
(687, 'khủng', 0, 1),
(688, 'khiếp', 0, 1),
(689, 'hậu', 0, 1),
(690, 'lạm', 0, 1),
(691, 'tỉnh', 0, 1),
(692, 'tổn', 0, 1),
(693, 'hại', 0, 1),
(694, 'mãi', 0, 1),
(695, 'đắm', 0, 1),
(696, 'chìm', 0, 1),
(697, 'rời', 0, 1),
(698, 'giảng', 0, 1),
(699, 'khởi', 0, 1),
(700, 'thường', 0, 1),
(701, 'nhụt', 0, 1),
(702, 'suôn', 0, 1),
(703, 'trị', 0, 1),
(704, 'lập', 0, 1),
(705, 'nghiệp', 0, 1),
(706, 'neu', 0, 1),
(707, 'toi', 0, 1),
(708, 'biet', 0, 1),
(709, 'duoc', 0, 1),
(710, 'hoàng', 0, 2),
(711, 'truyện', 0, 1),
(712, '1943', 0, 1),
(713, 'tiểu', 0, 2),
(714, 'cậu', 0, 4),
(715, 'xoay', 0, 1),
(716, 'hàng', 0, 1),
(717, 'phẩm', 0, 1),
(718, 'phi', 0, 1),
(719, 'antoine', 0, 1),
(720, 'saint', 0, 1),
(721, 'exupéry', 0, 1),
(722, 'dịch', 0, 1),
(723, '250', 0, 1),
(724, 'ngôn', 0, 1),
(725, 'ngữ', 0, 1),
(726, 'bán', 0, 1),
(727, 'triệu', 0, 1),
(728, 'hoang', 0, 1),
(729, 'triet', 0, 1),
(730, 'yeu', 0, 1),
(731, 'cuoc', 0, 1),
(732, 'song', 0, 1),
(733, 'gồm', 0, 1),
(734, 'chương', 0, 1),
(735, 'b612', 0, 1),
(736, 'chút', 0, 1),
(737, 'thú', 0, 1),
(738, 'harvard', 0, 3),
(739, 'lan', 0, 1),
(740, 'rùa', 0, 1),
(741, 'xuân', 0, 1),
(742, 'hẹn', 0, 1),
(743, 'bùng', 0, 1),
(744, 'niệm', 0, 1),
(745, 'ngọt', 0, 1),
(746, 'ngào', 0, 1),
(747, 'cay', 0, 1),
(748, 'đắng', 0, 1),
(749, 'tieu', 0, 1),
(750, 'thich', 0, 1),
(751, 'cau', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_search_wordmatch`
--

CREATE TABLE `phpbb_search_wordmatch` (
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `word_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title_match` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 8, 1),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 12, 1),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(14, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 0),
(1, 59, 0),
(1, 60, 0),
(1, 61, 0),
(1, 62, 0),
(1, 63, 0),
(1, 64, 0),
(1, 65, 0),
(1, 66, 0),
(1, 67, 0),
(1, 68, 1),
(2, 69, 0),
(5, 69, 0),
(2, 70, 0),
(2, 71, 0),
(15, 71, 0),
(2, 72, 0),
(2, 73, 0),
(2, 74, 0),
(5, 74, 0),
(6, 74, 0),
(7, 74, 0),
(8, 74, 0),
(10, 74, 0),
(11, 74, 0),
(12, 74, 0),
(13, 74, 0),
(14, 74, 0),
(15, 74, 0),
(15, 74, 1),
(16, 74, 0),
(16, 74, 1),
(18, 74, 0),
(2, 75, 0),
(5, 75, 0),
(6, 75, 0),
(7, 75, 0),
(8, 75, 0),
(10, 75, 0),
(11, 75, 0),
(12, 75, 0),
(13, 75, 0),
(14, 75, 0),
(15, 75, 0),
(16, 75, 0),
(18, 75, 0),
(19, 75, 0),
(2, 76, 0),
(14, 76, 0),
(16, 76, 0),
(2, 77, 0),
(5, 77, 0),
(11, 77, 0),
(12, 77, 0),
(13, 77, 0),
(14, 77, 0),
(14, 77, 1),
(15, 77, 0),
(16, 77, 0),
(17, 77, 0),
(18, 77, 0),
(2, 78, 0),
(5, 78, 0),
(11, 78, 0),
(14, 78, 0),
(16, 78, 0),
(17, 78, 0),
(2, 79, 0),
(11, 79, 0),
(12, 79, 0),
(13, 79, 0),
(14, 79, 0),
(18, 79, 0),
(2, 80, 0),
(13, 80, 0),
(18, 80, 0),
(2, 81, 0),
(2, 82, 0),
(13, 82, 0),
(18, 82, 0),
(2, 83, 0),
(2, 84, 0),
(11, 84, 0),
(13, 84, 0),
(15, 84, 0),
(18, 84, 0),
(2, 85, 0),
(2, 86, 0),
(5, 86, 0),
(11, 86, 0),
(12, 86, 0),
(13, 86, 0),
(14, 86, 0),
(15, 86, 0),
(16, 86, 0),
(18, 86, 0),
(2, 87, 0),
(11, 87, 0),
(12, 87, 0),
(12, 87, 1),
(2, 88, 0),
(5, 88, 0),
(6, 88, 0),
(7, 88, 0),
(8, 88, 0),
(10, 88, 0),
(11, 88, 0),
(11, 88, 1),
(12, 88, 0),
(13, 88, 0),
(13, 88, 1),
(14, 88, 0),
(16, 88, 0),
(17, 88, 0),
(18, 88, 0),
(18, 88, 1),
(2, 89, 0),
(5, 89, 0),
(6, 89, 0),
(7, 89, 0),
(8, 89, 0),
(10, 89, 0),
(11, 89, 0),
(12, 89, 0),
(13, 89, 0),
(14, 89, 0),
(16, 89, 0),
(16, 89, 1),
(17, 89, 0),
(18, 89, 0),
(2, 90, 0),
(2, 91, 0),
(11, 91, 0),
(13, 91, 0),
(14, 91, 0),
(16, 91, 0),
(17, 91, 0),
(18, 91, 0),
(2, 92, 0),
(5, 92, 0),
(6, 92, 0),
(7, 92, 0),
(8, 92, 0),
(10, 92, 0),
(11, 92, 0),
(12, 92, 0),
(13, 92, 0),
(13, 92, 1),
(14, 92, 0),
(17, 92, 0),
(18, 92, 0),
(18, 92, 1),
(2, 93, 0),
(2, 94, 0),
(6, 94, 0),
(7, 94, 0),
(8, 94, 0),
(10, 94, 0),
(11, 94, 0),
(13, 94, 0),
(14, 94, 0),
(16, 94, 0),
(18, 94, 0),
(2, 95, 0),
(6, 95, 0),
(7, 95, 0),
(8, 95, 0),
(10, 95, 0),
(15, 95, 0),
(2, 96, 0),
(13, 96, 0),
(14, 96, 0),
(15, 96, 0),
(18, 96, 0),
(2, 97, 0),
(2, 98, 0),
(13, 98, 0),
(18, 98, 0),
(2, 99, 0),
(5, 99, 0),
(11, 99, 0),
(12, 99, 0),
(2, 100, 0),
(5, 100, 0),
(11, 100, 0),
(12, 100, 0),
(2, 101, 0),
(13, 101, 0),
(18, 101, 0),
(2, 102, 0),
(12, 102, 0),
(14, 102, 0),
(15, 102, 0),
(2, 103, 0),
(12, 103, 0),
(13, 103, 0),
(14, 103, 0),
(16, 103, 0),
(18, 103, 0),
(2, 104, 0),
(5, 104, 0),
(6, 104, 0),
(7, 104, 0),
(8, 104, 0),
(10, 104, 0),
(11, 104, 0),
(12, 104, 0),
(14, 104, 0),
(2, 105, 0),
(2, 106, 0),
(5, 106, 0),
(6, 106, 0),
(7, 106, 0),
(8, 106, 0),
(10, 106, 0),
(11, 106, 0),
(12, 106, 0),
(13, 106, 0),
(14, 106, 0),
(18, 106, 0),
(2, 107, 0),
(5, 107, 0),
(11, 107, 0),
(12, 107, 0),
(13, 107, 0),
(14, 107, 0),
(15, 107, 0),
(18, 107, 0),
(19, 107, 0),
(2, 108, 0),
(5, 108, 0),
(11, 108, 0),
(14, 108, 0),
(15, 108, 0),
(19, 108, 0),
(2, 109, 0),
(5, 109, 0),
(6, 109, 0),
(7, 109, 0),
(8, 109, 0),
(10, 109, 0),
(11, 109, 0),
(12, 109, 0),
(14, 109, 0),
(15, 109, 0),
(2, 110, 0),
(2, 111, 0),
(2, 112, 0),
(2, 113, 0),
(2, 114, 0),
(12, 114, 0),
(16, 114, 0),
(2, 115, 0),
(14, 115, 0),
(16, 115, 0),
(2, 116, 0),
(11, 116, 0),
(13, 116, 0),
(18, 116, 0),
(2, 117, 0),
(5, 117, 0),
(6, 117, 0),
(7, 117, 0),
(8, 117, 0),
(10, 117, 0),
(11, 117, 0),
(12, 117, 0),
(13, 117, 0),
(14, 117, 0),
(15, 117, 0),
(16, 117, 0),
(17, 117, 0),
(18, 117, 0),
(19, 117, 0),
(2, 118, 0),
(5, 118, 0),
(12, 118, 0),
(13, 118, 0),
(14, 118, 0),
(15, 118, 0),
(16, 118, 0),
(18, 118, 0),
(2, 119, 0),
(2, 120, 0),
(11, 120, 0),
(12, 120, 0),
(14, 120, 0),
(2, 121, 0),
(11, 121, 0),
(2, 122, 0),
(5, 122, 0),
(6, 122, 0),
(7, 122, 0),
(8, 122, 0),
(10, 122, 0),
(11, 122, 0),
(12, 122, 0),
(13, 122, 0),
(14, 122, 0),
(15, 122, 0),
(16, 122, 0),
(18, 122, 0),
(2, 123, 0),
(5, 123, 0),
(11, 123, 0),
(12, 123, 0),
(13, 123, 0),
(18, 123, 0),
(2, 124, 0),
(2, 125, 0),
(11, 125, 0),
(12, 125, 0),
(14, 125, 0),
(15, 125, 0),
(16, 125, 0),
(2, 126, 0),
(5, 126, 0),
(11, 126, 0),
(12, 126, 0),
(14, 126, 0),
(16, 126, 0),
(16, 126, 1),
(17, 126, 0),
(2, 127, 0),
(6, 127, 0),
(7, 127, 0),
(8, 127, 0),
(10, 127, 0),
(11, 127, 0),
(12, 127, 0),
(13, 127, 0),
(13, 127, 1),
(14, 127, 0),
(18, 127, 0),
(18, 127, 1),
(2, 128, 0),
(2, 129, 0),
(5, 129, 0),
(13, 129, 0),
(14, 129, 0),
(18, 129, 0),
(2, 130, 0),
(13, 130, 0),
(14, 130, 0),
(16, 130, 0),
(18, 130, 0),
(2, 131, 0),
(12, 131, 0),
(2, 132, 0),
(6, 132, 0),
(7, 132, 0),
(8, 132, 0),
(10, 132, 0),
(2, 133, 0),
(2, 134, 0),
(6, 134, 0),
(7, 134, 0),
(8, 134, 0),
(10, 134, 0),
(11, 134, 0),
(17, 134, 0),
(2, 135, 0),
(12, 135, 0),
(2, 136, 0),
(2, 137, 0),
(2, 138, 0),
(2, 139, 0),
(2, 140, 0),
(5, 140, 0),
(6, 140, 0),
(7, 140, 0),
(8, 140, 0),
(10, 140, 0),
(11, 140, 0),
(12, 140, 0),
(13, 140, 0),
(13, 140, 1),
(14, 140, 0),
(15, 140, 0),
(17, 140, 0),
(18, 140, 0),
(18, 140, 1),
(19, 140, 0),
(2, 141, 0),
(5, 141, 0),
(6, 141, 0),
(7, 141, 0),
(8, 141, 0),
(10, 141, 0),
(11, 141, 0),
(12, 141, 0),
(13, 141, 0),
(14, 141, 0),
(18, 141, 0),
(2, 142, 0),
(14, 142, 0),
(2, 143, 0),
(2, 144, 0),
(6, 144, 0),
(7, 144, 0),
(8, 144, 0),
(10, 144, 0),
(11, 144, 0),
(14, 144, 0),
(2, 145, 0),
(5, 145, 0),
(6, 145, 0),
(7, 145, 0),
(8, 145, 0),
(10, 145, 0),
(11, 145, 0),
(12, 145, 0),
(14, 145, 0),
(15, 145, 0),
(17, 145, 0),
(2, 146, 0),
(5, 146, 0),
(2, 147, 0),
(2, 148, 0),
(2, 149, 0),
(5, 149, 0),
(12, 149, 0),
(14, 149, 0),
(2, 150, 0),
(12, 150, 0),
(14, 150, 0),
(2, 151, 0),
(16, 151, 0),
(2, 152, 0),
(2, 153, 0),
(5, 153, 0),
(6, 153, 0),
(7, 153, 0),
(8, 153, 0),
(10, 153, 0),
(11, 153, 0),
(12, 153, 0),
(13, 153, 0),
(14, 153, 0),
(15, 153, 0),
(16, 153, 0),
(17, 153, 0),
(18, 153, 0),
(19, 153, 0),
(2, 154, 0),
(2, 155, 0),
(2, 156, 0),
(13, 156, 0),
(14, 156, 0),
(14, 156, 1),
(17, 156, 0),
(18, 156, 0),
(2, 157, 0),
(14, 157, 0),
(15, 157, 0),
(2, 158, 0),
(5, 158, 0),
(15, 158, 0),
(17, 158, 0),
(2, 159, 0),
(14, 159, 0),
(15, 159, 0),
(2, 160, 0),
(2, 161, 0),
(6, 161, 0),
(7, 161, 0),
(8, 161, 0),
(10, 161, 0),
(2, 162, 0),
(14, 162, 0),
(17, 162, 0),
(2, 163, 0),
(14, 163, 0),
(2, 164, 0),
(13, 164, 0),
(14, 164, 0),
(15, 164, 0),
(18, 164, 0),
(2, 165, 0),
(6, 165, 0),
(7, 165, 0),
(8, 165, 0),
(10, 165, 0),
(11, 165, 0),
(12, 165, 0),
(12, 165, 1),
(13, 165, 0),
(14, 165, 0),
(16, 165, 0),
(17, 165, 0),
(18, 165, 0),
(19, 165, 0),
(19, 165, 1),
(20, 165, 1),
(2, 166, 0),
(16, 166, 0),
(2, 167, 0),
(2, 168, 0),
(15, 168, 0),
(2, 169, 0),
(2, 170, 0),
(5, 170, 0),
(6, 170, 0),
(7, 170, 0),
(8, 170, 0),
(10, 170, 0),
(12, 170, 0),
(17, 170, 0),
(2, 171, 0),
(12, 171, 0),
(14, 171, 0),
(16, 171, 0),
(16, 171, 1),
(2, 172, 0),
(5, 172, 0),
(13, 172, 0),
(18, 172, 0),
(2, 173, 0),
(5, 173, 0),
(13, 173, 0),
(18, 173, 0),
(2, 174, 0),
(11, 174, 0),
(13, 174, 0),
(14, 174, 0),
(15, 174, 0),
(17, 174, 0),
(18, 174, 0),
(2, 175, 0),
(2, 176, 0),
(2, 177, 0),
(2, 178, 0),
(13, 178, 0),
(13, 178, 1),
(18, 178, 0),
(18, 178, 1),
(2, 179, 0),
(5, 179, 0),
(2, 180, 0),
(12, 180, 0),
(13, 180, 0),
(17, 180, 0),
(18, 180, 0),
(2, 181, 0),
(15, 181, 0),
(2, 182, 0),
(12, 182, 0),
(14, 182, 0),
(16, 182, 0),
(17, 182, 0),
(2, 183, 0),
(2, 184, 0),
(2, 185, 0),
(11, 185, 0),
(11, 185, 1),
(14, 185, 0),
(2, 186, 0),
(2, 187, 0),
(2, 188, 0),
(6, 188, 0),
(7, 188, 0),
(8, 188, 0),
(10, 188, 0),
(11, 188, 0),
(2, 189, 0),
(13, 189, 0),
(18, 189, 0),
(2, 190, 0),
(2, 191, 0),
(13, 191, 0),
(18, 191, 0),
(2, 192, 0),
(2, 193, 0),
(19, 193, 0),
(2, 194, 0),
(2, 195, 0),
(16, 195, 0),
(19, 195, 0),
(2, 196, 0),
(6, 196, 0),
(7, 196, 0),
(8, 196, 0),
(10, 196, 0),
(11, 196, 0),
(14, 196, 0),
(16, 196, 0),
(2, 197, 0),
(5, 197, 0),
(5, 197, 1),
(6, 197, 1),
(7, 197, 1),
(8, 197, 1),
(10, 197, 1),
(11, 197, 0),
(11, 197, 1),
(13, 197, 0),
(18, 197, 0),
(2, 198, 0),
(5, 198, 0),
(14, 198, 0),
(2, 199, 0),
(2, 200, 0),
(6, 200, 1),
(7, 200, 1),
(8, 200, 1),
(10, 200, 1),
(14, 200, 0),
(2, 201, 0),
(5, 201, 0),
(11, 201, 0),
(12, 201, 0),
(13, 201, 0),
(14, 201, 0),
(15, 201, 0),
(18, 201, 0),
(2, 202, 0),
(12, 202, 0),
(13, 202, 0),
(14, 202, 0),
(18, 202, 0),
(2, 203, 0),
(12, 203, 0),
(2, 204, 0),
(5, 204, 0),
(11, 204, 0),
(12, 204, 0),
(13, 204, 0),
(18, 204, 0),
(2, 205, 0),
(6, 205, 0),
(7, 205, 0),
(8, 205, 0),
(10, 205, 0),
(14, 205, 0),
(14, 205, 1),
(15, 205, 0),
(2, 206, 0),
(2, 207, 0),
(2, 208, 0),
(2, 209, 0),
(11, 209, 0),
(14, 209, 0),
(17, 209, 0),
(17, 209, 1),
(2, 210, 0),
(2, 211, 0),
(11, 211, 0),
(12, 211, 0),
(14, 211, 0),
(16, 211, 0),
(16, 211, 1),
(2, 212, 0),
(2, 213, 0),
(2, 214, 0),
(2, 215, 0),
(2, 216, 0),
(2, 217, 0),
(5, 217, 0),
(6, 217, 0),
(7, 217, 0),
(8, 217, 0),
(10, 217, 0),
(11, 217, 0),
(16, 217, 0),
(17, 217, 0),
(2, 218, 0),
(6, 218, 0),
(7, 218, 0),
(8, 218, 0),
(10, 218, 0),
(14, 218, 0),
(2, 219, 0),
(2, 220, 0),
(11, 220, 0),
(11, 220, 1),
(12, 220, 0),
(14, 220, 0),
(16, 220, 0),
(2, 221, 0),
(5, 221, 0),
(6, 221, 0),
(7, 221, 0),
(8, 221, 0),
(10, 221, 0),
(14, 221, 0),
(17, 221, 0),
(2, 222, 0),
(2, 223, 0),
(2, 224, 0),
(2, 225, 0),
(5, 225, 0),
(13, 225, 0),
(15, 225, 0),
(18, 225, 0),
(2, 226, 0),
(6, 226, 0),
(7, 226, 0),
(8, 226, 0),
(10, 226, 0),
(2, 227, 0),
(6, 227, 0),
(7, 227, 0),
(8, 227, 0),
(10, 227, 0),
(2, 228, 0),
(11, 228, 0),
(11, 228, 1),
(13, 228, 0),
(14, 228, 0),
(15, 228, 0),
(18, 228, 0),
(2, 229, 0),
(5, 229, 0),
(2, 230, 0),
(2, 231, 0),
(6, 231, 0),
(7, 231, 0),
(8, 231, 0),
(10, 231, 0),
(2, 232, 0),
(13, 232, 0),
(18, 232, 0),
(2, 233, 0),
(13, 233, 0),
(18, 233, 0),
(2, 234, 0),
(6, 234, 0),
(7, 234, 0),
(8, 234, 0),
(10, 234, 0),
(14, 234, 0),
(2, 235, 0),
(17, 235, 0),
(2, 236, 0),
(2, 237, 0),
(6, 237, 0),
(7, 237, 0),
(8, 237, 0),
(10, 237, 0),
(17, 237, 0),
(2, 238, 0),
(5, 238, 0),
(19, 238, 0),
(19, 238, 1),
(20, 238, 1),
(2, 239, 0),
(12, 239, 0),
(2, 240, 0),
(2, 241, 1),
(6, 241, 0),
(7, 241, 0),
(8, 241, 0),
(10, 241, 0),
(11, 241, 1),
(12, 241, 1),
(13, 241, 1),
(14, 241, 1),
(15, 241, 1),
(16, 241, 1),
(17, 241, 1),
(18, 241, 1),
(19, 241, 1),
(20, 241, 1),
(2, 242, 1),
(6, 242, 0),
(7, 242, 0),
(8, 242, 0),
(10, 242, 0),
(11, 242, 0),
(12, 242, 0),
(12, 242, 1),
(13, 242, 0),
(14, 242, 0),
(14, 242, 1),
(15, 242, 0),
(15, 242, 1),
(16, 242, 0),
(16, 242, 1),
(18, 242, 0),
(19, 242, 1),
(20, 242, 1),
(3, 243, 0),
(3, 244, 1),
(4, 245, 0),
(5, 245, 0),
(6, 245, 0),
(7, 245, 0),
(8, 245, 0),
(11, 245, 0),
(12, 245, 0),
(13, 245, 0),
(14, 245, 0),
(15, 245, 0),
(16, 245, 0),
(17, 245, 0),
(18, 245, 0),
(19, 245, 0),
(4, 246, 0),
(5, 246, 0),
(6, 246, 0),
(7, 246, 0),
(8, 246, 0),
(11, 246, 0),
(12, 246, 0),
(13, 246, 0),
(14, 246, 0),
(15, 246, 0),
(16, 246, 0),
(17, 246, 0),
(18, 246, 0),
(19, 246, 0),
(4, 247, 0),
(5, 247, 0),
(6, 247, 0),
(7, 247, 0),
(8, 247, 0),
(4, 248, 0),
(4, 249, 0),
(4, 250, 0),
(4, 251, 0),
(5, 251, 0),
(6, 251, 0),
(7, 251, 0),
(8, 251, 0),
(4, 252, 1),
(4, 253, 1),
(14, 253, 0),
(5, 254, 0),
(5, 255, 0),
(12, 255, 0),
(5, 256, 0),
(5, 257, 0),
(6, 257, 0),
(7, 257, 0),
(8, 257, 0),
(10, 257, 0),
(13, 257, 0),
(18, 257, 0),
(5, 258, 0),
(11, 258, 0),
(14, 258, 0),
(15, 258, 0),
(17, 258, 0),
(5, 259, 0),
(5, 260, 0),
(12, 260, 0),
(15, 260, 0),
(17, 260, 0),
(5, 261, 0),
(11, 261, 0),
(13, 261, 0),
(14, 261, 0),
(18, 261, 0),
(5, 262, 0),
(5, 263, 0),
(5, 264, 0),
(6, 264, 0),
(7, 264, 0),
(8, 264, 0),
(10, 264, 0),
(5, 265, 0),
(6, 265, 0),
(7, 265, 0),
(8, 265, 0),
(10, 265, 0),
(11, 265, 0),
(12, 265, 0),
(13, 265, 0),
(14, 265, 0),
(16, 265, 0),
(18, 265, 0),
(5, 266, 0),
(6, 266, 0),
(7, 266, 0),
(8, 266, 0),
(10, 266, 0),
(13, 266, 0),
(14, 266, 0),
(17, 266, 0),
(18, 266, 0),
(5, 267, 0),
(11, 267, 0),
(17, 267, 0),
(5, 268, 0),
(5, 269, 0),
(6, 269, 0),
(7, 269, 0),
(8, 269, 0),
(10, 269, 0),
(14, 269, 0),
(5, 270, 0),
(6, 270, 0),
(7, 270, 0),
(8, 270, 0),
(10, 270, 0),
(11, 270, 0),
(12, 270, 0),
(14, 270, 0),
(5, 271, 0),
(11, 271, 0),
(12, 271, 0),
(13, 271, 0),
(14, 271, 0),
(15, 271, 0),
(18, 271, 0),
(5, 272, 0),
(5, 273, 0),
(11, 273, 0),
(11, 273, 1),
(14, 273, 0),
(16, 273, 0),
(5, 274, 0),
(11, 274, 0),
(17, 274, 0),
(5, 275, 0),
(11, 275, 0),
(12, 275, 0),
(13, 275, 0),
(14, 275, 0),
(15, 275, 0),
(17, 275, 0),
(18, 275, 0),
(5, 276, 0),
(5, 277, 0),
(14, 277, 0),
(5, 278, 0),
(11, 278, 0),
(15, 278, 0),
(5, 279, 0),
(6, 279, 0),
(7, 279, 0),
(8, 279, 0),
(10, 279, 0),
(11, 279, 0),
(11, 279, 1),
(12, 279, 0),
(13, 279, 0),
(14, 279, 0),
(15, 279, 0),
(17, 279, 0),
(18, 279, 0),
(19, 279, 0),
(5, 280, 0),
(6, 280, 0),
(7, 280, 0),
(8, 280, 0),
(10, 280, 0),
(14, 280, 0),
(5, 281, 0),
(5, 282, 0),
(5, 283, 0),
(11, 283, 0),
(12, 283, 0),
(13, 283, 0),
(14, 283, 0),
(15, 283, 0),
(17, 283, 0),
(18, 283, 0),
(5, 284, 0),
(12, 284, 0),
(13, 284, 0),
(14, 284, 0),
(17, 284, 0),
(18, 284, 0),
(5, 285, 0),
(13, 285, 0),
(14, 285, 0),
(16, 285, 0),
(17, 285, 0),
(18, 285, 0),
(5, 286, 0),
(13, 286, 0),
(18, 286, 0),
(5, 287, 0),
(5, 288, 0),
(14, 288, 0),
(5, 289, 0),
(5, 290, 0),
(5, 291, 0),
(14, 291, 0),
(15, 291, 0),
(5, 292, 0),
(14, 292, 0),
(15, 292, 0),
(5, 293, 0),
(13, 293, 0),
(14, 293, 0),
(18, 293, 0),
(5, 294, 0),
(5, 295, 0),
(5, 296, 0),
(11, 296, 0),
(14, 296, 0),
(16, 296, 0),
(5, 297, 0),
(11, 297, 0),
(12, 297, 0),
(15, 297, 0),
(5, 298, 0),
(14, 298, 0),
(5, 299, 0),
(11, 299, 0),
(12, 299, 0),
(13, 299, 0),
(17, 299, 0),
(18, 299, 0),
(5, 300, 0),
(13, 300, 0),
(18, 300, 0),
(5, 301, 0),
(5, 302, 0),
(17, 302, 0),
(5, 303, 0),
(11, 303, 0),
(12, 303, 0),
(12, 303, 1),
(14, 303, 0),
(15, 303, 0),
(17, 303, 0),
(5, 304, 0),
(11, 304, 0),
(12, 304, 0),
(13, 304, 0),
(14, 304, 0),
(18, 304, 0),
(5, 305, 0),
(6, 305, 0),
(7, 305, 0),
(8, 305, 0),
(10, 305, 0),
(14, 305, 0),
(19, 305, 0),
(5, 306, 0),
(11, 306, 0),
(12, 306, 0),
(15, 306, 0),
(17, 306, 0),
(5, 307, 0),
(5, 308, 0),
(5, 309, 0),
(5, 310, 0),
(14, 310, 0),
(15, 310, 0),
(17, 310, 0),
(17, 310, 1),
(5, 311, 0),
(5, 312, 0),
(5, 313, 0),
(12, 313, 0),
(15, 313, 0),
(5, 314, 0),
(5, 315, 0),
(6, 315, 0),
(7, 315, 0),
(8, 315, 0),
(10, 315, 0),
(14, 315, 0),
(5, 316, 0),
(6, 316, 0),
(7, 316, 0),
(8, 316, 0),
(10, 316, 0),
(5, 317, 0),
(5, 318, 0),
(11, 318, 0),
(12, 318, 0),
(5, 319, 0),
(13, 319, 0),
(18, 319, 0),
(5, 320, 0),
(13, 320, 0),
(14, 320, 0),
(15, 320, 0),
(18, 320, 0),
(5, 321, 0),
(5, 322, 0),
(5, 323, 0),
(6, 323, 0),
(7, 323, 0),
(8, 323, 0),
(11, 323, 0),
(12, 323, 0),
(13, 323, 0),
(14, 323, 0),
(15, 323, 0),
(16, 323, 0),
(17, 323, 0),
(18, 323, 0),
(19, 323, 0),
(5, 324, 1),
(11, 324, 0),
(12, 324, 0),
(5, 325, 1),
(11, 325, 0),
(12, 325, 0),
(14, 325, 0),
(15, 325, 0),
(17, 325, 0),
(17, 325, 1),
(6, 326, 0),
(7, 326, 0),
(8, 326, 0),
(10, 326, 0),
(20, 326, 0),
(6, 327, 0),
(7, 327, 0),
(8, 327, 0),
(10, 327, 0),
(20, 327, 0),
(6, 328, 0),
(7, 328, 0),
(8, 328, 0),
(10, 328, 0),
(11, 328, 0),
(12, 328, 0),
(6, 329, 0),
(7, 329, 0),
(8, 329, 0),
(10, 329, 0),
(13, 329, 0),
(14, 329, 0),
(18, 329, 0),
(6, 330, 0),
(7, 330, 0),
(8, 330, 0),
(10, 330, 0),
(6, 331, 0),
(7, 331, 0),
(8, 331, 0),
(10, 331, 0),
(6, 332, 0),
(7, 332, 0),
(8, 332, 0),
(10, 332, 0),
(16, 332, 0),
(16, 332, 1),
(17, 332, 0),
(6, 333, 0),
(7, 333, 0),
(8, 333, 0),
(10, 333, 0),
(11, 333, 0),
(14, 333, 0),
(16, 333, 0),
(6, 334, 0),
(7, 334, 0),
(8, 334, 0),
(10, 334, 0),
(6, 335, 0),
(7, 335, 0),
(8, 335, 0),
(10, 335, 0),
(14, 335, 0),
(6, 336, 0),
(7, 336, 0),
(8, 336, 0),
(10, 336, 0),
(12, 336, 0),
(13, 336, 0),
(18, 336, 0),
(6, 337, 0),
(7, 337, 0),
(8, 337, 0),
(10, 337, 0),
(11, 337, 0),
(13, 337, 0),
(14, 337, 0),
(17, 337, 0),
(18, 337, 0),
(6, 338, 0),
(7, 338, 0),
(8, 338, 0),
(10, 338, 0),
(11, 338, 0),
(12, 338, 0),
(14, 338, 0),
(15, 338, 0),
(6, 339, 0),
(7, 339, 0),
(8, 339, 0),
(10, 339, 0),
(11, 339, 0),
(13, 339, 0),
(14, 339, 0),
(17, 339, 0),
(18, 339, 0),
(6, 340, 0),
(7, 340, 0),
(8, 340, 0),
(10, 340, 0),
(11, 340, 0),
(13, 340, 0),
(18, 340, 0),
(6, 341, 0),
(7, 341, 0),
(8, 341, 0),
(10, 341, 0),
(6, 342, 0),
(7, 342, 0),
(8, 342, 0),
(10, 342, 0),
(14, 342, 0),
(6, 343, 0),
(7, 343, 0),
(8, 343, 0),
(10, 343, 0),
(6, 344, 0),
(7, 344, 0),
(8, 344, 0),
(10, 344, 0),
(6, 345, 0),
(7, 345, 0),
(8, 345, 0),
(10, 345, 0),
(14, 345, 0),
(14, 345, 1),
(6, 346, 0),
(7, 346, 0),
(8, 346, 0),
(10, 346, 0),
(13, 346, 0),
(14, 346, 0),
(18, 346, 0),
(6, 347, 0),
(7, 347, 0),
(8, 347, 0),
(10, 347, 0),
(6, 348, 0),
(6, 348, 1),
(7, 348, 0),
(7, 348, 1),
(8, 348, 0),
(8, 348, 1),
(10, 348, 0),
(10, 348, 1),
(6, 349, 0),
(7, 349, 0),
(8, 349, 0),
(10, 349, 0),
(15, 349, 0),
(6, 350, 0),
(7, 350, 0),
(8, 350, 0),
(10, 350, 0),
(6, 351, 0),
(7, 351, 0),
(8, 351, 0),
(10, 351, 0),
(11, 351, 0),
(16, 351, 0),
(6, 352, 0),
(7, 352, 0),
(8, 352, 0),
(10, 352, 0),
(12, 352, 0),
(6, 353, 0),
(7, 353, 0),
(8, 353, 0),
(10, 353, 0),
(12, 353, 0),
(14, 353, 0),
(6, 354, 0),
(7, 354, 0),
(8, 354, 0),
(10, 354, 0),
(11, 354, 0),
(13, 354, 0),
(13, 354, 1),
(18, 354, 0),
(18, 354, 1),
(6, 355, 0),
(7, 355, 0),
(8, 355, 0),
(10, 355, 0),
(11, 355, 0),
(17, 355, 0),
(6, 356, 0),
(7, 356, 0),
(8, 356, 0),
(10, 356, 0),
(17, 356, 0),
(6, 357, 0),
(7, 357, 0),
(8, 357, 0),
(10, 357, 0),
(6, 358, 0),
(7, 358, 0),
(8, 358, 0),
(10, 358, 0),
(6, 359, 0),
(7, 359, 0),
(8, 359, 0),
(10, 359, 0),
(16, 359, 0),
(6, 360, 0),
(7, 360, 0),
(8, 360, 0),
(10, 360, 0),
(6, 361, 0),
(7, 361, 0),
(8, 361, 0),
(10, 361, 0),
(6, 362, 0),
(7, 362, 0),
(8, 362, 0),
(10, 362, 0),
(6, 363, 0),
(7, 363, 0),
(8, 363, 0),
(10, 363, 0),
(17, 363, 0),
(6, 364, 0),
(7, 364, 0),
(8, 364, 0),
(10, 364, 0),
(6, 365, 0),
(7, 365, 0),
(8, 365, 0),
(10, 365, 0),
(6, 366, 0),
(7, 366, 0),
(8, 366, 0),
(10, 366, 0),
(6, 367, 0),
(7, 367, 0),
(8, 367, 0),
(10, 367, 0),
(6, 368, 0),
(7, 368, 0),
(8, 368, 0),
(10, 368, 0),
(6, 369, 0),
(7, 369, 0),
(8, 369, 0),
(10, 369, 0),
(6, 370, 0),
(7, 370, 0),
(8, 370, 0),
(10, 370, 0),
(13, 370, 0),
(14, 370, 0),
(17, 370, 0),
(18, 370, 0),
(19, 370, 0),
(6, 371, 0),
(7, 371, 0),
(8, 371, 0),
(10, 371, 0),
(13, 371, 0),
(14, 371, 0),
(18, 371, 0),
(19, 371, 0),
(6, 372, 0),
(7, 372, 0),
(8, 372, 0),
(10, 372, 0),
(17, 372, 0),
(6, 373, 0),
(7, 373, 0),
(8, 373, 0),
(10, 373, 0),
(17, 373, 0),
(6, 374, 0),
(7, 374, 0),
(8, 374, 0),
(6, 375, 0),
(7, 375, 0),
(8, 375, 0),
(6, 376, 0),
(7, 376, 0),
(8, 376, 0),
(13, 376, 0),
(18, 376, 0),
(6, 377, 0),
(7, 377, 0),
(8, 377, 0),
(6, 378, 0),
(7, 378, 0),
(8, 378, 0),
(6, 379, 0),
(7, 379, 0),
(8, 379, 0),
(6, 380, 1),
(7, 380, 1),
(8, 380, 1),
(10, 380, 1),
(14, 380, 0),
(6, 381, 1),
(7, 381, 1),
(8, 381, 1),
(10, 381, 1),
(11, 382, 0),
(13, 382, 0),
(14, 382, 0),
(18, 382, 0),
(11, 383, 0),
(14, 383, 0),
(15, 383, 0),
(17, 383, 0),
(17, 383, 1),
(11, 384, 0),
(13, 384, 0),
(18, 384, 0),
(11, 385, 0),
(11, 386, 0),
(11, 387, 0),
(11, 387, 1),
(13, 387, 0),
(14, 387, 0),
(17, 387, 0),
(18, 387, 0),
(19, 387, 0),
(11, 388, 0),
(11, 388, 1),
(13, 388, 0),
(14, 388, 0),
(18, 388, 0),
(11, 389, 0),
(11, 390, 0),
(11, 391, 0),
(11, 392, 0),
(12, 392, 0),
(13, 392, 0),
(14, 392, 0),
(15, 392, 0),
(17, 392, 0),
(18, 392, 0),
(11, 393, 0),
(11, 394, 0),
(13, 394, 0),
(18, 394, 0),
(11, 395, 0),
(11, 396, 0),
(12, 396, 0),
(11, 397, 0),
(13, 397, 0),
(18, 397, 0),
(11, 398, 0),
(11, 399, 0),
(11, 400, 0),
(12, 400, 0),
(13, 400, 0),
(14, 400, 0),
(18, 400, 0),
(11, 401, 0),
(12, 401, 0),
(14, 401, 0),
(15, 401, 0),
(16, 401, 0),
(11, 402, 0),
(12, 402, 0),
(13, 402, 0),
(14, 402, 0),
(15, 402, 0),
(16, 402, 0),
(18, 402, 0),
(19, 402, 0),
(11, 403, 0),
(11, 403, 1),
(12, 403, 0),
(14, 403, 0),
(11, 404, 0),
(12, 404, 0),
(13, 404, 0),
(14, 404, 0),
(15, 404, 0),
(16, 404, 0),
(17, 404, 0),
(18, 404, 0),
(19, 404, 0),
(11, 405, 0),
(12, 405, 0),
(13, 405, 0),
(14, 405, 0),
(15, 405, 0),
(16, 405, 0),
(17, 405, 0),
(18, 405, 0),
(19, 405, 0),
(11, 406, 0),
(12, 406, 0),
(13, 406, 0),
(14, 406, 0),
(15, 406, 0),
(16, 406, 0),
(17, 406, 0),
(18, 406, 0),
(19, 406, 0),
(11, 407, 0),
(12, 407, 0),
(13, 407, 0),
(14, 407, 0),
(15, 407, 0),
(16, 407, 0),
(17, 407, 0),
(18, 407, 0),
(19, 407, 0),
(11, 408, 0),
(11, 409, 0),
(13, 409, 0),
(14, 409, 0),
(18, 409, 0),
(11, 410, 0),
(11, 411, 0),
(19, 411, 0),
(11, 412, 0),
(11, 413, 0),
(13, 413, 0),
(18, 413, 0),
(11, 414, 0),
(11, 415, 0),
(12, 415, 0),
(11, 416, 0),
(12, 416, 0),
(11, 417, 0),
(12, 417, 0),
(15, 417, 0),
(11, 418, 0),
(14, 418, 0),
(11, 419, 0),
(16, 419, 0),
(11, 420, 0),
(12, 420, 0),
(14, 420, 0),
(17, 420, 0),
(11, 421, 0),
(14, 421, 0),
(16, 421, 0),
(11, 422, 0),
(13, 422, 0),
(18, 422, 0),
(11, 423, 0),
(14, 423, 0),
(11, 424, 0),
(13, 424, 0),
(13, 424, 1),
(14, 424, 0),
(18, 424, 0),
(18, 424, 1),
(11, 425, 0),
(13, 425, 0),
(16, 425, 0),
(18, 425, 0),
(11, 426, 0),
(13, 426, 0),
(18, 426, 0),
(11, 427, 0),
(12, 427, 0),
(13, 427, 0),
(18, 427, 0),
(11, 428, 0),
(11, 429, 0),
(11, 430, 0),
(11, 431, 0),
(11, 432, 0),
(11, 433, 0),
(12, 433, 0),
(15, 433, 0),
(17, 433, 0),
(11, 434, 0),
(13, 434, 0),
(14, 434, 0),
(16, 434, 0),
(17, 434, 0),
(18, 434, 0),
(11, 435, 0),
(12, 435, 0),
(14, 435, 0),
(11, 436, 0),
(11, 437, 0),
(11, 438, 0),
(11, 439, 0),
(12, 439, 0),
(11, 440, 0),
(13, 440, 0),
(14, 440, 0),
(18, 440, 0),
(11, 441, 0),
(11, 442, 0),
(11, 443, 0),
(11, 444, 0),
(11, 445, 0),
(13, 445, 0),
(18, 445, 0),
(11, 446, 0),
(11, 447, 0),
(13, 447, 0),
(18, 447, 0),
(11, 448, 0),
(12, 448, 0),
(14, 448, 0),
(15, 448, 0),
(11, 449, 0),
(11, 450, 0),
(11, 451, 0),
(13, 451, 0),
(14, 451, 0),
(18, 451, 0),
(11, 452, 0),
(14, 452, 0),
(11, 453, 0),
(13, 453, 0),
(18, 453, 0),
(12, 454, 0),
(12, 454, 1),
(12, 455, 0),
(12, 455, 1),
(12, 456, 0),
(14, 456, 0),
(17, 456, 0),
(12, 457, 0),
(12, 458, 0),
(12, 459, 0),
(14, 459, 0),
(12, 460, 0),
(13, 460, 0),
(14, 460, 0),
(15, 460, 0),
(18, 460, 0),
(12, 461, 0),
(12, 462, 0),
(12, 463, 0),
(12, 464, 0),
(12, 465, 0),
(19, 465, 0),
(12, 466, 0),
(12, 467, 0),
(12, 468, 0),
(13, 468, 0),
(18, 468, 0),
(12, 469, 0),
(12, 470, 0),
(12, 471, 0),
(12, 472, 0),
(14, 472, 0),
(15, 472, 0),
(12, 473, 0),
(12, 474, 0),
(12, 475, 0),
(12, 476, 0),
(13, 476, 0),
(14, 476, 0),
(18, 476, 0),
(12, 477, 0),
(12, 478, 0),
(12, 479, 0),
(17, 479, 0),
(12, 480, 0),
(12, 481, 0),
(12, 482, 0),
(14, 482, 0),
(12, 483, 0),
(14, 483, 0),
(12, 484, 0),
(14, 484, 0),
(12, 485, 0),
(12, 486, 0),
(17, 486, 0),
(12, 487, 0),
(12, 488, 0),
(14, 488, 0),
(15, 488, 0),
(16, 488, 0),
(19, 488, 0),
(12, 489, 0),
(14, 489, 0),
(12, 490, 0),
(14, 490, 0),
(12, 491, 0),
(13, 491, 0),
(18, 491, 0),
(12, 492, 0),
(12, 493, 0),
(12, 494, 0),
(12, 495, 0),
(12, 496, 0),
(12, 497, 0),
(12, 498, 0),
(12, 499, 0),
(12, 500, 0),
(12, 501, 0),
(12, 502, 0),
(12, 503, 0),
(13, 503, 0),
(18, 503, 0),
(19, 503, 0),
(12, 504, 0),
(12, 505, 0),
(12, 506, 0),
(12, 507, 0),
(14, 507, 0),
(12, 508, 0),
(13, 509, 0),
(14, 509, 0),
(15, 509, 0),
(18, 509, 0),
(13, 510, 0),
(14, 510, 0),
(16, 510, 0),
(18, 510, 0),
(13, 511, 0),
(18, 511, 0),
(13, 512, 0),
(18, 512, 0),
(13, 513, 0),
(15, 513, 0),
(18, 513, 0),
(13, 514, 0),
(18, 514, 0),
(13, 515, 0),
(18, 515, 0),
(13, 516, 0),
(18, 516, 0),
(13, 517, 0),
(18, 517, 0),
(13, 518, 0),
(18, 518, 0),
(13, 519, 0),
(18, 519, 0),
(13, 520, 0),
(18, 520, 0),
(13, 521, 0),
(15, 521, 0),
(18, 521, 0),
(13, 522, 0),
(18, 522, 0),
(13, 523, 0),
(18, 523, 0),
(13, 524, 0),
(18, 524, 0),
(13, 525, 0),
(18, 525, 0),
(13, 526, 0),
(18, 526, 0),
(13, 527, 0),
(16, 527, 0),
(18, 527, 0),
(13, 528, 0),
(18, 528, 0),
(13, 529, 0),
(13, 529, 1),
(18, 529, 0),
(18, 529, 1),
(13, 530, 0),
(13, 530, 1),
(18, 530, 0),
(18, 530, 1),
(13, 531, 0),
(13, 531, 1),
(18, 531, 0),
(18, 531, 1),
(13, 532, 0),
(17, 532, 0),
(18, 532, 0),
(13, 533, 0),
(18, 533, 0),
(13, 534, 0),
(14, 534, 0),
(17, 534, 0),
(18, 534, 0),
(13, 535, 0),
(18, 535, 0),
(13, 536, 0),
(18, 536, 0),
(13, 537, 0),
(18, 537, 0),
(13, 538, 0),
(18, 538, 0),
(13, 539, 0),
(18, 539, 0),
(13, 540, 0),
(18, 540, 0),
(13, 541, 0),
(18, 541, 0),
(13, 542, 0),
(18, 542, 0),
(13, 543, 0),
(18, 543, 0),
(13, 544, 0),
(18, 544, 0),
(13, 545, 0),
(14, 545, 0),
(18, 545, 0),
(13, 546, 0),
(18, 546, 0),
(13, 547, 0),
(18, 547, 0),
(13, 548, 0),
(14, 548, 0),
(18, 548, 0),
(13, 549, 0),
(18, 549, 0),
(13, 550, 0),
(18, 550, 0),
(13, 551, 0),
(18, 551, 0),
(13, 552, 0),
(18, 552, 0),
(13, 553, 0),
(18, 553, 0),
(13, 554, 0),
(18, 554, 0),
(13, 555, 0),
(18, 555, 0),
(13, 556, 0),
(14, 556, 0),
(18, 556, 0),
(13, 557, 0),
(14, 557, 0),
(18, 557, 0),
(13, 558, 0),
(18, 558, 0),
(13, 559, 0),
(18, 559, 0),
(13, 560, 0),
(17, 560, 0),
(18, 560, 0),
(13, 561, 0),
(14, 561, 0),
(18, 561, 0),
(13, 562, 0),
(18, 562, 0),
(13, 563, 0),
(18, 563, 0),
(13, 564, 0),
(18, 564, 0),
(13, 565, 0),
(14, 565, 0),
(18, 565, 0),
(13, 566, 0),
(18, 566, 0),
(13, 567, 0),
(18, 567, 0),
(13, 568, 0),
(18, 568, 0),
(13, 569, 0),
(18, 569, 0),
(13, 570, 0),
(18, 570, 0),
(13, 571, 0),
(14, 571, 0),
(18, 571, 0),
(13, 572, 0),
(18, 572, 0),
(13, 573, 0),
(18, 573, 0),
(13, 574, 0),
(18, 574, 0),
(13, 575, 0),
(18, 575, 0),
(14, 576, 0),
(14, 576, 1),
(16, 576, 0),
(14, 577, 0),
(14, 578, 0),
(14, 579, 0),
(14, 580, 0),
(19, 580, 0),
(14, 581, 0),
(14, 582, 0),
(14, 583, 0),
(14, 584, 0),
(14, 585, 0),
(14, 586, 0),
(17, 586, 0),
(14, 587, 0),
(14, 588, 0),
(14, 589, 0),
(14, 590, 0),
(14, 591, 0),
(14, 592, 0),
(16, 592, 0),
(14, 593, 0),
(16, 593, 0),
(14, 594, 0),
(14, 595, 0),
(14, 596, 0),
(14, 597, 0),
(14, 598, 0),
(14, 599, 0),
(17, 599, 0),
(14, 600, 0),
(17, 600, 0),
(14, 601, 0),
(14, 602, 0),
(14, 603, 0),
(14, 604, 0),
(14, 605, 0),
(14, 606, 0),
(14, 607, 0),
(14, 608, 0),
(14, 609, 0),
(14, 610, 0),
(14, 611, 0),
(14, 612, 0),
(14, 613, 0),
(14, 614, 0),
(14, 615, 0),
(14, 616, 0),
(14, 617, 0),
(14, 618, 0),
(14, 619, 0),
(14, 620, 0),
(14, 621, 0),
(14, 622, 0),
(14, 623, 0),
(14, 624, 0),
(14, 625, 0),
(14, 626, 0),
(14, 627, 0),
(14, 628, 0),
(14, 629, 0),
(14, 630, 0),
(14, 631, 0),
(14, 632, 0),
(14, 633, 0),
(14, 634, 0),
(14, 635, 0),
(14, 636, 0),
(14, 637, 0),
(14, 638, 0),
(17, 638, 0),
(17, 638, 1),
(14, 639, 0),
(14, 640, 0),
(14, 641, 0),
(14, 642, 0),
(14, 643, 0),
(14, 644, 0),
(14, 645, 0),
(14, 646, 0),
(14, 647, 0),
(14, 648, 0),
(15, 648, 0),
(14, 649, 0),
(14, 650, 0),
(14, 651, 0),
(14, 652, 0),
(14, 653, 0),
(16, 653, 0),
(14, 654, 0),
(15, 654, 0),
(15, 654, 1),
(14, 655, 0),
(14, 656, 0),
(14, 657, 0),
(17, 657, 0),
(14, 658, 0),
(14, 659, 0),
(14, 660, 0),
(14, 661, 0),
(15, 662, 0),
(15, 662, 1),
(15, 663, 0),
(15, 664, 0),
(19, 664, 0),
(15, 665, 0),
(15, 666, 0),
(15, 667, 0),
(17, 667, 0),
(15, 668, 0),
(15, 668, 1),
(15, 669, 0),
(15, 670, 0),
(16, 670, 0),
(15, 671, 0),
(15, 672, 0),
(15, 673, 0),
(15, 674, 0),
(15, 675, 0),
(15, 675, 1),
(15, 676, 0),
(15, 676, 1),
(15, 677, 0),
(15, 678, 0),
(15, 679, 0),
(17, 679, 0),
(15, 680, 0),
(15, 681, 0),
(15, 682, 0),
(15, 683, 0),
(15, 684, 0),
(16, 684, 0),
(15, 685, 0),
(15, 686, 0),
(15, 687, 0),
(15, 688, 0),
(15, 689, 0),
(15, 690, 0),
(15, 691, 0),
(15, 692, 0),
(15, 693, 0),
(16, 694, 0),
(16, 695, 0),
(16, 696, 0),
(16, 697, 0),
(16, 698, 0),
(16, 699, 0),
(16, 700, 0),
(16, 701, 0),
(16, 702, 0),
(16, 703, 0),
(16, 704, 0),
(16, 705, 0),
(16, 706, 0),
(16, 707, 0),
(16, 708, 0),
(16, 709, 0),
(17, 710, 0),
(17, 710, 1),
(17, 711, 0),
(17, 712, 0),
(17, 713, 0),
(19, 713, 0),
(17, 714, 0),
(19, 714, 0),
(19, 714, 1),
(20, 714, 1),
(17, 715, 0),
(17, 716, 0),
(17, 717, 0),
(17, 718, 0),
(17, 719, 0),
(17, 720, 0),
(17, 721, 0),
(17, 722, 0),
(17, 723, 0),
(17, 724, 0),
(17, 725, 0),
(17, 726, 0),
(17, 727, 0),
(17, 728, 0),
(17, 729, 0),
(17, 730, 0),
(17, 731, 0),
(17, 732, 0),
(17, 733, 0),
(17, 734, 0),
(17, 735, 0),
(17, 736, 0),
(17, 737, 0),
(19, 738, 0),
(19, 738, 1),
(20, 738, 1),
(19, 739, 0),
(19, 740, 0),
(19, 741, 0),
(19, 742, 0),
(19, 743, 0),
(19, 744, 0),
(19, 745, 0),
(19, 746, 0),
(19, 747, 0),
(19, 748, 0),
(19, 749, 0),
(19, 750, 0),
(19, 751, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_sessions`
--

CREATE TABLE `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_last_visit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `session_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `session_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `session_autologin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `session_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `session_forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`, `session_forum_id`) VALUES
('53eed896c64cd555a64122c4d943cc85', 2, 1609851787, 1609915244, 1609919959, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '', 'index.php', 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_sessions_keys`
--

CREATE TABLE `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_sitelist`
--

CREATE TABLE `phpbb_sitelist` (
  `site_id` mediumint(8) UNSIGNED NOT NULL,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_smilies`
--

CREATE TABLE `phpbb_smilies` (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `smiley_height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `smiley_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_styles`
--

CREATE TABLE `phpbb_styles` (
  `style_id` mediumint(8) UNSIGNED NOT NULL,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `style_parent_tree` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_styles`
--

INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `style_path`, `bbcode_bitfield`, `style_parent_id`, `style_parent_tree`) VALUES
(1, 'prosilver', '&copy; phpBB Limited', 0, 'prosilver', '//g=', 0, ''),
(2, 'Milk v2', '© PlanetStyles.net - Premium Forum Themes', 1, 'Milk_v2', '//g=', 1, 'prosilver');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_teampage`
--

CREATE TABLE `phpbb_teampage` (
  `teampage_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `teampage_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_teampage`
--

INSERT INTO `phpbb_teampage` (`teampage_id`, `group_id`, `teampage_name`, `teampage_position`, `teampage_parent`) VALUES
(1, 5, '', 1, 0),
(2, 4, '', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_thanks`
--

CREATE TABLE `phpbb_thanks` (
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `poster_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `thanks_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_topics`
--

CREATE TABLE `phpbb_topics` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `topic_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_time_limit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_views` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_status` tinyint(3) NOT NULL DEFAULT 0,
  `topic_type` tinyint(3) NOT NULL DEFAULT 0,
  `topic_first_post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_last_view_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_moved_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_bumped` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `topic_bumper` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `poll_length` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `poll_max_options` tinyint(4) NOT NULL DEFAULT 1,
  `poll_last_vote` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `poll_vote_change` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `topic_visibility` tinyint(3) NOT NULL DEFAULT 0,
  `topic_delete_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `answer_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `answer_user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `poll_on_index` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_topics`
--

INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`, `topic_visibility`, `topic_delete_time`, `topic_delete_reason`, `topic_delete_user`, `topic_posts_approved`, `topic_posts_unapproved`, `topic_posts_softdeleted`, `answer_post_id`, `answer_user_id`, `poll_on_index`) VALUES
(1, 2, 0, 0, 0, 'Welcome to phpBB3', 2, 1603785223, 0, 1, 0, 0, 1, 'admin', 'AA0000', 1, 2, 'admin', 'AA0000', 'Welcome to phpBB3', 1603785223, 1603859797, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(2, 2, 0, 1, 0, 'REVIEW SÁCH', 2, 1603789290, 0, 11, 0, 0, 2, 'admin', 'AA0000', 2, 2, 'admin', 'AA0000', 'REVIEW SÁCH', 1603789290, 1603906165, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(3, 2, 0, 0, 0, 'TEST', 2, 1603859751, 0, 1, 0, 0, 3, 'admin', 'AA0000', 3, 2, 'admin', 'AA0000', 'TEST', 1603859751, 1603859751, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(4, 2, 0, 0, 0, 'Nanh Trang', 2, 1603871352, 0, 8, 0, 0, 4, 'admin', 'AA0000', 4, 2, 'admin', 'AA0000', 'Nanh Trang', 1603871352, 1603942336, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(5, 2, 0, 0, 0, '1.	Tâm lý – Kỹ năng sống:', 2, 1603942302, 0, 10, 0, 0, 5, 'admin', 'AA0000', 5, 2, 'admin', 'AA0000', '1.	Tâm lý – Kỹ năng sống:', 1603942302, 1608534934, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(6, 8, 0, 0, 0, '[Thông báo] Tính năng Rank', 2, 1609762369, 0, 1, 0, 0, 6, 'admin', 'AA0000', 6, 2, 'admin', 'AA0000', '[Thông báo] Tính năng Rank', 1609762369, 1609762686, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(7, 8, 0, 0, 0, '[Thông báo] Tính năng Rank', 2, 1609762385, 0, 0, 0, 0, 7, 'admin', 'AA0000', 7, 2, 'admin', 'AA0000', '[Thông báo] Tính năng Rank', 1609762385, 1609762385, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(8, 8, 0, 0, 0, '[Thông báo] Tính năng Rank', 2, 1609762431, 0, 0, 0, 0, 8, 'admin', 'AA0000', 8, 2, 'admin', 'AA0000', '[Thông báo] Tính năng Rank', 1609762431, 1609762431, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(10, 2, 0, 0, 0, '[Thông báo] Tính năng Rank', 2, 1609762572, 0, 0, 0, 0, 10, 'admin', 'AA0000', 10, 2, 'admin', 'AA0000', '[Thông báo] Tính năng Rank', 1609762572, 1609762572, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(11, 2, 0, 0, 0, 'Review Nói ra đừng sợ - Kỹ năng thuyết trình cho người mới bắt đầu', 2, 1609835541, 0, 1, 0, 0, 11, 'admin', 'AA0000', 11, 2, 'admin', 'AA0000', 'Review Nói ra đừng sợ - Kỹ năng thuyết trình cho người mới bắt đầu', 1609835541, 1609835567, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(12, 2, 0, 0, 0, 'Review Sách Muốn Ít Đi, Hạnh Phúc Nhiều Hơn', 2, 1609835750, 0, 0, 0, 0, 12, 'admin', 'AA0000', 12, 2, 'admin', 'AA0000', 'Review Sách Muốn Ít Đi, Hạnh Phúc Nhiều Hơn', 1609835750, 1609835750, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(13, 2, 0, 0, 0, 'Review nghệ thuật truyền đạt, bí quyết thành công của người Nhật', 2, 1609836022, 0, 0, 0, 0, 13, 'admin', 'AA0000', 13, 2, 'admin', 'AA0000', 'Review nghệ thuật truyền đạt, bí quyết thành công của người Nhật', 1609836022, 1609836022, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(14, 2, 0, 0, 0, 'Review Sách Một Năm Tư Duy Tích Cực', 2, 1609836199, 0, 0, 0, 0, 14, 'admin', 'AA0000', 14, 2, 'admin', 'AA0000', 'Review Sách Một Năm Tư Duy Tích Cực', 1609836199, 1609836199, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(15, 2, 0, 0, 0, 'Review Sách Loài Plastic - Khi Nhựa Trỗi Dậy', 51, 1609836524, 0, 4, 0, 0, 15, 'test1', '', 15, 51, 'test1', '', 'Review Sách Loài Plastic - Khi Nhựa Trỗi Dậy', 1609836524, 1609836942, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 51, 1, 0, 0, 0, 0, 0),
(16, 2, 0, 0, 0, 'Review sách Nếu tôi biết được khi còn 20', 2, 1609837206, 0, 1, 0, 0, 16, 'admin', 'AA0000', 16, 2, 'admin', 'AA0000', 'Review sách Nếu tôi biết được khi còn 20', 1609837206, 1609913788, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0, 0, 0, 0),
(17, 2, 0, 0, 0, 'Review Hoàng Tử Bé - Triết lý về tình yêu và cuộc sống', 51, 1609843536, 0, 2, 0, 0, 17, 'test1', '', 17, 51, 'test1', '', 'Review Hoàng Tử Bé - Triết lý về tình yêu và cuộc sống', 1609843536, 1609918619, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 51, 1, 0, 0, 0, 0, 0),
(18, 2, 0, 0, 0, 'Review nghệ thuật truyền đạt, bí quyết thành công của người Nhật', 51, 1609843938, 0, 0, 0, 0, 18, 'test1', '', 18, 51, 'test1', '', 'Review nghệ thuật truyền đạt, bí quyết thành công của người Nhật', 1609843938, 1609843938, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, 0, '', 51, 0, 1, 0, 0, 0, 0),
(19, 2, 0, 0, 0, 'Review sách Tớ thích cậu hơn cả Harvard', 2, 1609914684, 0, 1, 0, 0, 19, 'admin', 'AA0000', 20, 2, 'admin', 'AA0000', 'Re: Review sách Tớ thích cậu hơn cả Harvard', 1609914764, 1609914764, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 2, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_topics_posted`
--

CREATE TABLE `phpbb_topics_posted` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_posted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 4, 1),
(2, 5, 1),
(2, 6, 1),
(2, 7, 1),
(2, 8, 1),
(2, 10, 1),
(2, 11, 1),
(2, 12, 1),
(2, 13, 1),
(2, 14, 1),
(2, 16, 1),
(2, 19, 1),
(51, 15, 1),
(51, 17, 1),
(51, 18, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_topics_track`
--

CREATE TABLE `phpbb_topics_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_topics_track`
--

INSERT INTO `phpbb_topics_track` (`user_id`, `topic_id`, `forum_id`, `mark_time`) VALUES
(2, 16, 2, 1609837207),
(2, 17, 2, 1609843536),
(2, 19, 2, 1609914764),
(51, 15, 2, 1609836525),
(51, 17, 2, 1609843537),
(51, 18, 2, 1609843939);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_topics_watch`
--

CREATE TABLE `phpbb_topics_watch` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_topics_watch`
--

INSERT INTO `phpbb_topics_watch` (`topic_id`, `user_id`, `notify_status`) VALUES
(5, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_users`
--

CREATE TABLE `phpbb_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT 0,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 3,
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastmark` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastpost_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_warnings` tinyint(4) NOT NULL DEFAULT 0,
  `user_last_warning` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT 0,
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT 0,
  `user_inactive_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT 0,
  `user_unread_privmsg` int(4) NOT NULL DEFAULT 0,
  `user_last_privmsg` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_message_rules` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_full_folder` int(11) NOT NULL DEFAULT -3,
  `user_emailtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_topic_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_notify_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_notify_type` tinyint(4) NOT NULL DEFAULT 0,
  `user_allow_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_allow_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_allow_viewemail` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_allow_massemail` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_options` int(11) UNSIGNED NOT NULL DEFAULT 230271,
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reset_token` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reset_token_expiration` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_reminded` tinyint(4) NOT NULL DEFAULT 0,
  `user_reminded_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_mchat_avatars` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_mchat_capital_letter` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_mchat_character_count` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_mchat_date` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'D M d, Y g:i a',
  `user_mchat_index` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_mchat_location` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_mchat_message_top` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_mchat_posts` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_mchat_relative_time` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_mchat_sound` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_mchat_stats_index` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_mchat_whois_index` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_answers` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_vse_tip` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_summonerName` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_summonerServer` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_signature_replace` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_favorite_movies` varchar(350) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_gender` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_about` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_pg_social_cover` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_pg_social_cover_position` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_quote` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_chat_music` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_chat_visibility` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_status_life` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_hobbies` varchar(350) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_favorite_tvseries` varchar(350) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_favorite_games` varchar(350) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_favorite_musics` varchar(350) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_favorite_books` varchar(350) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_points` decimal(14,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_users`
--

INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_email`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_jabber`, `user_actkey`, `reset_token`, `reset_token_expiration`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`, `user_mchat_avatars`, `user_mchat_capital_letter`, `user_mchat_character_count`, `user_mchat_date`, `user_mchat_index`, `user_mchat_location`, `user_mchat_message_top`, `user_mchat_posts`, `user_mchat_relative_time`, `user_mchat_sound`, `user_mchat_stats_index`, `user_mchat_whois_index`, `user_answers`, `user_vse_tip`, `user_summonerName`, `user_summonerServer`, `user_signature_replace`, `user_favorite_movies`, `user_gender`, `user_about`, `user_pg_social_cover`, `user_pg_social_cover_position`, `user_quote`, `user_chat_music`, `user_chat_visibility`, `user_status_life`, `user_hobbies`, `user_favorite_tvseries`, `user_favorite_games`, `user_favorite_musics`, `user_favorite_books`, `user_points`) VALUES
(1, 2, 1, '00000000000g13ydmo000000000000000000\nhwby9w0001kw\nhwby9w0001kw\n\n\n\n\nhwby9w0001kw\nhwby9w0001kw\nhwby9w0001kw', 0, '', 1603785223, 'Anonymous', 'anonymous', '', 0, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'hvf54y1kt1fuksuz', 1, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(2, 3, 5, 'zik0zjzik0zjzik0zjzijo6fz9tdrzwqo35s\nhwby9w0001kw\nzik0zjzijw8w\n\n\n\n\nzik0zjzijw8w\nzik0zjzijw8w\nhwby9w0001kw', 0, '::1', 1603785223, 'admin', 'admin', '$argon2i$v=19$m=65536,t=4,p=2$L1I1aFRuWklINDVrVGlNVA$bu23cjp3eOy0Z+1/m/DY5RwT9ETCBqGUxIqzBGkwnbE', 0, '1756100088@hcmussh.edu.vn', ' 0- 0-   0', 1609851787, 1607855124, 1609914764, 'mcp.php?i=-phpbbstudio-aps-mcp-main_module&mode=change&u=2', '', 1609838463, 0, 0, 0, 0, 0, 16, 'en', '', 'D M d, Y g:i a', 2, 10, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '2_1608721833.jpg', 'avatar.driver.upload', 90, 90, '<t></t>', '', '', '', '', '', 0, '', 'ke4wcjjblwl9km5i', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'Faker', 'BR', 1, '', 0, '', 'photo_cover_1609762828.webp', '', '', 1, 1, 0, '', '', '', '', '', '101001.00'),
(3, 2, 6, '', 0, '', 1603785224, 'AdsBot [Google]', 'adsbot [google]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'u6bcd7f0z1klb1p7', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(4, 2, 6, '', 0, '', 1603785224, 'Alexa [Bot]', 'alexa [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'nlgh7y1idvv9plp4', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(5, 2, 6, '', 0, '', 1603785224, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'x1h4hrzngfcp6zno', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(6, 2, 6, '', 0, '', 1603785224, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'ypgj5f8azqmjdsgm', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(7, 2, 6, '', 0, '', 1603785224, 'Baidu [Spider]', 'baidu [spider]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', '2j7zxp140oznyqob', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(8, 2, 6, '', 0, '', 1603785224, 'Bing [Bot]', 'bing [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'v0cimcksjk984d2n', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(9, 2, 6, '', 0, '', 1603785224, 'DuckDuckGo [Bot]', 'duckduckgo [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'iwd4km5b6q5b2u0s', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(10, 2, 6, '', 0, '', 1603785224, 'Exabot [Bot]', 'exabot [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'gg4jp9fzq5usv1jo', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(11, 2, 6, '', 0, '', 1603785224, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'b4if68u12xj32jk8', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(12, 2, 6, '', 0, '', 1603785224, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'dmrgp51fwqtpufdf', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(13, 2, 6, '', 0, '', 1603785224, 'Francis [Bot]', 'francis [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', '4cjyep4h8ofnq742', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(14, 2, 6, '', 0, '', 1603785224, 'Gigabot [Bot]', 'gigabot [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'bco7n9yglsta19ee', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(15, 2, 6, '', 0, '', 1603785224, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', '7u7p53hj7zlvr392', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(16, 2, 6, '', 0, '', 1603785224, 'Google Desktop', 'google desktop', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'r1eq83dxmca20hvq', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(17, 2, 6, '', 0, '', 1603785224, 'Google Feedfetcher', 'google feedfetcher', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'ftngwja1czev9dup', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(18, 2, 6, '', 0, '', 1603785224, 'Google [Bot]', 'google [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'n3f4wfcrplp2eo9p', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(19, 2, 6, '', 0, '', 1603785224, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'u22erbhn9mm0emrh', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(20, 2, 6, '', 0, '', 1603785224, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', '9x6tvpxopiznil0v', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(21, 2, 6, '', 0, '', 1603785224, 'IBM Research [Bot]', 'ibm research [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', '6528f4yfn0j1zidf', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(22, 2, 6, '', 0, '', 1603785224, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', '7s7tilirfjngehsv', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(23, 2, 6, '', 0, '', 1603785224, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'zlzqs903nu3pta5h', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(24, 2, 6, '', 0, '', 1603785224, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'd4igjuv7rpgti0i2', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(25, 2, 6, '', 0, '', 1603785224, 'Metager [Bot]', 'metager [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'ngpsknzbt70q8qrf', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(26, 2, 6, '', 0, '', 1603785224, 'MSN NewsBlogs', 'msn newsblogs', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'v8n3555dnuvfrwcp', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(27, 2, 6, '', 0, '', 1603785224, 'MSN [Bot]', 'msn [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'whf3k0rdj60l17gb', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(28, 2, 6, '', 0, '', 1603785224, 'MSNbot Media', 'msnbot media', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'cp2foyko1d8bcwm9', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(29, 2, 6, '', 0, '', 1603785224, 'Nutch [Bot]', 'nutch [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'rceyfa738cw8gm6b', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(30, 2, 6, '', 0, '', 1603785224, 'Online link [Validator]', 'online link [validator]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'y7ptziswroretzue', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(31, 2, 6, '', 0, '', 1603785224, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'h74wwbm0rfqij0lg', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(32, 2, 6, '', 0, '', 1603785224, 'Sensis [Crawler]', 'sensis [crawler]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', '2bduqw9sg2hreqo4', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(33, 2, 6, '', 0, '', 1603785224, 'SEO Crawler', 'seo crawler', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'uik9t7u1z4gxho0w', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(34, 2, 6, '', 0, '', 1603785224, 'Seoma [Crawler]', 'seoma [crawler]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'rmh0mk00ouz7mlcu', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(35, 2, 6, '', 0, '', 1603785224, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'd1g6wx8idxh24qg3', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(36, 2, 6, '', 0, '', 1603785224, 'Snappy [Bot]', 'snappy [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'ky0k3t4ebgos8kw1', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(37, 2, 6, '', 0, '', 1603785224, 'Steeler [Crawler]', 'steeler [crawler]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'l4g4roh2is9dxfjt', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(38, 2, 6, '', 0, '', 1603785224, 'Telekom [Bot]', 'telekom [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'nhyohig3fp0mtvkj', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(39, 2, 6, '', 0, '', 1603785224, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'fadtw6x2wuhhiibx', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(40, 2, 6, '', 0, '', 1603785224, 'Voyager [Bot]', 'voyager [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'ohkuti4dmtnrc3uc', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(41, 2, 6, '', 0, '', 1603785224, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'vlsnytileng8v493', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(42, 2, 6, '', 0, '', 1603785224, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'wet9irirv5pz2opr', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(43, 2, 6, '', 0, '', 1603785224, 'W3C [Validator]', 'w3c [validator]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', '7uu9sop0w42l8ea9', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(44, 2, 6, '', 0, '', 1603785224, 'YaCy [Bot]', 'yacy [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'mpjm7hc3ngffte66', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(45, 2, 6, '', 0, '', 1603785224, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'uf0aqynzj3g0c3qw', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(46, 2, 6, '', 0, '', 1603785224, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'v0jhf87mvqi93t1w', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(47, 2, 6, '', 0, '', 1603785224, 'Yahoo [Bot]', 'yahoo [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'f08hjawlnfpcxa1x', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(48, 2, 6, '', 0, '', 1603785224, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1603785224, '', '', 0, 1603785224, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '<t></t>', '', '', '', '', '', 0, '', 'a5way8nrmron2q7k', 0, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(49, 0, 2, '', 0, '::1', 1603870012, 'kimtran', 'kimtran', '$argon2i$v=19$m=65536,t=4,p=2$eE5sRmRRTUJFR0l1VXlzTw$u/5dy2xeN1moKFyOnTdF/frMCQDF4qpjqc6S8vGrVqQ', 1609248262, 'audition039710@gmail.com', '', 1609248524, 1603870012, 0, 'viewforum.php?f=2', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Antarctica/Davis', 'D M d, Y g:i a', 2, 3, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '49_1608619611.jpg', 'avatar.driver.upload', 90, 90, '', '', '', '', '', '', 0, '', 'dxjng7ycz210hjgf', 1, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(50, 0, 2, '', 0, '::1', 1603958201, 'giaan', 'giaan', '$argon2i$v=19$m=65536,t=4,p=2$bDhZQUwyVmxZcEtxR21FTw$f2o04VYefD0GcvAw+1SRj6JBFjYZwOhF/YcF+7ubH7c', 1603958201, 'minhtri123@gmail.com', '', 1604065262, 1603959477, 0, 'index.php', '', 0, 0, 0, 3, 0, 0, 0, 'en', 'Antarctica/Davis', 'D M d, Y g:i a', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '50_1603960424.jpg', 'avatar.driver.upload', 90, 90, '', '', '', '', '', '', 0, '', 'gsq4nu4k55ik62sx', 1, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(51, 0, 2, '00000000000v6ez2zurod53beze5c3vmppmo\nhwby9w0001kw\nm6awadqmzitc\n\n\n\n\nm6awadqmzitc\nm6awadqmzitc\nhwby9w0001kw', 0, '::1', 1608620312, 'test1', 'test1', '$argon2i$v=19$m=65536,t=4,p=2$Y09ldFo3RjlVYmxiY2pFaw$g+6vYbFeXV0vfKlSM1Yd8gWZQogHwqn7CYOi+ZC9uvo', 1608620312, 'audition0397100@gmail.com', '', 1609844173, 1608620312, 1609843938, 'memberlist.php?gall=2&mode=viewprofile&u=2', '', 0, 0, 0, 0, 0, 0, 2, 'en', 'Antarctica/Davis', 'D M d, Y g:i a', 2, 7, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '51_1608621339.png', 'avatar.driver.upload', 90, 90, '', '', '', '', '', '', 0, '', 'orsqcgq2gl2wircq', 1, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', 'photo_cover_1608620403.webp', '', '', 1, 1, 0, '', '', '', '', '', '500.00'),
(52, 0, 2, '00000000000v6ez2zurod53beze5c3vmppmo\nhwby9w0001kw\nm6awadqmzitc\n\n\n\n\nm6awadqmzitc\nm6awadqmzitc\nhwby9w0001kw', 0, '::1', 1609833911, 'jack', 'jack', '$argon2i$v=19$m=65536,t=4,p=2$bVZJbFkzUmM4a0dqSVFGaw$z/aTVM0I2qdsuHxHtTCkifq7Pcw0Gb7DROwy+FXbG1U', 1609833911, 'bookstation@gmail.com', '', 1609845743, 1609833911, 0, 'memberlist.php?mode=viewprofile&u=52', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Bangkok', '30/12/2020 21:47', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '52_1609846572.jpg', 'avatar.driver.upload', 120, 120, '', '', '', '', '', '', 0, '', 'yuypdrvkxx3zxkyv', 1, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00'),
(53, 0, 2, '00000000000v6ez2zurod53beze5c3vmppmo\nhwby9w0001kw\nm6awadqmzitc\n\n\n\n\nm6awadqmzitc\nm6awadqmzitc\nhwby9w0001kw', 0, '::1', 1609913231, 'test2', 'test2', '$argon2i$v=19$m=65536,t=4,p=2$andNWjNpTmkzblNzck11TA$X10Ns/UeXhXgFOucaQqoYQ+Fzj2SrLpo+f1QyScKlLM', 1609913231, 'nguyenminhtri@gmail.com', '', 1609913405, 1609913231, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Ho_Chi_Minh', '30/12/2020 21:47', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '53_1609913350.jpg', 'avatar.driver.upload', 120, 120, '', '', '', '', '', '', 0, '', 'pweir8bi9i89y2p1', 1, 0, 0, 1, 1, 1, 'D M d, Y g:i a', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '', '', 0, '', 0, '', '', '', '', 1, 1, 0, '', '', '', '', '', '0.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_user_group`
--

CREATE TABLE `phpbb_user_group` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `group_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_pending` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0),
(6, 48, 0, 0),
(2, 49, 0, 0),
(7, 49, 0, 0),
(2, 50, 0, 0),
(7, 50, 0, 0),
(2, 51, 0, 0),
(7, 51, 0, 0),
(2, 52, 0, 0),
(7, 52, 0, 0),
(2, 53, 0, 0),
(7, 53, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_user_notifications`
--

CREATE TABLE `phpbb_user_notifications` (
  `item_type` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `method` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_user_notifications`
--

INSERT INTO `phpbb_user_notifications` (`item_type`, `item_id`, `user_id`, `method`, `notify`) VALUES
('notification.type.post', 0, 2, 'notification.method.board', 1),
('notification.type.post', 0, 2, 'notification.method.email', 1),
('notification.type.post', 0, 3, 'notification.method.email', 1),
('notification.type.post', 0, 4, 'notification.method.email', 1),
('notification.type.post', 0, 5, 'notification.method.email', 1),
('notification.type.post', 0, 6, 'notification.method.email', 1),
('notification.type.post', 0, 7, 'notification.method.email', 1),
('notification.type.post', 0, 8, 'notification.method.email', 1),
('notification.type.post', 0, 9, 'notification.method.email', 1),
('notification.type.post', 0, 10, 'notification.method.email', 1),
('notification.type.post', 0, 11, 'notification.method.email', 1),
('notification.type.post', 0, 12, 'notification.method.email', 1),
('notification.type.post', 0, 13, 'notification.method.email', 1),
('notification.type.post', 0, 14, 'notification.method.email', 1),
('notification.type.post', 0, 15, 'notification.method.email', 1),
('notification.type.post', 0, 16, 'notification.method.email', 1),
('notification.type.post', 0, 17, 'notification.method.email', 1),
('notification.type.post', 0, 18, 'notification.method.email', 1),
('notification.type.post', 0, 19, 'notification.method.email', 1),
('notification.type.post', 0, 20, 'notification.method.email', 1),
('notification.type.post', 0, 21, 'notification.method.email', 1),
('notification.type.post', 0, 22, 'notification.method.email', 1),
('notification.type.post', 0, 23, 'notification.method.email', 1),
('notification.type.post', 0, 24, 'notification.method.email', 1),
('notification.type.post', 0, 25, 'notification.method.email', 1),
('notification.type.post', 0, 26, 'notification.method.email', 1),
('notification.type.post', 0, 27, 'notification.method.email', 1),
('notification.type.post', 0, 28, 'notification.method.email', 1),
('notification.type.post', 0, 29, 'notification.method.email', 1),
('notification.type.post', 0, 30, 'notification.method.email', 1),
('notification.type.post', 0, 31, 'notification.method.email', 1),
('notification.type.post', 0, 32, 'notification.method.email', 1),
('notification.type.post', 0, 33, 'notification.method.email', 1),
('notification.type.post', 0, 34, 'notification.method.email', 1),
('notification.type.post', 0, 35, 'notification.method.email', 1),
('notification.type.post', 0, 36, 'notification.method.email', 1),
('notification.type.post', 0, 37, 'notification.method.email', 1),
('notification.type.post', 0, 38, 'notification.method.email', 1),
('notification.type.post', 0, 39, 'notification.method.email', 1),
('notification.type.post', 0, 40, 'notification.method.email', 1),
('notification.type.post', 0, 41, 'notification.method.email', 1),
('notification.type.post', 0, 42, 'notification.method.email', 1),
('notification.type.post', 0, 43, 'notification.method.email', 1),
('notification.type.post', 0, 44, 'notification.method.email', 1),
('notification.type.post', 0, 45, 'notification.method.email', 1),
('notification.type.post', 0, 46, 'notification.method.email', 1),
('notification.type.post', 0, 47, 'notification.method.email', 1),
('notification.type.post', 0, 48, 'notification.method.email', 1),
('notification.type.post', 0, 49, 'notification.method.email', 1),
('notification.type.post', 0, 50, 'notification.method.email', 1),
('notification.type.post', 0, 51, 'notification.method.email', 1),
('notification.type.post', 0, 52, 'notification.method.email', 1),
('notification.type.post', 0, 53, 'notification.method.email', 1),
('notification.type.topic', 0, 2, 'notification.method.board', 1),
('notification.type.topic', 0, 2, 'notification.method.email', 1),
('notification.type.topic', 0, 3, 'notification.method.email', 1),
('notification.type.topic', 0, 4, 'notification.method.email', 1),
('notification.type.topic', 0, 5, 'notification.method.email', 1),
('notification.type.topic', 0, 6, 'notification.method.email', 1),
('notification.type.topic', 0, 7, 'notification.method.email', 1),
('notification.type.topic', 0, 8, 'notification.method.email', 1),
('notification.type.topic', 0, 9, 'notification.method.email', 1),
('notification.type.topic', 0, 10, 'notification.method.email', 1),
('notification.type.topic', 0, 11, 'notification.method.email', 1),
('notification.type.topic', 0, 12, 'notification.method.email', 1),
('notification.type.topic', 0, 13, 'notification.method.email', 1),
('notification.type.topic', 0, 14, 'notification.method.email', 1),
('notification.type.topic', 0, 15, 'notification.method.email', 1),
('notification.type.topic', 0, 16, 'notification.method.email', 1),
('notification.type.topic', 0, 17, 'notification.method.email', 1),
('notification.type.topic', 0, 18, 'notification.method.email', 1),
('notification.type.topic', 0, 19, 'notification.method.email', 1),
('notification.type.topic', 0, 20, 'notification.method.email', 1),
('notification.type.topic', 0, 21, 'notification.method.email', 1),
('notification.type.topic', 0, 22, 'notification.method.email', 1),
('notification.type.topic', 0, 23, 'notification.method.email', 1),
('notification.type.topic', 0, 24, 'notification.method.email', 1),
('notification.type.topic', 0, 25, 'notification.method.email', 1),
('notification.type.topic', 0, 26, 'notification.method.email', 1),
('notification.type.topic', 0, 27, 'notification.method.email', 1),
('notification.type.topic', 0, 28, 'notification.method.email', 1),
('notification.type.topic', 0, 29, 'notification.method.email', 1),
('notification.type.topic', 0, 30, 'notification.method.email', 1),
('notification.type.topic', 0, 31, 'notification.method.email', 1),
('notification.type.topic', 0, 32, 'notification.method.email', 1),
('notification.type.topic', 0, 33, 'notification.method.email', 1),
('notification.type.topic', 0, 34, 'notification.method.email', 1),
('notification.type.topic', 0, 35, 'notification.method.email', 1),
('notification.type.topic', 0, 36, 'notification.method.email', 1),
('notification.type.topic', 0, 37, 'notification.method.email', 1),
('notification.type.topic', 0, 38, 'notification.method.email', 1),
('notification.type.topic', 0, 39, 'notification.method.email', 1),
('notification.type.topic', 0, 40, 'notification.method.email', 1),
('notification.type.topic', 0, 41, 'notification.method.email', 1),
('notification.type.topic', 0, 42, 'notification.method.email', 1),
('notification.type.topic', 0, 43, 'notification.method.email', 1),
('notification.type.topic', 0, 44, 'notification.method.email', 1),
('notification.type.topic', 0, 45, 'notification.method.email', 1),
('notification.type.topic', 0, 46, 'notification.method.email', 1),
('notification.type.topic', 0, 47, 'notification.method.email', 1),
('notification.type.topic', 0, 48, 'notification.method.email', 1),
('notification.type.topic', 0, 49, 'notification.method.email', 1),
('notification.type.topic', 0, 50, 'notification.method.email', 1),
('notification.type.topic', 0, 51, 'notification.method.email', 1),
('notification.type.topic', 0, 52, 'notification.method.email', 1),
('notification.type.topic', 0, 53, 'notification.method.email', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_video`
--

CREATE TABLE `phpbb_video` (
  `video_id` int(11) UNSIGNED NOT NULL,
  `video_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `video_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `video_cat_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `youtube_id` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `video_views` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_video`
--

INSERT INTO `phpbb_video` (`video_id`, `video_url`, `video_title`, `video_cat_id`, `username`, `user_id`, `youtube_id`, `create_time`, `video_views`) VALUES
(1, 'https://www.youtube.com/watch?v=sQd-d0dhEfE', 'REVIEW SÁCH 5 SAO ĐÁNG ĐỌC - Phần 3 | 5-star books  Hà Khuất', 2, 'admin', '2', 'sQd-d0dhEfE', 1603862274, '2'),
(2, 'https://www.youtube.com/watch?v=trvmyRgTo5s&amp;vl=vi', '[review sách] TOP 10 CUỐN SÁCH HAY NHẤT 2019', 2, 'admin', '2', 'trvmyRgTo5s', 1603862302, '0'),
(3, 'https://www.youtube.com/watch?v=InUPkY6bEzc', '[review sách] TOP 12 CUỐN SÁCH HAY NHẤT ? (à, với mình thôi)', 2, 'admin', '2', 'InUPkY6bEzc', 1603862314, '0'),
(4, 'https://youtu.be/rAZeSk0Z2to', '', 2, 'admin', '2', 'rAZeSk0Z2to', 1603862522, '0'),
(5, 'https://www.youtube.com/watch?v=GC9n6HR3kso', 'Audio +  Ebook Cà phê cùng TONY - Tony buổi sáng - Download sách pdf,epub,mobi miễn phí', 3, 'admin', '2', 'GC9n6HR3kso', 1603869127, '0'),
(6, 'https://www.youtube.com/watch?v=ARjzlfh5mQ8', 'Audio book, sách nói, ebook CON NGƯỜI 80/20 Phần 1 - Richard Koch', 3, 'admin', '2', 'ARjzlfh5mQ8', 1603869145, '2'),
(7, 'https://www.youtube.com/watch?v=l4kNpnUPWME', 'Book Audio | Hài Hước Một Chút Thế Giới Sẽ Khác Đi - Chương 1 | Đọc Sách Mỗi Ngày', 3, 'admin', '2', 'l4kNpnUPWME', 1603869155, '2'),
(8, 'https://www.youtube.com/watch?v=PS8oLUEHhjA', 'Albert Einstein Con Người Vĩ Đại Sách Nói, Audio Book, Ebook, Sách Kinh Doanh', 3, 'admin', '2', 'PS8oLUEHhjA', 1603869167, '1'),
(9, 'https://www.youtube.com/watch?v=aTLKL_s9w5w', '[AudioBooks] Sống đơn giản cho mình thanh thản', 3, 'admin', '2', 'aTLKL_s9w5w', 1603869247, '0'),
(10, 'https://www.youtube.com/watch?v=yWQo_AAHDUA', 'Audiobooks - The Little Prince - Antoine de Saint-Exupéry', 3, 'admin', '2', 'yWQo_AAHDUA', 1603869261, '0'),
(11, 'https://www.youtube.com/watch?v=uUcJSTpMavA', 'AUDIO BOOK -Alice in Wonderland-improve your listening and reading', 3, 'admin', '2', 'uUcJSTpMavA', 1603869272, '1'),
(12, 'https://www.youtube.com/watch?v=qOhl-rSRowM', 'Audio book, sách nói, ebook ĐƯỜNG RA BIỂN LỚN Chương 1 - Richard Branson', 3, 'admin', '2', 'qOhl-rSRowM', 1603869285, '0'),
(13, 'https://www.youtube.com/watch?v=bP3Hw6MVayI&amp;feature=youtu.be&amp;fbclid=IwAR3H6_eXGOjXD4jpnZPbY6HXtf4lwVqu6o4ZVb4VHzi2EyCq-Iqz_wnb9WQ', 'Ban Chinh thuc review sach nanh trang', 2, 'admin', '2', 'bP3Hw6MVayI', 1603943522, '5'),
(14, 'https://www.youtube.com/watch?v=DbonCgmCHJY', '[REVIEW SÁCH]: NHÀ GIẢ KIM REVIEW - DÁM THEO ĐUỔI VÀ SỐNG VỚI ƯỚC MƠ | DANG HNN', 2, 'admin', '2', 'DbonCgmCHJY', 1609917059, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_video_cat`
--

CREATE TABLE `phpbb_video_cat` (
  `video_cat_id` int(11) UNSIGNED NOT NULL,
  `video_cat_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_video_cat`
--

INSERT INTO `phpbb_video_cat` (`video_cat_id`, `video_cat_title`) VALUES
(2, 'YOUTUBE'),
(3, 'EBOOK AUDIO');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_video_cmnts`
--

CREATE TABLE `phpbb_video_cmnts` (
  `cmnt_id` mediumint(8) UNSIGNED NOT NULL,
  `cmnt_video_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `cmnt_poster_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `cmnt_text` text COLLATE utf8_bin NOT NULL,
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_options` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_video_cmnts`
--

INSERT INTO `phpbb_video_cmnts` (`cmnt_id`, `cmnt_video_id`, `cmnt_poster_id`, `cmnt_text`, `create_time`, `bbcode_uid`, `bbcode_bitfield`, `bbcode_options`) VALUES
(1, 1, 2, '<r>hay  <E>:lol:</E>  <E>:lol:</E>  <E>:lol:</E>  <E>:lol:</E>  <E>:lol:</E>  <E>:lol:</E></r>', 1603862410, '', '', 7),
(2, 13, 2, '<r>Hay quá! Xuất sắc <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E>  <E>:D</E></r>', 1603943594, '', '', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_warnings`
--

CREATE TABLE `phpbb_warnings` (
  `warning_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `log_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `warning_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_words`
--

CREATE TABLE `phpbb_words` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phpbb_zebra`
--

CREATE TABLE `phpbb_zebra` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `zebra_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `friend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `foe` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `approval` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `phpbb_zebra`
--

INSERT INTO `phpbb_zebra` (`user_id`, `zebra_id`, `friend`, `foe`, `approval`) VALUES
(2, 50, 0, 0, 0),
(2, 51, 1, 0, 0),
(49, 51, 1, 0, 0),
(51, 2, 1, 0, 0),
(51, 49, 1, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `phpbb_acl_groups`
--
ALTER TABLE `phpbb_acl_groups`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `auth_opt_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Chỉ mục cho bảng `phpbb_acl_options`
--
ALTER TABLE `phpbb_acl_options`
  ADD PRIMARY KEY (`auth_option_id`),
  ADD UNIQUE KEY `auth_option` (`auth_option`);

--
-- Chỉ mục cho bảng `phpbb_acl_roles`
--
ALTER TABLE `phpbb_acl_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_type` (`role_type`),
  ADD KEY `role_order` (`role_order`);

--
-- Chỉ mục cho bảng `phpbb_acl_roles_data`
--
ALTER TABLE `phpbb_acl_roles_data`
  ADD PRIMARY KEY (`role_id`,`auth_option_id`),
  ADD KEY `ath_op_id` (`auth_option_id`);

--
-- Chỉ mục cho bảng `phpbb_acl_users`
--
ALTER TABLE `phpbb_acl_users`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `auth_option_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Chỉ mục cho bảng `phpbb_aps_display`
--
ALTER TABLE `phpbb_aps_display`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `phpbb_aps_logs`
--
ALTER TABLE `phpbb_aps_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `reportee_id` (`reportee_id`);

--
-- Chỉ mục cho bảng `phpbb_aps_points`
--
ALTER TABLE `phpbb_aps_points`
  ADD PRIMARY KEY (`points_name`,`forum_id`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Chỉ mục cho bảng `phpbb_aps_reasons`
--
ALTER TABLE `phpbb_aps_reasons`
  ADD PRIMARY KEY (`reason_id`);

--
-- Chỉ mục cho bảng `phpbb_ass_categories`
--
ALTER TABLE `phpbb_ass_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `phpbb_ass_inventory`
--
ALTER TABLE `phpbb_ass_inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `gifter_id` (`gifter_id`);

--
-- Chỉ mục cho bảng `phpbb_ass_items`
--
ALTER TABLE `phpbb_ass_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `phpbb_ass_logs`
--
ALTER TABLE `phpbb_ass_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Chỉ mục cho bảng `phpbb_attachments`
--
ALTER TABLE `phpbb_attachments`
  ADD PRIMARY KEY (`attach_id`),
  ADD KEY `filetime` (`filetime`),
  ADD KEY `post_msg_id` (`post_msg_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `is_orphan` (`is_orphan`);

--
-- Chỉ mục cho bảng `phpbb_banlist`
--
ALTER TABLE `phpbb_banlist`
  ADD PRIMARY KEY (`ban_id`),
  ADD KEY `ban_end` (`ban_end`),
  ADD KEY `ban_user` (`ban_userid`,`ban_exclude`),
  ADD KEY `ban_email` (`ban_email`,`ban_exclude`),
  ADD KEY `ban_ip` (`ban_ip`,`ban_exclude`);

--
-- Chỉ mục cho bảng `phpbb_bbcodes`
--
ALTER TABLE `phpbb_bbcodes`
  ADD PRIMARY KEY (`bbcode_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Chỉ mục cho bảng `phpbb_bookmarks`
--
ALTER TABLE `phpbb_bookmarks`
  ADD PRIMARY KEY (`topic_id`,`user_id`);

--
-- Chỉ mục cho bảng `phpbb_bots`
--
ALTER TABLE `phpbb_bots`
  ADD PRIMARY KEY (`bot_id`),
  ADD KEY `bot_active` (`bot_active`);

--
-- Chỉ mục cho bảng `phpbb_config`
--
ALTER TABLE `phpbb_config`
  ADD PRIMARY KEY (`config_name`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Chỉ mục cho bảng `phpbb_config_text`
--
ALTER TABLE `phpbb_config_text`
  ADD PRIMARY KEY (`config_name`);

--
-- Chỉ mục cho bảng `phpbb_confirm`
--
ALTER TABLE `phpbb_confirm`
  ADD PRIMARY KEY (`session_id`,`confirm_id`),
  ADD KEY `confirm_type` (`confirm_type`);

--
-- Chỉ mục cho bảng `phpbb_disallow`
--
ALTER TABLE `phpbb_disallow`
  ADD PRIMARY KEY (`disallow_id`);

--
-- Chỉ mục cho bảng `phpbb_drafts`
--
ALTER TABLE `phpbb_drafts`
  ADD PRIMARY KEY (`draft_id`),
  ADD KEY `save_time` (`save_time`);

--
-- Chỉ mục cho bảng `phpbb_ext`
--
ALTER TABLE `phpbb_ext`
  ADD UNIQUE KEY `ext_name` (`ext_name`);

--
-- Chỉ mục cho bảng `phpbb_extensions`
--
ALTER TABLE `phpbb_extensions`
  ADD PRIMARY KEY (`extension_id`);

--
-- Chỉ mục cho bảng `phpbb_extension_groups`
--
ALTER TABLE `phpbb_extension_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `phpbb_forums`
--
ALTER TABLE `phpbb_forums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `forum_lastpost_id` (`forum_last_post_id`);

--
-- Chỉ mục cho bảng `phpbb_forums_access`
--
ALTER TABLE `phpbb_forums_access`
  ADD PRIMARY KEY (`forum_id`,`user_id`,`session_id`);

--
-- Chỉ mục cho bảng `phpbb_forums_track`
--
ALTER TABLE `phpbb_forums_track`
  ADD PRIMARY KEY (`user_id`,`forum_id`);

--
-- Chỉ mục cho bảng `phpbb_forums_watch`
--
ALTER TABLE `phpbb_forums_watch`
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Chỉ mục cho bảng `phpbb_groups`
--
ALTER TABLE `phpbb_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `group_legend_name` (`group_legend`,`group_name`);

--
-- Chỉ mục cho bảng `phpbb_icons`
--
ALTER TABLE `phpbb_icons`
  ADD PRIMARY KEY (`icons_id`),
  ADD KEY `display_on_posting` (`display_on_posting`);

--
-- Chỉ mục cho bảng `phpbb_lang`
--
ALTER TABLE `phpbb_lang`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_iso` (`lang_iso`);

--
-- Chỉ mục cho bảng `phpbb_log`
--
ALTER TABLE `phpbb_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `reportee_id` (`reportee_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `log_time` (`log_time`);

--
-- Chỉ mục cho bảng `phpbb_login_attempts`
--
ALTER TABLE `phpbb_login_attempts`
  ADD KEY `att_ip` (`attempt_ip`,`attempt_time`),
  ADD KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  ADD KEY `att_time` (`attempt_time`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `phpbb_mchat`
--
ALTER TABLE `phpbb_mchat`
  ADD PRIMARY KEY (`message_id`);

--
-- Chỉ mục cho bảng `phpbb_mchat_log`
--
ALTER TABLE `phpbb_mchat_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Chỉ mục cho bảng `phpbb_mchat_sessions`
--
ALTER TABLE `phpbb_mchat_sessions`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `phpbb_migrations`
--
ALTER TABLE `phpbb_migrations`
  ADD PRIMARY KEY (`migration_name`);

--
-- Chỉ mục cho bảng `phpbb_moderator_cache`
--
ALTER TABLE `phpbb_moderator_cache`
  ADD KEY `disp_idx` (`display_on_index`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Chỉ mục cho bảng `phpbb_modules`
--
ALTER TABLE `phpbb_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `module_enabled` (`module_enabled`),
  ADD KEY `class_left_id` (`module_class`,`left_id`);

--
-- Chỉ mục cho bảng `phpbb_notifications`
--
ALTER TABLE `phpbb_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `item_ident` (`notification_type_id`,`item_id`),
  ADD KEY `user` (`user_id`,`notification_read`);

--
-- Chỉ mục cho bảng `phpbb_notification_emails`
--
ALTER TABLE `phpbb_notification_emails`
  ADD PRIMARY KEY (`notification_type_id`,`item_id`,`item_parent_id`,`user_id`);

--
-- Chỉ mục cho bảng `phpbb_notification_types`
--
ALTER TABLE `phpbb_notification_types`
  ADD PRIMARY KEY (`notification_type_id`),
  ADD UNIQUE KEY `type` (`notification_type_name`);

--
-- Chỉ mục cho bảng `phpbb_oauth_accounts`
--
ALTER TABLE `phpbb_oauth_accounts`
  ADD PRIMARY KEY (`user_id`,`provider`);

--
-- Chỉ mục cho bảng `phpbb_oauth_states`
--
ALTER TABLE `phpbb_oauth_states`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Chỉ mục cho bảng `phpbb_oauth_tokens`
--
ALTER TABLE `phpbb_oauth_tokens`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Chỉ mục cho bảng `phpbb_pages`
--
ALTER TABLE `phpbb_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Chỉ mục cho bảng `phpbb_pages_links`
--
ALTER TABLE `phpbb_pages_links`
  ADD PRIMARY KEY (`page_link_id`);

--
-- Chỉ mục cho bảng `phpbb_pages_pages_links`
--
ALTER TABLE `phpbb_pages_pages_links`
  ADD PRIMARY KEY (`page_id`,`page_link_id`);

--
-- Chỉ mục cho bảng `phpbb_pg_social_chat`
--
ALTER TABLE `phpbb_pg_social_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Chỉ mục cho bảng `phpbb_pg_social_gallery`
--
ALTER TABLE `phpbb_pg_social_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Chỉ mục cho bảng `phpbb_pg_social_pages`
--
ALTER TABLE `phpbb_pg_social_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Chỉ mục cho bảng `phpbb_pg_social_pages_like`
--
ALTER TABLE `phpbb_pg_social_pages_like`
  ADD PRIMARY KEY (`page_like_ID`);

--
-- Chỉ mục cho bảng `phpbb_pg_social_photos`
--
ALTER TABLE `phpbb_pg_social_photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Chỉ mục cho bảng `phpbb_pg_social_wall_comment`
--
ALTER TABLE `phpbb_pg_social_wall_comment`
  ADD PRIMARY KEY (`post_comment_ID`);

--
-- Chỉ mục cho bảng `phpbb_pg_social_wall_like`
--
ALTER TABLE `phpbb_pg_social_wall_like`
  ADD PRIMARY KEY (`post_like_ID`);

--
-- Chỉ mục cho bảng `phpbb_pg_social_wall_post`
--
ALTER TABLE `phpbb_pg_social_wall_post`
  ADD PRIMARY KEY (`post_ID`);

--
-- Chỉ mục cho bảng `phpbb_poll_options`
--
ALTER TABLE `phpbb_poll_options`
  ADD KEY `poll_opt_id` (`poll_option_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Chỉ mục cho bảng `phpbb_poll_votes`
--
ALTER TABLE `phpbb_poll_votes`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `vote_user_id` (`vote_user_id`),
  ADD KEY `vote_user_ip` (`vote_user_ip`);

--
-- Chỉ mục cho bảng `phpbb_posts`
--
ALTER TABLE `phpbb_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_ip` (`poster_ip`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `tid_post_time` (`topic_id`,`post_time`),
  ADD KEY `post_username` (`post_username`),
  ADD KEY `post_visibility` (`post_visibility`);

--
-- Chỉ mục cho bảng `phpbb_privmsgs`
--
ALTER TABLE `phpbb_privmsgs`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `author_ip` (`author_ip`),
  ADD KEY `message_time` (`message_time`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `root_level` (`root_level`);

--
-- Chỉ mục cho bảng `phpbb_privmsgs_folder`
--
ALTER TABLE `phpbb_privmsgs_folder`
  ADD PRIMARY KEY (`folder_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `phpbb_privmsgs_rules`
--
ALTER TABLE `phpbb_privmsgs_rules`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `phpbb_privmsgs_to`
--
ALTER TABLE `phpbb_privmsgs_to`
  ADD KEY `msg_id` (`msg_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `usr_flder_id` (`user_id`,`folder_id`);

--
-- Chỉ mục cho bảng `phpbb_profile_fields`
--
ALTER TABLE `phpbb_profile_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `fld_type` (`field_type`),
  ADD KEY `fld_ordr` (`field_order`);

--
-- Chỉ mục cho bảng `phpbb_profile_fields_data`
--
ALTER TABLE `phpbb_profile_fields_data`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `phpbb_profile_fields_lang`
--
ALTER TABLE `phpbb_profile_fields_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`,`option_id`);

--
-- Chỉ mục cho bảng `phpbb_profile_lang`
--
ALTER TABLE `phpbb_profile_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`);

--
-- Chỉ mục cho bảng `phpbb_ranks`
--
ALTER TABLE `phpbb_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Chỉ mục cho bảng `phpbb_reports`
--
ALTER TABLE `phpbb_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `pm_id` (`pm_id`);

--
-- Chỉ mục cho bảng `phpbb_reports_reasons`
--
ALTER TABLE `phpbb_reports_reasons`
  ADD PRIMARY KEY (`reason_id`);

--
-- Chỉ mục cho bảng `phpbb_search_results`
--
ALTER TABLE `phpbb_search_results`
  ADD PRIMARY KEY (`search_key`);

--
-- Chỉ mục cho bảng `phpbb_search_wordlist`
--
ALTER TABLE `phpbb_search_wordlist`
  ADD PRIMARY KEY (`word_id`),
  ADD UNIQUE KEY `wrd_txt` (`word_text`),
  ADD KEY `wrd_cnt` (`word_count`);

--
-- Chỉ mục cho bảng `phpbb_search_wordmatch`
--
ALTER TABLE `phpbb_search_wordmatch`
  ADD UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `phpbb_sessions`
--
ALTER TABLE `phpbb_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_time` (`session_time`),
  ADD KEY `session_user_id` (`session_user_id`),
  ADD KEY `session_fid` (`session_forum_id`);

--
-- Chỉ mục cho bảng `phpbb_sessions_keys`
--
ALTER TABLE `phpbb_sessions_keys`
  ADD PRIMARY KEY (`key_id`,`user_id`),
  ADD KEY `last_login` (`last_login`);

--
-- Chỉ mục cho bảng `phpbb_sitelist`
--
ALTER TABLE `phpbb_sitelist`
  ADD PRIMARY KEY (`site_id`);

--
-- Chỉ mục cho bảng `phpbb_smilies`
--
ALTER TABLE `phpbb_smilies`
  ADD PRIMARY KEY (`smiley_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Chỉ mục cho bảng `phpbb_styles`
--
ALTER TABLE `phpbb_styles`
  ADD PRIMARY KEY (`style_id`),
  ADD UNIQUE KEY `style_name` (`style_name`);

--
-- Chỉ mục cho bảng `phpbb_teampage`
--
ALTER TABLE `phpbb_teampage`
  ADD PRIMARY KEY (`teampage_id`);

--
-- Chỉ mục cho bảng `phpbb_thanks`
--
ALTER TABLE `phpbb_thanks`
  ADD PRIMARY KEY (`post_id`,`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `poster_id` (`poster_id`);

--
-- Chỉ mục cho bảng `phpbb_topics`
--
ALTER TABLE `phpbb_topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `forum_id_type` (`forum_id`,`topic_type`),
  ADD KEY `last_post_time` (`topic_last_post_time`),
  ADD KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  ADD KEY `topic_visibility` (`topic_visibility`),
  ADD KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`),
  ADD KEY `latest_topics` (`forum_id`,`topic_last_post_time`,`topic_last_post_id`,`topic_moved_id`);

--
-- Chỉ mục cho bảng `phpbb_topics_posted`
--
ALTER TABLE `phpbb_topics_posted`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Chỉ mục cho bảng `phpbb_topics_track`
--
ALTER TABLE `phpbb_topics_track`
  ADD PRIMARY KEY (`user_id`,`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Chỉ mục cho bảng `phpbb_topics_watch`
--
ALTER TABLE `phpbb_topics_watch`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Chỉ mục cho bảng `phpbb_users`
--
ALTER TABLE `phpbb_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_clean` (`username_clean`),
  ADD KEY `user_birthday` (`user_birthday`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `phpbb_user_group`
--
ALTER TABLE `phpbb_user_group`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_leader` (`group_leader`);

--
-- Chỉ mục cho bảng `phpbb_user_notifications`
--
ALTER TABLE `phpbb_user_notifications`
  ADD UNIQUE KEY `itm_usr_mthd` (`item_type`,`item_id`,`user_id`,`method`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `uid_itm_id` (`user_id`,`item_id`),
  ADD KEY `usr_itm_tpe` (`user_id`,`item_type`,`item_id`);

--
-- Chỉ mục cho bảng `phpbb_video`
--
ALTER TABLE `phpbb_video`
  ADD PRIMARY KEY (`video_id`);

--
-- Chỉ mục cho bảng `phpbb_video_cat`
--
ALTER TABLE `phpbb_video_cat`
  ADD PRIMARY KEY (`video_cat_id`);

--
-- Chỉ mục cho bảng `phpbb_video_cmnts`
--
ALTER TABLE `phpbb_video_cmnts`
  ADD PRIMARY KEY (`cmnt_id`);

--
-- Chỉ mục cho bảng `phpbb_warnings`
--
ALTER TABLE `phpbb_warnings`
  ADD PRIMARY KEY (`warning_id`);

--
-- Chỉ mục cho bảng `phpbb_words`
--
ALTER TABLE `phpbb_words`
  ADD PRIMARY KEY (`word_id`);

--
-- Chỉ mục cho bảng `phpbb_zebra`
--
ALTER TABLE `phpbb_zebra`
  ADD PRIMARY KEY (`user_id`,`zebra_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `phpbb_acl_options`
--
ALTER TABLE `phpbb_acl_options`
  MODIFY `auth_option_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT cho bảng `phpbb_acl_roles`
--
ALTER TABLE `phpbb_acl_roles`
  MODIFY `role_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `phpbb_aps_logs`
--
ALTER TABLE `phpbb_aps_logs`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phpbb_aps_reasons`
--
ALTER TABLE `phpbb_aps_reasons`
  MODIFY `reason_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phpbb_ass_categories`
--
ALTER TABLE `phpbb_ass_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phpbb_ass_inventory`
--
ALTER TABLE `phpbb_ass_inventory`
  MODIFY `inventory_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phpbb_ass_items`
--
ALTER TABLE `phpbb_ass_items`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phpbb_ass_logs`
--
ALTER TABLE `phpbb_ass_logs`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phpbb_attachments`
--
ALTER TABLE `phpbb_attachments`
  MODIFY `attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phpbb_banlist`
--
ALTER TABLE `phpbb_banlist`
  MODIFY `ban_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_bots`
--
ALTER TABLE `phpbb_bots`
  MODIFY `bot_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `phpbb_disallow`
--
ALTER TABLE `phpbb_disallow`
  MODIFY `disallow_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_drafts`
--
ALTER TABLE `phpbb_drafts`
  MODIFY `draft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phpbb_extensions`
--
ALTER TABLE `phpbb_extensions`
  MODIFY `extension_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `phpbb_extension_groups`
--
ALTER TABLE `phpbb_extension_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phpbb_forums`
--
ALTER TABLE `phpbb_forums`
  MODIFY `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `phpbb_groups`
--
ALTER TABLE `phpbb_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `phpbb_icons`
--
ALTER TABLE `phpbb_icons`
  MODIFY `icons_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phpbb_lang`
--
ALTER TABLE `phpbb_lang`
  MODIFY `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phpbb_log`
--
ALTER TABLE `phpbb_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT cho bảng `phpbb_mchat`
--
ALTER TABLE `phpbb_mchat`
  MODIFY `message_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `phpbb_mchat_log`
--
ALTER TABLE `phpbb_mchat_log`
  MODIFY `log_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phpbb_modules`
--
ALTER TABLE `phpbb_modules`
  MODIFY `module_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT cho bảng `phpbb_notifications`
--
ALTER TABLE `phpbb_notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `phpbb_notification_types`
--
ALTER TABLE `phpbb_notification_types`
  MODIFY `notification_type_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `phpbb_pages`
--
ALTER TABLE `phpbb_pages`
  MODIFY `page_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phpbb_pages_links`
--
ALTER TABLE `phpbb_pages_links`
  MODIFY `page_link_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phpbb_pg_social_chat`
--
ALTER TABLE `phpbb_pg_social_chat`
  MODIFY `chat_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phpbb_pg_social_gallery`
--
ALTER TABLE `phpbb_pg_social_gallery`
  MODIFY `gallery_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phpbb_pg_social_pages`
--
ALTER TABLE `phpbb_pg_social_pages`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_pg_social_pages_like`
--
ALTER TABLE `phpbb_pg_social_pages_like`
  MODIFY `page_like_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_pg_social_photos`
--
ALTER TABLE `phpbb_pg_social_photos`
  MODIFY `photo_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `phpbb_pg_social_wall_comment`
--
ALTER TABLE `phpbb_pg_social_wall_comment`
  MODIFY `post_comment_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phpbb_pg_social_wall_like`
--
ALTER TABLE `phpbb_pg_social_wall_like`
  MODIFY `post_like_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phpbb_pg_social_wall_post`
--
ALTER TABLE `phpbb_pg_social_wall_post`
  MODIFY `post_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `phpbb_posts`
--
ALTER TABLE `phpbb_posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `phpbb_privmsgs`
--
ALTER TABLE `phpbb_privmsgs`
  MODIFY `msg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_privmsgs_folder`
--
ALTER TABLE `phpbb_privmsgs_folder`
  MODIFY `folder_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_privmsgs_rules`
--
ALTER TABLE `phpbb_privmsgs_rules`
  MODIFY `rule_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_profile_fields`
--
ALTER TABLE `phpbb_profile_fields`
  MODIFY `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `phpbb_ranks`
--
ALTER TABLE `phpbb_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phpbb_reports`
--
ALTER TABLE `phpbb_reports`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_reports_reasons`
--
ALTER TABLE `phpbb_reports_reasons`
  MODIFY `reason_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phpbb_search_wordlist`
--
ALTER TABLE `phpbb_search_wordlist`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT cho bảng `phpbb_sitelist`
--
ALTER TABLE `phpbb_sitelist`
  MODIFY `site_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_smilies`
--
ALTER TABLE `phpbb_smilies`
  MODIFY `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `phpbb_styles`
--
ALTER TABLE `phpbb_styles`
  MODIFY `style_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phpbb_teampage`
--
ALTER TABLE `phpbb_teampage`
  MODIFY `teampage_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phpbb_topics`
--
ALTER TABLE `phpbb_topics`
  MODIFY `topic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `phpbb_users`
--
ALTER TABLE `phpbb_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `phpbb_video`
--
ALTER TABLE `phpbb_video`
  MODIFY `video_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `phpbb_video_cat`
--
ALTER TABLE `phpbb_video_cat`
  MODIFY `video_cat_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phpbb_video_cmnts`
--
ALTER TABLE `phpbb_video_cmnts`
  MODIFY `cmnt_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phpbb_warnings`
--
ALTER TABLE `phpbb_warnings`
  MODIFY `warning_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phpbb_words`
--
ALTER TABLE `phpbb_words`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
