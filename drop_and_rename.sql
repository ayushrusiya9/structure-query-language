#drop
use cybrom;
select * from doctor;
alter table doctor add column country varchar(30) not null;

alter table doctor add column specialization varchar(33) not null after doct_id;
alter table doctor drop column specialization;
 
 
 describe doctor;
 alter table doctor modify column doct_id bigint;
 alter table petiant modify column doct_id bigint;
 
 describe petiant;
 
alter table petiant drop foreign key petiant_ibfk_1;
alter table petiant drop key doct_id;

#rename
#table level
rename table petiant to patient;
# select * from petient; 
select * from patient;


#column lavel
alter table patient rename column pant_id to petient_id;
describe patient;
 