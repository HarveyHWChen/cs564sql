select state, name, births2012
from pop_estimate_nation_state_pr s
where s.births2012 > 80000 and
      s.sumlev = 40 and
      s.state <> 72;
