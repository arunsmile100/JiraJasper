CREATE TABLE jira.jiraprojectstatus (
	id int4 NULL,
	"jsonData" jsonb NULL,
	"isActive" varchar(20) NULL,
	"CreateTime" timestamp NULL,
	"State" varchar(20) NULL,
	"UpdateTime" timestamp NULL
)
WITH (
	OIDS=FALSE
) ;



CREATE TABLE jira.priorityreference (
	id int4 NULL,
	"PriorityName" varchar(20) NULL,
	"PrioritySort" int4 NULL
)
WITH (
	OIDS=FALSE
) ;



INSERT INTO jira.priorityreference
(id, "PriorityName", "PrioritySort")
VALUES(1, 'Showstopper', 1);


INSERT INTO jira.priorityreference
(id, "PriorityName", "PrioritySort")
VALUES(2, 'High', 2);


INSERT INTO jira.priorityreference
(id, "PriorityName", "PrioritySort")
VALUES(3, 'Medium', 3);


INSERT INTO jira.priorityreference
(id, "PriorityName", "PrioritySort")
VALUES(4, 'Low', 4);



CREATE INDEX Jira_pstatus_ix1 ON jira.jiraprojectstatus USING btree ("isActive");


CREATE INDEX Jira_pstatus_ix2 ON jira.jiraprojectstatus USING btree ("State");


CREATE INDEX Jira_pstatus_ix3 ON jira.jiraprojectstatus USING gin ("jsonData");