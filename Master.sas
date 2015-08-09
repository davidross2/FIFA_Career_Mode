*the problem: given a roster of FIFA 20xx soccer players with given ratings,
can I assemble the best possible team to put on the field for any given formation?;

*FUT card stat formulas;
/*	PACE=0.45*Accl+0.55*Spd;*/
/*	SHO=0.05*APos+0.45*Fin+0.20*LSht+0.05*Pen+0.20*SPwr+0.05*Voly;*/
/*	PAS=0.20*Visn+0.20*Crsn+0.05*Crv+0.05*FKAc+0.15*LPas+0.35*SPas;*/
/*	DRI=0.10*Agil+0.05*Bal+0.05*Reax+0.30*BCon+0.50*Drib;*/
/*	DEF=0.20*Intr+0.10*HDAc+0.30*Mark+0.10*SlTk+0.30*StTk;*/
/*	PHY=0.20*Aggr+0.05*Jmp+0.25*Stam+0.50*Strn;*/


*add player data here;

data testplayer;
	input Name $ PrefRating PrefPos $ Accl	Agil Jmp Strn Spd Bal Stam Reax	Aggr Apos Intr Visn	Bcon Drib FKAc Lpas Mark LSht SlTk Crv Crsn Fin HDAc Spas SPwr StTk	Voly Pen;
	datalines;
	Labidi			73	RB	81	72	72	64	79	79	73	77	72	64	76	55	66	60	50	60	73	44	71	54	75	40	61	73	59	77	45	49
	Paulino			82	RB	75	63	69	65	75	67	76	98	94	98	96	90	90	78	85	89	75	93	71	86	77	80	76	96	84	72	69	83
	Afenyu			70	CB	51	53	66	69	49	69	63	72	83	62	63	60	72	51	62	56	64	67	70	57	46	70	82	58	75	70	58	51
	De_Girolamo		71	LB	81	72	67	61	77	76	71	73	74	59	74	57	63	63	44	54	69	41	70	53	73	41	62	68	53	72	43	44
	Connors			67	LB	72	91	83	41	75	79	76	64	84	62	63	50	67	70	47	51	69	41	69	51	62	36	51	71	57	66	36	46
	Gutierrez		68	LB	59	44	63	68	52	53	55	74	71	50	76	40	55	51	38	61	77	43	75	52	49	31	68	63	58	73	50	43
	Framberger		80	CDM	94	84	88	73	89	91	90	77	81	57	83	72	83	77	50	76	74	49	84	67	59	59	71	79	75	88	51	63
	Afrani			66	CDM	52	48	63	64	49	54	57	66	66	45	71	38	70	51	43	60	79	45	85	48	49	34	67	66	59	78	57	43
	Aldair			68	CDM	52	46	49	50	50	53	53	84	80	74	77	70	72	61	67	64	56	68	50	54	45	60	63	80	64	52	49	71
	Draskovic		74	CM	59	50	64	74	51	55	61	85	74	67	79	59	78	69	57	82	84	65	82	71	51	45	78	76	69	95	60	56
	Douna			72	CM	53	59	59	75	51	58	56	77	71	62	74	68	76	70	48	77	77	56	77	69	52	39	75	72	63	92	51	47
	Latkovic		74	CM	67	62	54	54	68	57	51	74	61	84	45	75	88	88	72	69	39	89	37	83	71	80	74	81	72	59	79	71
	Manuel			74	CM	68	60	58	52	63	62	64	75	43	72	45	68	86	91	72	79	36	81	34	75	69	66	54	85	72	49	69	65
	Garcia			74	CM	52	47	66	67	53	51	55	83	69	59	77	56	77	77	51	84	86	60	79	67	48	49	80	80	68	96	58	52
	Zakari			69	CM	59	49	68	72	53	60	58	83	68	60	72	57	75	64	44	75	78	53	74	58	46	43	68	68	60	87	49	47
	Arnos			65	CM	61	57	54	46	53	53	51	68	33	68	41	65	79	74	62	72	26	65	21	71	58	61	48	70	53	36	57	54
	Zebramani		76	LM	62	55	58	59	59	60	62	91	76	89	74	85	82	76	74	80	53	87	54	67	67	69	73	81	70	49	57	76
	Witsel			68	LM	69	59	48	51	61	57	46	66	51	73	36	62	77	75	67	63	33	77	33	66	68	77	64	69	65	39	71	69
	Gonzalez		68	CAM	51	49	47	49	48	51	55	71	65	72	59	67	74	62	58	73	38	71	40	55	52	57	59	75	69	42	48	67
	Fauria			69	CAM	62	55	57	43	57	59	51	59	31	59	34	55	79	80	72	73	33	74	28	66	67	68	49	80	72	33	63	65
	Bressan			67	CAM	67	54	46	55	64	57	45	66	50	72	30	64	74	69	61	49	26	65	27	67	57	66	63	64	63	36	66	61
	Melchiorri		70	CAM	68	62	56	46	60	59	58	69	35	69	44	59	80	79	72	70	35	69	28	64	65	63	45	73	66	29	67	60
	Lopes			75	CF	50	52	65	60	51	65	66	73	73	69	64	62	82	66	65	55	59	82	66	67	52	86	86	65	93	64	63	54
	Coutadeur		70	CF	65	57	56	50	62	63	59	61	35	57	35	53	86	84	74	70	38	73	30	79	62	69	59	71	74	38	67	62
	Romano			73	RW	63	56	51	54	62	52	49	60	53	66	32	64	80	84	68	66	34	76	34	70	76	76	69	75	69	46	75	69
	Krizanic		64	RW	55	54	39	50	56	49	44	62	46	59	29	55	70	73	63	56	25	67	27	62	64	64	56	62	62	34	61	58
	Baquero			67	ST	59	53	56	45	53	56	54	58	30	59	35	57	86	82	68	67	31	75	25	70	64	73	55	70	71	33	65	58
	Wheater			72	ST	79	75	72	63	78	75	71	75	59	68	30	62	74	73	45	47	27	68	25	57	45	76	66	57	72	30	56	68
	Vermijl			59	ST	69	58	59	50	58	63	57	55	37	57	36	52	67	70	66	62	28	60	20	60	57	63	41	66	58	32	61	57
	Dao_Castellana	57	LW	66	58	42	55	60	58	51	56	42	58	23	52	64	55	52	43	21	58	22	53	50	63	52	57	58	28	61	52
	;
