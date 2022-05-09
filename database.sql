create table dialect(dialectid int primary key, dialectname varchar(255));
create table word(wordid int primary key, wordtext varchar(255), definition text, dialectid int foreign key references dialect(dialectid), upvotes int, downvotes int);
create table user(userid int primary key, username varchar(24), phonenumber varchar(24));
create table audithistory(auditid int primary key, wordid int foreign key references word(wordid), userid int foreign key references user(userid), date datetime);
create table forumentry(entryid int primary key, wordid int foreign key references word(wordid), userid int foreign key references user(userid), forumentry text, date datetime);
