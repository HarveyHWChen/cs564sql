select state.stname, count(*)
from pop_estimate_state_county state
where state.stname<>state.ctyname
group by state.stname
having count(*) > 0;