run;

*add scoring system for positions here (probably use a macro eventually);

data testpositionratings;
	set testplayer;
	ST_rating=0.2*Fin+	    0.12*Apos+	0.1*HDAc+	0.1*SPwr+	0.1*Reax+	0.08*Drib+	0.08*Bcon+	0.05*Voly+	0.05*LSht+	0.05*Accl+	0.04*Spd+	0.03*Strn;
	*FWD_rating=0.12*Fin+	0.12*Apos+	0.11*Drib+	0.11*Bcon+	0.1*SPwr+	0.1*LSht+	0.1*Reax+	0.06*SPas+	0.05*HDAc+	0.05*Visn+	0.04*Accl+	0.04*Spd;
	WNG_rating=0.16*Crsn+	0.16*Drib+	0.13*Bcon+	0.1*SPas+	0.09*Apos+	0.06*Accl+	0.06*Spd+	0.06*Reax+	0.05*Agil+	0.05*Visn+	0.04*Fin+	0.04*LSht;
	CAM_rating=0.16*SPas+	0.16*Visn+	0.13*Bcon+	0.12*Apos+	0.11*Drib+	0.08*Reax+	0.06*LSht+	0.05*Fin+	0.05*SPwr+	0.04*Accl+	0.04*Agil;
	WMD_rating=0.14*Crsn+	0.14*Drib+	0.12*SPas+	0.12*Bcon+	0.08*LPas+	0.08*Visn+	0.07*Reax+	0.07*Apos+	0.05*Stam+	0.05*Accl+	0.05*Spd+	0.03*Agil;
	CM_rating=0.15*SPas+	0.13*LPas+	0.12*Visn+	0.1*Bcon+	0.09*Drib+	0.08*Reax+	0.08*Intr+	0.08*Apos+	0.06*StTk+	0.06*Stam+	0.05*LSht;
	CDM_rating=0.13*SPas+	0.13*Intr+	0.11*LPas+	0.1*Mark+	0.1*StTk+	0.09*Bcon+	0.09*Reax+	0.08*Visn+	0.06*Stam+	0.06*Strn+	0.05*Aggr;
	*WBK_rating=0.11*StTk+	0.1*SlTk+	0.1*Crsn+	0.1*SPas+	0.1*Bcon+	0.1*Intr+	0.09*Mark+	0.08*Stam+	0.08*Reax+	0.07*Drib+	0.04*Spd+	0.03*Agil;
	FB_rating=0.13*SlTk+	0.12*StTk+	0.12*Intr+	0.1*Mark+	0.08*Stam+	0.08*Reax+	0.07*Crsn+	0.07*HDAc+	0.07*Bcon+	0.06*SPas+	0.05*Spd+	0.05*Aggr;
	CB_rating=0.15*Mark+	0.15*StTk+	0.15*SlTk+	0.1*HDAc+	0.1*Strn+	0.08*Aggr+	0.08*Intr+	0.05*SPas+	0.05*Bcon+	0.05*Reax+	0.04*Jmp;

	if prefpos IN ("ST") then prefrating=ST_rating;
	else if prefpos IN ("CF","LF","RF") then prefrating=prefrating;
	else if prefpos IN ("LW","RW") then prefrating=WNG_rating;
	else if prefpos IN ("CAM") then prefrating=CAM_rating;
	else if prefpos IN ("LM","RM") then prefrating=WMD_rating;
	else if prefpos IN ("CM") then prefrating=CM_rating;
	else if prefpos IN ("CDM") then prefrating=CDM_rating;
	else if prefpos IN ("LWB","RWB") then prefrating=prefrating;
	else if prefpos IN ("LB","RB") then prefrating=FB_rating;
	else if prefpos IN ("CB") then prefrating=CB_rating;
	else prefrating=.;

	drop Aggr Intr APos Visn Accl Agil Bal Jmp Reax Spd Stam Strn BCon Crsn Crv Drib Fin FKAc HDAc LPas LSht Mark Pen SPas SPwr SlTk StTk Voly;
