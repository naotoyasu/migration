-- // create_question_collection_table
-- Migration SQL that makes the change goes here.
CREATE TABLE sampledb.question_collection
(
    qc_seq_no INT(10) NOT NULL primary key AUTO_INCREMENT  COMMENT '問題シーケンスNO',
    qualification_seq_no INT(10) NOT NULL COMMENT '対象資格のシーケンスNO',
    pattern VARCHAR(255) COMMENT '回答パターン（単一か否か)',
    question text COMMENT '問題',
    answer_list1 text COMMENT '回答群1',
    answer_list2 text COMMENT '回答群2',
    answer_list3 text COMMENT '回答群3',
    answer_list4 text COMMENT '回答群4',
    answer_no VARCHAR(255) COMMENT '回答NO',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_AT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT '更新日時'
)COMMENT='問題集';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE sampledb.question_collection;


