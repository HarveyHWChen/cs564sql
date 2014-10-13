select pop.stname, pop2.ctyname, min(pop2.npopchg_2012)
from pop_estimate_state_county pop, pop_estimate_state_county pop2, division div
where pop.sumlev=40 and
      pop2.state=pop.state and
      pop.division=div.division_cd and
      pop2.npopchg_2012>=0
group by pop.stname
order by div.division_desc ASC, pop2.popestimate2012 DESC;
