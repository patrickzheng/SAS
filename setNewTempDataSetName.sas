%macro setNewTempDataSetName;
	%let i=0;
	%do %while(%sysfunc(exist(work._SASITTEMPDS_&i)));
		%let i=%eval(&i+1);
	%end;
	_SASITTEMPDS_&i
%mend setNewTempDataSetName;
