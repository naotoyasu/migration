-- // update_ture_false_history
-- Migration SQL that makes the change goes here.
ALTER TABLE sampledb.true_false_history CHANGE COLUMN  qc_sec_no qc_seq_no int(10);




-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE sampledb.true_false_history CHANGE COLUMN  qc_seq_no qc_sec_no int(10);

