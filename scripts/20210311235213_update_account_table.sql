-- // update_account_table
-- Migration SQL that makes the change goes here.
ALTER TABLE sampledb.account ADD role varchar(20) comment '権限' AFTER password ;


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE sampledb.account drop role;

