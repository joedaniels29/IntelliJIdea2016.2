TRUNCATE messages
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE fn_employees
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE findings
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE events
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO public.event_types (id, name, description, acknowledges_finding, created_at, updated_at, actions_available, message_required, method) VALUES (10, 'Acknowledgement', 'Acknowledgement', true, '2016-01-15 11:57:54.405000', '2016-01-15 11:57:57.949000', false, true, 'acknowledgement')
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO "findings-notification".event_types (id, name, description, acknowledges_finding, created_at, updated_at, actions_available, message_required, method) VALUES (10, 'Acknowledgement', 'Acknowledgement', true, '2016-01-15 11:57:54.405000', '2016-01-15 11:57:57.949000', false, true, 'acknowledgement')
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO "findings-notification"."event_types" ("acknowledges_finding", "actions_available", "created_at", "description", "message_required", "method", "name", "updated_at") VALUES ('t', 'f', '2016-05-09 19:25:36.226000', 'Finding has been declined', 'f', 'decline', 'Decline', '2016-05-09 19:25:36.226000')