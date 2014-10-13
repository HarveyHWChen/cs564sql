select div.division_desc, group_concat(st.name)
from pop_estimate_nation_state_pr st, division div
where st.division=div.division_cd
group by st.division
having st.division>0;
