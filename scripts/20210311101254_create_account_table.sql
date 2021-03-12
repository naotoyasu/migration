-- // create_account_table
-- Migration SQL that makes the change goes here.
CREATE TABLE sampledb.account
(
    employee_number VARCHAR(20) NOT NULL primary key COMMENT '社員番号',
    department_id INT(10) NOT NULL COMMENT '部署ID',
    name VARCHAR(255) NOT NULL COMMENT '名前',
    password VARCHAR(255) NOT NULL COMMENT 'パスワード',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_AT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT '更新日時'
)COMMENT='アカウント';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE sampledb.account;


