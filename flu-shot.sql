with flu_shot_2021 as

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
	   , flu.earliest_flu_shot_2021

from patients as pat

left join flu_shot_2021 as flu
on pat.id = flu.patient




select pat.id
,pat.first
, im.code
from patients pat
left join immunizations im
on pat.id = im.patient


