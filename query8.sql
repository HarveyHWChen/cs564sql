select div.division_desc, pop.name, max(pop.births2011-pop.births2010)
from  division div, pop_estimate_nation_state_pr pop
where div.division_cd=pop.division and
      pop.sumlev=40
group by pop.division;
