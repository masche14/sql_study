select * from user_role_privs
/
grant dep_role to usera1
/
grant create synonym to scott
/
create synonym prisystbl for system.systbl
/
select * from prisystbl
/
create synonym dept for scott.dept
/
drop public synonym pdept
/
create public synonym pdept for scott.dept
/
create public synonym pdept for scott.dept
/
