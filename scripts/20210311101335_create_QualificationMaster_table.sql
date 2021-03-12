-- // create_qualification_master_table
-- Migration SQL that makes the change goes here.
CREATE TABLE sampledb.qualification_master
(
    qualificatio_seq_no INT(10) NOT NULL primary key AUTO_INCREMENT  COMMENT '資格シーケンスNO',
    qualification VARCHAR(255) NOT NULL COMMENT '資格名',
    varsion VARCHAR(255) COMMENT 'バージョン',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_AT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT '更新日時'
)COMMENT='資格マスタ';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE sampledb.qualification_master;


