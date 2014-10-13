select state.name, state.netmig2012
from pop_estimate_nation_state_pr state, division div
where state.division=div.division_cd and state.sumlev=40;
