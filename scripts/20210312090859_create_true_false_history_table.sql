-- // create_true_false_historytable
-- Migration SQL that makes the change goes here.
CREATE TABLE sampledb.true_false_history
(
    true_false_seq_no int NOT NULL primary key AUTO_INCREMENT COMMENT '正誤シーケンスNo',
    employee_number varchar(20) NOT NULL COMMENT '社員番号',
    qc_sec_no int NOT NULL COMMENT '問題シーケンスNo',
    true_false_flg int(1) not null comment '正誤フラグ 0：誤り 1：正',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_AT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT '更新日時'
)COMMENT='正誤履歴';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE sampledb.true_false_history;


