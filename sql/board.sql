DROP TABLE wemovies.board;
 
CREATE TABLE wemovies.board(
seq       int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
subject   VARCHAR(200),
content   VARCHAR(1000),
name      VARCHAR(20),
reg_date  VARCHAR(100),
readCount int(10)
);
    
INSERT INTO wemovies.board (SEQ, SUBJECT, CONTENT, NAME, READCOUNT) VALUES ('1', 'TEST_SUBJECT1', 'TEST', 'k', '0');
INSERT INTO wemovies.board (SEQ, SUBJECT, CONTENT, NAME, READCOUNT) VALUES ('2', 'TEST_SUBJECT2', 'TEST', 'k', '0');
INSERT INTO wemovies.board (SEQ, SUBJECT, CONTENT, NAME, READCOUNT) VALUES ('3', 'TEST_SUBJECT3', 'TESt', 'k', '0');
INSERT INTO wemovies.board (SEQ, SUBJECT, CONTENT, NAME, READCOUNT) VALUES ('4', 'TEST_SUBJECT4', 'Test', 'k', '0');
INSERT INTO wemovies.board (SEQ, SUBJECT, CONTENT, NAME, READCOUNT) VALUES ('5', 'TEST_SUBJECT5', 'TESt', 'k', '0');

select * from wemovies.board;