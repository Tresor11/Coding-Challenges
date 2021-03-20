--Problem:
--https://www.hackerrank.com/challenges/weather-observation-station-5/problem

select top 1
  city, LEN(city) city_len
from station
order by city_len, city;
select top 1
  city, LEN(city) city_len
from station
order by city_len desc,city;