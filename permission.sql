/***********************************用户表*********************************/
--Create Table
create table tpl_user_t(
fname varchar2(300),
lname varchar2(300) not null,
english_name varchar2(300) not null,
area_code varchar2(50),
apartment_code varchar2(300),
type varchar2(300),
default_role varchar2(300),
email varchar2(50),
created_by number(30) not null,
creation_date date not null,
last_updated_by number(30) not null,
last_update_date date not null,
user_id number not null,
w3_account varchar2(150),
employee_number varchar2(15) not null,
phone varchar2(40),
organization_id number,
temporary_contact varchar2(40),
location varchar2(150),
invalid_flag number(15) default 1 not null 
);
--Add Comment
comment on table tpl_user_t is '用户表';
comment on column tpl_user_t.fname is '中文名';
comment on column tpl_user_t.lname is '英文名加工号';
comment on column tpl_user_t.english_name is '英文名';
comment on column tpl_user_t.area_code is '区域';
comment on column tpl_user_t.apartment_code is '部门编码';
comment on column tpl_user_t.type is '类型';
comment on column tpl_user_t.default_role is '默认角色';
comment on column tpl_user_t.email is '邮箱';
comment on column tpl_user_t.created_by is '创建人';
comment on column tpl_user_t.creation_date is '创建日期';
comment on column tpl_user_t.last_updated_by is '更新人';
comment on column tpl_user_t.last_update_date is '更新时间';
comment on column tpl_user_t.user_id is '用户id';
comment on column tpl_user_t.w3_account is 'w3_account';
comment on column tpl_user_t.employee_number is '工号';
comment on column tpl_user_t.phone is '电话';
comment on column tpl_user_t.organization_id is '组织id';
comment on column tpl_user_t.temporary_contact is '临时联系方式';
comment on column tpl_user_t.location is '位置';
comment on column tpl_user_t.invalid_flag is '是否有效 0:失效 1:有效';
--Add primary key
alter table tpl_user_t add constraint pk_user_id primary key ( user_id );
--Add Sequence
create sequence tpl_user_s
minvalue 1                                
maxvalue 9999999999999999                      
start with 1                             
increment by 1                           
cache 20;                          
/***********************************角色表*********************************/
--Create table
create table tpl_role_t(
role_id number(30) not null,
area_code varchar2(3000),
role_name varchar2(300) not null,
status varchar2(10) default '1' not null,
application_status varchar2(10),
default_url varchar2(300),
created_by number(30) not null,
creation_date date not null,
last_updated_by number(30) not null,
last_update_date date not null,
role_sort varchar2(50),
invalid_flag varchar2(15) default '1' not null
);
--Add Comment
comment on table tpl_role_t is '角色表';
comment on column tpl_role_t.role_id is '角色id';
comment on column tpl_role_t.area_code is '角色描述';
comment on column tpl_role_t.role_name is '角色名称';
comment on column tpl_role_t.status is '状态 0:未激活 1:已激活';
comment on column tpl_role_t.application_status is '使用状态';
comment on column tpl_role_t.default_url is '默认url';
comment on column tpl_user_t.created_by is '创建人';
comment on column tpl_user_t.creation_date is '创建日期';
comment on column tpl_user_t.last_updated_by is '更新人';
comment on column tpl_user_t.last_update_date is '更新时间';
comment on column tpl_role_t.role_sort is '角色顺序';
comment on column tpl_role_t.invalid_flag is '是否有效 0:失效 1:有效';
--Add primary key
alter table tpl_role_t add constraint pk_role_id primary key ( role_id );
--Add Sequence
create sequence tpl_role_s
minvalue 1                                
maxvalue 9999999999999999                      
start with 1                             
increment by 1                           
cache 20;
/***********************************维度表*********************************/
--Create table
create table tpl_dimension_t(
id number(30) not null,
dimension_code varchar2(500) not null,
dimension_filed varchar2(4000),
dimension_name varchar2(500) not null,
dimension_type number(10),
dimension_url varchar2(4000) not null,
created_by number(30) not null,
creation_date date not null,
last_updated_by number(30) not null,
last_update_date date not null,
scope varchar2(50),
application_status varchar2(10),
invalid_flag number(15) default 1 not null,
remark varchar2(4000)
);
--Add Comment
comment on table tpl_dimension_t is '维度表';
comment on column tpl_dimension_t.id is '维度id';
comment on column tpl_dimension_t.dimension_code is '维度编码';
comment on column tpl_dimension_t.dimension_filed is '';
comment on column tpl_dimension_t.dimension_name is '维度名称';
comment on column tpl_dimension_t.dimension_type is '维度类型';
comment on column tpl_dimension_t.dimension_url is '获取数据字典配置的维度数据接口地址';
comment on column tpl_dimension_t.created_by is '创建人';
comment on column tpl_dimension_t.creation_date is '创建日期';
comment on column tpl_dimension_t.last_updated_by is '更新人';
comment on column tpl_dimension_t.last_update_date is '更新时间';
comment on column tpl_dimension_t.scope is '';
comment on column tpl_dimension_t.application_status is '';
comment on column tpl_dimension_t.invalid_flag is '是否有效 0:失效 1:有效';
comment on column tpl_dimension_t.remark is '备注';
--Add primary key
alter table tpl_dimension_t add constraint pk_dimension_id primary key ( id );
--Add Sequence
create sequence tpl_dimension_s
minvalue 1                                
maxvalue 9999999999999999                      
start with 1                             
increment by 1                           
cache 20;
/***********************************数据范围表*********************************/
--Create table
create table tpl_program_t(
program_id number(30) not null,
name varchar2(300) not null,
description varchar2(300),
scope varchar2(50),
status varchar2(10) default 1 not null,
created_by number(30),
creation_date date,
last_updated_by number(30),
last_update_date date,
admin_program varchar2(1),
approved_by varchar2(15),
approved_type varchar2(2) default 1 not null,
application_status varchar2(10)
);
--Add Comment
comment on table tpl_program_t is '数据范围表';
comment on column tpl_program_t.program_id is '数据范围id';
comment on column tpl_program_t.name is '名称';
comment on column tpl_program_t.scope is '';
comment on column tpl_program_t.status is '状态 0:未激活 1:已激活';
comment on column tpl_program_t.created_by is '创建人';
comment on column tpl_program_t.creation_date is '创建日期';
comment on column tpl_program_t.last_updated_by is '更新人';
comment on column tpl_program_t.last_update_date is '更新时间';
comment on column tpl_program_t.admin_program is '';
comment on column tpl_program_t.approved_by is '';
comment on column tpl_program_t.approved_type is '';
comment on column tpl_program_t.application_status is '';
--Add primary key
alter table tpl_program_t add constraint pk_program_id primary key ( program_id );
--Add Sequence
create sequence tpl_program_s
minvalue 1                                
maxvalue 9999999999999999                      
start with 1                             
increment by 1                           
cache 20;
/***********************************数据维度关联表*********************************/
--Create table
create table tpl_program_items_r(
program_item_id number(30) not null,
program_id number(30) not null,
type varchar2(50) not null,
value varchar2(3000) not null,
display_value varchar2(3000),
created_by number(30) not null,
creation_date date not null,
last_updated_by number(30) not null,
last_update_date date not null,
invalid_flag number(15) default 1 not null,
remark varchar2(4000)
);
--Add Comment
comment on table tpl_program_items_r is '数据维度关联表';
comment on column tpl_program_items_r.program_item_id is '数据维度关联id';
comment on column tpl_program_items_r.program_id is '对应数据范围表id';
comment on column tpl_program_items_r.type is '对应维度表的dimension_code';
comment on column tpl_program_items_r.value is '根据dimension_url选择的维度值，如果所有权限使用@ALLCONDITION@';
comment on column tpl_program_items_r.display_value is '数据范围名称';
comment on column tpl_program_items_r.created_by is '创建人';
comment on column tpl_program_items_r.creation_date is '创建日期';
comment on column tpl_program_items_r.last_updated_by is '更新人';
comment on column tpl_program_items_r.last_update_date is '更新时间';
comment on column tpl_program_items_r.invalid_flag is '是否有效 0:失效 1:有效';
comment on column tpl_program_items_r.remark is '备注';
--Add primary key
alter table tpl_program_items_r add constraint pk_program_item_id primary key ( program_item_id );
--Add Sequence
create sequence tpl_program_items_s
minvalue 1                                
maxvalue 9999999999999999                      
start with 1                             
increment by 1                           
cache 20;
/***********************************用户角色数据关联表*********************************/
--Create table
create table tpl_user_role_program_t(
user_id number(30) not null,
role_id number(30) not null,
program_id number(30) not null,
begin_date date,
end_date date,
created_by number(30) not null,
creation_date date not null,
last_updated_by number(30) not null,
last_update_date date not null,
invalid_flag number(15) default 1 not null,
remark varchar2(4000)
);
--Add Comment
comment on table tpl_user_role_program_t is '用户角色数据关联表';
comment on column tpl_user_role_program_t.user_id is '用户id';
comment on column tpl_user_role_program_t.role_id is '角色id';
comment on column tpl_user_role_program_t.program_id is '数据范围id';
comment on column tpl_user_role_program_t.begin_date is '权限开始日期';
comment on column tpl_user_role_program_t.end_date is '权限截止日期';
comment on column tpl_user_role_program_t.created_by is '创建人';
comment on column tpl_user_role_program_t.creation_date is '创建日期';
comment on column tpl_user_role_program_t.last_updated_by is '更新人';
comment on column tpl_user_role_program_t.last_update_date is '更新时间';
comment on column tpl_user_role_program_t.invalid_flag is '是否有效 0:失效 1:有效';
comment on column tpl_user_role_program_t.remark is '备注';
--Add primary key
alter table tpl_user_role_program_t add constraint pk_user_role_program_id primary key (user_id,role_id,program_id);
--Add Sequence
create sequence tpl_user_role_program_s
minvalue 1                                
maxvalue 9999999999999999                      
start with 1                             
increment by 1                           
cache 20;
/***********************************用户角色数据关联表*********************************/
--Create table
create table tpl_permission_t(
permission_id number(30) not null,
r_uid varchar2(100),
r_name varchar2(300),
mask varchar2(10),
pr_uid varchar2(100),
pr_name varchar2(150),
r_type varchar2(50),
created_by number(15) not null,
creation_date date not null,
last_updated_by number not null,
last_update_date date not null,
invalid_flag number(15) default 1 not null,
remark varchar2(4000),
app_name varchar2(100) not null
);
--Add Comment
comment on table tpl_permission_t is '权限表';
comment on column tpl_permission_t.permission_id is '权限id';
comment on column tpl_permission_t.r_uid is '';
comment on column tpl_permission_t.r_name is '';
comment on column tpl_permission_t.mask is '';
comment on column tpl_permission_t.pr_uid is '';
comment on column tpl_permission_t.pr_name is '';
comment on column tpl_permission_t.r_type is '';
comment on column tpl_permission_t.created_by is '创建人';
comment on column tpl_permission_t.creation_date is '创建日期';
comment on column tpl_permission_t.last_updated_by is '更新人';
comment on column tpl_permission_t.last_update_date is '更新时间';
comment on column tpl_permission_t.invalid_flag is '是否有效 0:失效 1:有效';
comment on column tpl_permission_t.remark is '备注';
comment on column tpl_permission_t.app_name is '应用名称';
--Add primary key
alter table tpl_permission_t add constraint pk_permission_id primary key ( permission_id );
--Add Sequence
create sequence tpl_permission_s
minvalue 1                                
maxvalue 9999999999999999                      
start with 1                             
increment by 1                           
cache 20;


















































