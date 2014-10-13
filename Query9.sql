select psc.stname, (select total(pop1.popestimate2011)
       		   from pop_estimate_state_age_sex_race_origin pop1
		   where pop1.age>=21 and pop1.sumlev=40 and pop1.state=pop.state) / 
		   (select total(pop2.popestimate2011)
		   from pop_estimate_state_age_sex_race_origin pop2
		   where pop2.sumlev=40 and pop2.state=pop.state)
from pop_estimate_state_age_sex_race_origin pop, pop_estimate_state_county psc
where pop.sumlev=40 and pop.state=psc.state
group by pop.state;