run;

options mprint;
%macro bestposition(dsn=);                                                                                                             
	data BestPositions;                                                                                                                  
	 	set &dsn; 
	  		array list(*) ST_rating WNG_rating CAM_rating WMD_rating CM_rating CDM_rating FB_rating CB_rating; 
			%do i=1 %to 8;
				Rating&i= largest(&i,of list[*]);
				Pos&i= substr(vname(list[whichn(largest(&i,of list[*]), of list[*])]),1,notalpha(vname(list[whichn(largest(&i,of list[*]), of list[*])]))-1);
			%end;

			if pos1 IN ("ST","FWD","WNG") then PitchPos="Forward";
			else if pos1 IN ("CAM","WMD","CM","CDM") then PitchPos="Midfield";
			else if pos1 IN ("WBK","FB","CB") then PitchPos="Defender";
			else PitchPos="Error";

		drop ST_rating WNG_rating CAM_rating WMD_rating CM_rating CDM_rating FB_rating CB_rating;
	run;                                                                                                                                    
%mend bestposition;

%bestposition(dsn=testpositionratings);


%macro formation(ST=,WNG=,WMD=,CAM=,CM=,CDM=,title=);
	*macro assumes: 
	-a standard 4-man defensive line
	-no CF/LF/RFs;
	
