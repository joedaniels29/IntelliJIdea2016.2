SELECT `ap_element_options`.* FROM `ap_element_options`  LIMIT 2
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_element_options`.* FROM `ap_element_options` WHERE `ap_element_options`.`form_id` = 122629 AND `ap_element_options`.`element_id` = 11 AND `ap_element_options`.`option_id` = 0 LIMIT 1
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_element_options`.* FROM `ap_element_options` AND `ap_element_options`.`element_id` = 11 AND `ap_element_options`.`option_id` = 0 LIMIT 1
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_element_options`.* FROM `ap_element_options` `ap_element_options`.`element_id` = 11 AND `ap_element_options`.`option_id` = 0 LIMIT 1
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_element_options`.* FROM `ap_element_options` WHERE `ap_element_options`.`element_id` = 11 LIMIT 1
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_element_options`.* FROM `ap_element_options` WHERE `ap_element_options`.`element_id` = 11 AND `ap_element_options`.`option_id` = 0 LIMIT 1
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_element_options`.* FROM `ap_element_options` WHERE `ap_element_options`.`element_id` = 11 AND `ap_element_options`.`option_id` = 0 LIMIT 10
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_element_options`.* FROM `ap_element_options` WHERE `ap_element_options`.`element_id` = 1 LIMIT 10
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_element_options`.* FROM `ap_element_options` WHERE `ap_element_options`.`element_id` = 10 LIMIT 10
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_element_options`.* FROM `ap_element_options` WHERE `ap_element_options`.`element_id` = 11 LIMIT 10
;-- -. . -..- - / . -. - .-. -.--
select * from ap_element_options where form_id = 116339
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO `ap_element_options` (`element_id`, `form_id`, `live`, `option`, `option_id`, `option_is_default`, `position`) VALUES (11, 122636,
                                                                                                                                   1, 'completed', 3, 0, 3)
;-- -. . -..- - / . -. - .-. -.--
SELECT `ap_permissions`.* FROM `ap_permissions` WHERE `ap_permissions`.`form_id` = 122647 AND `ap_permissions`.`user_id` = 26