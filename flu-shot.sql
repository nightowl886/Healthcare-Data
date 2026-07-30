---- Remove random numbers from Synthea-generated patient names using SQL

UPDATE patients
SET 
    first = REGEXP_REPLACE(first, '[0-9]', '', 'g'),
    last = REGEXP_REPLACE(last, '[0-9]', '', 'g');



with active_patient as
(
select distinct patient
from encounters as e
join patients as pat
on e.patient = pat.id
where start between '2019-01-01 00:00' and '2021-12-31 23:59'
and pat.deathdate is null
and (extract(year from age ('2021-12-31', pat.birthdate))*12)
+extract(month from age('2021-12-31', pat.birthdate)) >=6
),


flu_shot_2021 as

(
select patient, min(date) as earliest_flu_shot_2021
from immunizations
where code in ('140','141')
 and date between '2021-01-01 00:00' and '2021-12-31 23:59'
 group by patient
 )

 
Select pat.birthdate
       , pat.race
	   , pat.county
	   , pat.id
	   , pat.first
	   , pat.last
	   , EXTRACT(YEAR FROM age(pat.birthdate)) AS age
	   , flu.earliest_flu_shot_2021
	   , case when flu.patient is not null then 1
	   else 0
	   end as flu_shot_2021

from patients as pat

left join flu_shot_2021 as flu
on pat.id = flu.patient

where 1=1
and pat.id in (select patient from active_patient)


















