-- https://www.codewars.com/kata/58164ddf890632ce00000220
select age, count(id) as total_people from people group by age having count(id) >= 10
