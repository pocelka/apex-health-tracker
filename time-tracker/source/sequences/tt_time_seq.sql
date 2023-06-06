declare
   l_cnt pls_integer;
begin
   select count(*) into l_cnt from user_sequences where sequence_name = upper('tt_time_seq');
   if (l_cnt > 0) then
      execute immediate 'drop sequence tt_time_seq';
   end if;
end;
/

create sequence tt_time_seq 
start with 1 
increment by 1
minvalue 1
maxvalue 9999
nocache 
order; 
