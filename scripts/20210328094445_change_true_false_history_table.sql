-- // change_true_false_history_table
-- Migration SQL that makes the change goes here.
ALTER TABLE sampledb.true_false_history ADD star varchar(20) comment '正解スター' AFTER qc_sec_no;
ALTER TABLE sampledb.true_false_history DROP COLUMN true_false_flg;


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE sampledb.true_false_history drop star;
ALTER TABLE sampledb.true_false_history ADD true_false_flg int(1) comment '正誤フラグ 0：誤り 1：正' AFTER qc_sec_no ;

