select version()
;-- -. . -..- - / . -. - .-. -.--
select id from rad_exams limit 1
;-- -. . -..- - / . -. - .-. -.--
select count(id) from rad_exams limit 1
;-- -. . -..- - / . -. - .-. -.--
select id, count(id) from rad_exams limit 1
;-- -. . -..- - / . -. - .-. -.--
select id from "findings-notification".EventTypes limit 1
;-- -. . -..- - / . -. - .-. -.--
set role "findings-notification"
;-- -. . -..- - / . -. - .-. -.--
select id from public.rad_reports where rad_reports.report_text is null limit 10
;-- -. . -..- - / . -. - .-. -.--
select id from public.rad_reports where public.rad_reports.report_text is null limit 10
;-- -. . -..- - / . -. - .-. -.--
select id from public.rad_reports where report_text is null limit 10
;-- -. . -..- - / . -. - .-. -.--
select id from public.rad_reports where report_body is null limit 10
;-- -. . -..- - / . -. - .-. -.--
select id from public.rad_reports where report_body is null limit 1000
;-- -. . -..- - / . -. - .-. -.--
select id from public.rad_reports where report_body is null ORDER BY  id asc  limit 1000
;-- -. . -..- - / . -. - .-. -.--
select id, report_event from public.rad_reports where report_body is null ORDER BY  id asc limit 1000
;-- -. . -..- - / . -. - .-. -.--
select id, report_event from public.rad_reports where report_body is null ORDER BY  report_event asc limit 1000
;-- -. . -..- - / . -. - .-. -.--
select * from public.rad_reports where report_body is null ORDER BY  report_event asc limit 100
;-- -. . -..- - / . -. - .-. -.--
select * from public.rad_reports where report_event >= '2016-01-13' and report_body is null ORDER BY  report_event asc limit 100
;-- -. . -..- - / . -. - .-. -.--
select * from public.rad_reports where report_event >= '2016-01-13' ORDER BY  report_event asc limit 100
;-- -. . -..- - / . -. - .-. -.--
select id, report_body from public.rad_reports where report_event >= '2016-01-13' ORDER BY  report_event asc limit 1000
;-- -. . -..- - / . -. - .-. -.--
select id, report_body from public.rad_reports where report_body is null and report_event >= '2016-01-13' ORDER BY  report_event asc limit 1000
;-- -. . -..- - / . -. - .-. -.--
select count(id) from public.rad_reports where report_body is null and report_event >= '2016-01-13' ORDER BY  report_event asc limit 1000
;-- -. . -..- - / . -. - .-. -.--
select count(id) from public.rad_reports where report_body is null and report_event >= '2016-01-13' asc limit 1000
;-- -. . -..- - / . -. - .-. -.--
select count(id) from public.rad_reports where report_body is null and report_event >= '2016-01-13' limit 1000
;-- -. . -..- - / . -. - .-. -.--
select count(id) from public.rad_reports where report_event >= '2016-01-13' limit 1000