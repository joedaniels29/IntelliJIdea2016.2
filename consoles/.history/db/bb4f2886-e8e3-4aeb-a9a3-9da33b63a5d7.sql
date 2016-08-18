SELECT 'hi', projects.name from projects where projects.id= 17
;-- -. . -..- - / . -. - .-. -.--
SELECT * from projects
;-- -. . -..- - / . -. - .-. -.--
SELECT 'hi', projects.name from projects where projects.id = 91
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO projects (name, created_at, updated_at) SELECT "ballz", now(), projects.updated_at where projects.id=91
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO projects (name, created_at, updated_at) SELECT 'ballz', now(), projects.updated_at where projects.id=91
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO projects (name, created_at, updated_at) SELECT 'ballz', now(), projects.updated_at from projects where projects.id=91
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO oasis.projects_users (project_id, user_id, created_at, updated_at) VALUES (
  (select id from projects where projects.form_id=122499),
  (select id from users where users.name='mdejong1'), now(), now())
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO projects_users (project_id, user_id, created_at, updated_at) VALUES (
  (select id from projects where projects.form_id=122499),
  (select id from users where users.name='mdejong1'), now(), now())
;-- -. . -..- - / . -. - .-. -.--
(select id from projects where projects.form_id=122499)
;-- -. . -..- - / . -. - .-. -.--
(select id from projects )
;-- -. . -..- - / . -. - .-. -.--
(select * from projects )
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO projects_users (project_id, user_id, created_at, updated_at) VALUES (
  (select id from projects where projects.form_id=122647),
  (select id from users where users.name='mdejong1'), now(), now())
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO projects_users (project_id, user_id, created_at, updated_at) VALUES (
  (select id from projects where projects.form_id=122647),
  (select id from users where users.name='jdanie37'), now(), now())