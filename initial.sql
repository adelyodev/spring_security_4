{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf610
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE TABLE users (\
  username VARCHAR(50) NOT NULL,\
  password VARCHAR(100) NOT NULL,\
  enabled TINYINT NOT NULL DEFAULT 1,\
  PRIMARY KEY (username)\
);\
\
CREATE TABLE authorities (\
  username VARCHAR(50) NOT NULL,\
  authority VARCHAR(50) NOT NULL,\
  FOREIGN KEY (username) REFERENCES users(username)\
);\
\
\
CREATE UNIQUE INDEX ix_auth_username\
  on authorities (username,authority);\
  \
INSERT INTO users (username, password, enabled)\
  values ('bryan',\
    '$2a$10$a07FaSKwo2xAwEj4UJYa0etu8sY5o9onG/0psQ2FxzjviueQUYnbm',\
    1);\
 \
INSERT INTO authorities (username, authority)\
  values ('bryan', 'ROLE_USER');\
  \
  Select * from users;\
  \
  commit
  }