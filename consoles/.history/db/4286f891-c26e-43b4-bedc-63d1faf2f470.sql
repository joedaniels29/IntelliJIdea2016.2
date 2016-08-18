SELECT "events".*
FROM "events"
  INNER JOIN "findings" ON "findings"."id" = "events"."finding_id"
WHERE "findings"."acknowledged" = 'f' AND "findings"."outside_of_app" = 'f'
GROUP BY events.id
;-- -. . -..- - / . -. - .-. -.--
SELECT "events".*
FROM "events"
  INNER JOIN "findings" ON "findings"."id" = "events"."finding_id"
WHERE "findings"."acknowledged" = 'f' AND "findings"."outside_of_app" = 'f'
GROUP BY findings.id
;-- -. . -..- - / . -. - .-. -.--
SELECT "events".*
FROM "events"
  LEFT OUTER JOIN JOIN "findings" ON "findings"."id" = "events"."finding_id"
WHERE "findings"."acknowledged" = 'f' AND "findings"."outside_of_app" = 'f'
GROUP BY findings.id
;-- -. . -..- - / . -. - .-. -.--
SELECT "events".*
FROM "events"
  LEFT OUTER JOIN "findings" ON "findings"."id" = "events"."finding_id"
WHERE "findings"."acknowledged" = 'f' AND "findings"."outside_of_app" = 'f'
GROUP BY findings.id
;-- -. . -..- - / . -. - .-. -.--
select id from findings where acknowledged= 'f' AND outside_of_app='f'
;-- -. . -..- - / . -. - .-. -.--
(select id from findings where acknowledged= 'f' AND outside_of_app='f')
;-- -. . -..- - / . -. - .-. -.--
(select id  as finding_id from findings where acknowledged= 'f' AND outside_of_app='f')
;-- -. . -..- - / . -. - .-. -.--
select * from events where finding_id IN (select id  as finding_id from findings where acknowledged= 'f' AND outside_of_app='f')
;-- -. . -..- - / . -. - .-. -.--
select * from events
where finding_id IN (select id  as finding_id from findings where acknowledged= 'f' AND outside_of_app='f')
GROUP BY finding_id
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE application_configurations