select pop.name, sum(t.popestimate2011)
from pop_estimate_state_age_sex_race_origin t, pop_estimate_nation_state_pr pop
where t.sex=2 and 
      t.age<=45 and 
      t.age>=21 and
      pop.state=t.state
group by t.state;
