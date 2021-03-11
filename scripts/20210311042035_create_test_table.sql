-- // create_test_table
-- Migration SQL that makes the change goes here.
CREATE TABLE sampledb.test
(
    id int(10) NOT NULL,
    name VARCHAR(20)
);


-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE sampledb.test CASCADE CONSTRAINTS;

