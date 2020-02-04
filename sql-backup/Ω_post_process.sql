
-- overwrite or insert necessary values for running locally

UPDATE `wp_options` SET `option_value`='http://localhost:7000' WHERE `option_name`='siteurl';
UPDATE `wp_options` SET `option_value`='http://localhost:7000' WHERE `option_name`='home';

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(9999, 'om_username', '$P$BevkHw545pbBirjMhFAnmEU0Ra1f8o1', 'om_username', 'om_email@onemission.fund', '', '2020-01-11 09:53:26', '', 0, 'om_username');

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 9999, 'nickname', 'om_username'),
(2, 9999, 'first_name', ''),
(3, 9999, 'last_name', ''),
(4, 9999, 'description', ''),
(5, 9999, 'rich_editing', 'true'),
(6, 9999, 'syntax_highlighting', 'true'),
(7, 9999, 'comment_shortcuts', 'false'),
(8, 9999, 'admin_color', 'fresh'),
(9, 9999, 'use_ssl', '0'),
(10, 9999, 'show_admin_bar_front', 'true'),
(11, 9999, 'locale', ''),
(12, 9999, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 9999, 'wp_user_level', '10'),
(14, 9999, 'dismissed_wp_pointers', ''),
(15, 9999, 'show_welcome_panel', '1');
