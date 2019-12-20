DROP TABLE beepro_user;
DROP TABLE message;
DROP TABLE heart;
DROP TABLE comments;
DROP TABLE todo;
DROP TABLE project;
DROP TABLE matching_personal;
DROP TABLE matching_project;
DROP TABLE issue;
DROP TABLE skill;
DROP TABLE project_member;
DROP SEQUENCE USER_SEQ;


--location, skill 컬럼은 not null 제약조건 안걸어 둠

CREATE SEQUENCE USER_SEQ
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 10000
  MINVALUE 1
  NOCYCLE;


CREATE TABLE beepro_user (
	user_seq	number	NOT NULL PRIMARY KEY,
	name	varchar2(400)	NOT NULL,
	pwd	varchar2(200)	NOT NULL,
	email	varchar2(300)	NOT NULL,
	emailHash	varchar2(300)	NOT NULL,
	location	varchar2(300),
	email_ck	varchar2(6)	NOT NULL,
	CONSTRAINT email_ck_chk CHECK(email_ck IN('Y','N'))
);

INSERT into beepro_user values(1,'홍길동','abc123','kakung1202@naver.com', 'zzz',null, 'Y');

DELETE from beepro_user where name='홍길동';
SELECT * FROM beepro_user;

CREATE TABLE message (
	message_seq	number	NOT NULL,
	content	varchar2(4000)	NOT NULL,
	regdate	Date	NOT NULL,
	message_ck	varchar2(6)	NULL,
	sendperson	number	NOT NULL,
	getperson	number	NOT NULL
);

CREATE TABLE heart (
	send_heart	number	NOT NULL,
	get_heart	number	NOT NULL
);


CREATE TABLE comments (
	comments_seq	number	NOT NULL,
	issue_seq	number	NOT NULL,
	project_seq	number	NOT NULL,
	writer	varchar2(30)	NOT NULL,
	content	varchar2(2000)	NOT NULL,
	regdate	Date	NOT NULL
);


CREATE TABLE todo (
	todo_seq	number	NOT NULL,
	project_seq	number	NOT NULL,
	content	varchar2(4000)	NOT NULL,
	manager	varchar2(30)	NOT NULL,
	title	varchar2(500)	NOT NULL,
	startdate	Date	NOT NULL,
	enddate	Date	NOT NULL,
	category	varchar2(200)	NOT NULL,
	finish_ck	varchar2(6)	NOT NULL,
	CONSTRAINT finish_ck_chk CHECK(finish_ck IN('Y','N'))
);


CREATE TABLE project (
	project_seq	number	NOT NULL,
	startdate	date	NOT NULL,
	enddate	date	NOT NULL,
	finish_ck	varchar2(6)	NOT NULL,
	CONSTRAINT finish_ch_chk CHECK(finish_ck IN('Y','N'))
);


CREATE TABLE matching_personal (
	personal_seq	number	NOT NULL,
	user_seq	number	NOT NULL,
	skill	varchar2(4000),
	emp_category	varchar2(1000) NOT NULL,
	title	varchar2(500)	NOT NULL,
	content	varchar2(4000)	NOT NULL
);

CREATE TABLE matching_project (
	project_seq	number	NOT NULL,
	pm_seq	number	NOT NULL,
	title	varchar2(300)	NOT NULL, 
	content	varchar2(4000)	NOT NULL,
	need_person	varchar2(200)	NOT NULL,
	location	varchar2(300)	
);

CREATE TABLE issue (
	issue_seq	number	NOT NULL,
	project_seq	number	NOT NULL,
	title	varchar2(500)	NOT NULL,
	writer	varchar2(30)	NOT NULL,
	issue_level	varchar2(50)	NOT NULL,
	regdate	Date	NOT NULL,
	issue_category	varchar2(150)	NOT NULL,
	content	varchar2(4000)	NOT NULL
);

CREATE TABLE skill (
	personal_seq	number	NOT NULL,
	uesr_seq	number	NOT NULL,
	backend	varchar2(1000)	,
	frontend	varchar2(1000)	
);


