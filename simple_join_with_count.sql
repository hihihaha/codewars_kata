-- https://www.codewars.com/kata/580918e24a85b05ad000010c
select p.*, count(t.id) as toy_count from people p join toys t on p.id = t.people_id group by p.id;
