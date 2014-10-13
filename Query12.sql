select pop.age, (sum(pop.popestimate2010)-sum(pop.popestimate2011)), (case
       when (sum(pop.popestimate2010)-sum(pop.popestimate2011))>0 then "increased"
       when (sum(pop.popestimate2010)-sum(pop.popestimate2011))=0 then "same"
       when (sum(pop.popestimate2010)-sum(pop.popestimate2011))<0 then "decreased" end) as indicator
from pop_estimate_state_age_sex_race_origin pop
where sumlev=40
group by pop.age;
