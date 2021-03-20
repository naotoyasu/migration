-- // update_question_collection
-- Migration SQL that makes the change goes here.
ALTER TABLE sampledb.question_collection ADD comment text comment '解説' AFTER answer_no ;


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE sampledb.question_collection drop comment;

