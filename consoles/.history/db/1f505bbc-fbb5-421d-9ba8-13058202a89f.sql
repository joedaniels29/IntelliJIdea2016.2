select version()
;-- -. . -..- - / . -. - .-. -.--
select * from findings where drafted=FALSE
;-- -. . -..- - / . -. - .-. -.--
select * from findings where drafted=FALSE AND findings.outside_of_app=false
;-- -. . -..- - / . -. - .-. -.--
select * from findings where drafted=FALSE AND findings.acknowledged=false
;-- -. . -..- - / . -. - .-. -.--
truncate messages
;-- -. . -..- - / . -. - .-. -.--
truncate events
;-- -. . -..- - / . -. - .-. -.--
truncate findings
;-- -. . -..- - / . -. - .-. -.--
select * from findings where drafted=true and findings.acknowledged=false and findings.outside_of_app=false
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE messages
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE fn_employees
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE findings
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE events