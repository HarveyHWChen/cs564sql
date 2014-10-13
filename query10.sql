select pop.name
from pop_estimate_nation_state_pr pop, housing_units_state_level hu
where pop.sumlev=40 and
      hu.sumlev=40 and
      pop.state=hu.state and
      pop.popestimate2011<(select avg(pop2.popestimate2011)
		           from pop_estimate_nation_state_pr pop2
			   where pop2.sumlev=40) and
      hu.huest_2011<(select avg(hu2.huest_2011)
		     from housing_units_state_level hu2
		     where hu2.sumlev=40);