CREATE TABLE project_member (
	project_seq	number	NOT NULL,
	member_seq	number	NOT NULL,
	pm_ck	varchar2(6)	NOT NULL,
	CONSTRAINT pm_ck_chk CHECK(pm_ck IN('Y','N'))
);

ALTER TABLE message ADD CONSTRAINT PK_MESSAGE PRIMARY KEY (message_seq);

ALTER TABLE heart ADD CONSTRAINT PK_HEART PRIMARY KEY (send_heart,get_heart);

ALTER TABLE comments ADD CONSTRAINT PK_COMMENTS PRIMARY KEY (
	comments_seq,
	issue_seq,
	project_seq
);

ALTER TABLE todo ADD CONSTRAINT PK_TODO PRIMARY KEY (
	todo_seq,
	project_seq
);

ALTER TABLE project ADD CONSTRAINT PK_PROJECT PRIMARY KEY (
	project_seq
);

ALTER TABLE matching_personal ADD CONSTRAINT PK_MATCHING_PERSONAL PRIMARY KEY (
	personal_seq,
	user_seq
);

ALTER TABLE matching_project ADD CONSTRAINT PK_MATCHING_PROJECT PRIMARY KEY (
	project_seq,
	pm_seq
);

ALTER TABLE issue ADD CONSTRAINT PK_ISSUE PRIMARY KEY (
	issue_seq,
	project_seq
);

ALTER TABLE skill ADD CONSTRAINT PK_SKILL PRIMARY KEY (
	personal_seq,
	uesr_seq
);

ALTER TABLE project_member ADD CONSTRAINT PK_PROJECT_MEMBER PRIMARY KEY (project_seq,member_seq);

ALTER TABLE heart ADD CONSTRAINT FK_beepro_user_TO_heart_1 FOREIGN KEY (send_heart) REFERENCES beepro_user (user_seq);

ALTER TABLE heart ADD CONSTRAINT FK_beepro_user_TO_heart_2 FOREIGN KEY (get_heart) REFERENCES beepro_user (user_seq);

ALTER TABLE comments ADD CONSTRAINT FK_issue_TO_comments_1 FOREIGN KEY (issue_seq,project_seq) REFERENCES issue (issue_seq,project_seq);

--ALTER TABLE comments ADD CONSTRAINT FK_issue_TO_comments_2 FOREIGN KEY (
--	project_seq
--)
--REFERENCES issue (
--	project_seq
--);

ALTER TABLE todo ADD CONSTRAINT FK_project_TO_todo_1 FOREIGN KEY (project_seq) REFERENCES project (project_seq);

ALTER TABLE matching_personal ADD CONSTRAINT FK_user_TO_match_personal FOREIGN KEY (user_seq) REFERENCES beepro_user (user_seq);

ALTER TABLE matching_project ADD CONSTRAINT FK_user_TO_match_project FOREIGN KEY (pm_seq) REFERENCES beepro_user (user_seq);

ALTER TABLE issue ADD CONSTRAINT FK_project_TO_issue_1 FOREIGN KEY (project_seq) REFERENCES project (project_seq);

ALTER TABLE skill ADD CONSTRAINT FK_match_per_TO_skill_1 FOREIGN KEY (personal_seq,uesr_seq) REFERENCES matching_personal (personal_seq,user_seq);

--ALTER TABLE skill ADD CONSTRAINT FK_match_per_TO_skill_2 FOREIGN KEY (
--	uesr_seq
--)
--REFERENCES matching_personal (
--	user_seq
--);

ALTER TABLE project_member ADD CONSTRAINT FK_project_TO_project_mem FOREIGN KEY (project_seq) REFERENCES project (project_seq);

ALTER TABLE project_member ADD CONSTRAINT FK_user_TO_project_mem FOREIGN KEY (member_seq) REFERENCES beepro_user (user_seq);

COMMIT


