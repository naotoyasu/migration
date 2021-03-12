-- // create_DEPARTMENT_MASTER_table
-- Migration SQL that makes the change goes here.
CREATE TABLE sampledb.department_master
(
    department_id INT(10) NOT NULL primary key COMMENT '部署ID',
    department_name VARCHAR(255) NOT NULL COMMENT '部署名',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_AT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT '更新日時'
)COMMENT='部署マスタ';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE sampledb.department_master;