proc sql;
	*defenders;

	create table CB as
	select name, rating1, pos1
		from bestpositions
		where pos1="CB" AND rating1 GE 
			(select max(rating1)from bestpositions where pos1="CB" and rating1 LT 
				(select max(rating1) from bestpositions where pos1="CB"));

	create table FB as
	select name, rating1, pos1
		from bestpositions
		where pos1="FB" AND rating1 GE 
			(select max(rating1)from bestpositions where pos1="FB" and rating1 LT 
				(select max(rating1) from bestpositions where pos1="FB"));

	*forwards;

	%if &ST=2 %then %do;
		create table ST as
		select name, rating1, pos1
			from bestpositions
			where pos1="ST" AND rating1 GE 
				(select max(rating1)from bestpositions where pos1="ST" and rating1 LT 
					(select max(rating1) from bestpositions where pos1="ST"));
	%end;
	%else %do;
		create table ST as
		select name, rating1, pos1
		from bestpositions
		where pos1="ST" AND rating1 GE 
			(select max(rating1) from bestpositions where pos1="ST");
	%end;

	%if &WNG GT 1 %then %do;
		create table WNG as
		select name, rating1, pos1
			from bestpositions
			where pos1="WNG" AND rating1 GE 
				(select max(rating1)from bestpositions where pos1="WNG" and rating1 LT 
					(select max(rating1) from bestpositions where pos1="WNG"));
	%end;

	*midfield players;

	%if &WMD=2 %then %do;
	create table WMD as
	select name, rating1, pos1
		from bestpositions
		where pos1="WMD" AND rating1 GE 
			(select max(rating1)from bestpositions where pos1="WMD" and rating1 LT 
				(select max(rating1) from bestpositions where pos1="WMD"));
	%end;

	%else %do;
	create table WMD as
	select name, rating1, pos1
		from bestpositions
		where pos1="WMD" AND rating1 GE 
			(select max(rating1) from bestpositions where pos1="WMD");
	%end;

	%if &CM=2 %then %do;
	create table CM as
	select name, rating1, pos1
		from bestpositions
		where pos1="CM" AND rating1 GE 
			(select max(rating1)from bestpositions where pos1="CM" and rating1 LT 
				(select max(rating1) from bestpositions where pos1="CM"));
	%end;
	%else %do;
		create table CM as
		select name, rating1, pos1
		from bestpositions
		where pos1="CM" AND rating1 GE 
			(select max(rating1) from bestpositions where pos1="CM");
	%end;

	%if &CDM=2 %then %do;
	create table CDM as
	select name, rating1, pos1
		from bestpositions
		where pos1="CDM" AND rating1 GE 
			(select max(rating1)from bestpositions where pos1="CDM" and rating1 LT 
				(select max(rating1) from bestpositions where pos1="CDM"));
	%end;

	%else %do;
	create table CDM as
	select name, rating1, pos1
		from bestpositions
		where pos1="CDM" AND rating1 GE 
			(select max(rating1) from bestpositions where pos1="CDM");
	%end;
		
	*edit CAM later to account for 3 CAM formation;
	%if &CAM=2 %then %do;
	create table CAM as
	select name, rating1, pos1
		from bestpositions
		where pos1="CAM" AND rating1 GE 
			(select max(rating1)from bestpositions where pos1="CAM" and rating1 LT 
				(select max(rating1) from bestpositions where pos1="CAM"));
	%end;

	%else %do;
	create table CAM as
	select name, rating1, pos1
		from bestpositions
		where pos1="CAM" AND rating1 GE 
			(select max(rating1) from bestpositions where pos1="CAM");
	%end;

quit;

data squad;
	set FB CB CM CAM WNG ST;
run;

title "Best lineup for the &title formation (First Pass Through)";
proc print data=squad;
run;


%mend formation;

*4-3-3(CAM);
%formation(ST=1,WNG=2,WMD=0,CAM=1,CM=2,CDM=0,title="4-3-3(CAM)");

proc sort data=squad out=squad_sort;
	by rating1;
run;

proc sql;
	create table bestpositions2 as
	select name, rating2, pos2
		from bestpositions
		where name NOT IN (select name from squad);
quit;






/*proc sort data=bestpositions out=bestpos_sort;*/
/*	by pitchpos pos1 descending rating1;*/
/*run;*/
