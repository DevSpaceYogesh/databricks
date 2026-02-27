create catalog if not exists pjmi
comment "'PJMI Data Platform - Dev Environment";

create schema if not exists pjmi.bronze
comment "'PJMI Data Platform - Dev Environment - Bronze schema'";

create schema if not exists pjmi.silver
comment "'PJMI Data Platform - Dev Environment - Silver schema'";

create schema if not exists pjmi.gold
comment "'PJMI Data Platform - Dev Environment - gold schema'";

create schema if not exists pjmi.inbound
comment "'PJMI Data Platform - Dev Environment - inbound schema'";

GRANT USE SCHEMA ON SCHEMA pjmi.inbound TO `account users`;
GRANT USE SCHEMA ON SCHEMA pjmi.bronze TO `account users`;
GRANT USE SCHEMA ON SCHEMA pjmi.silver TO `account users`;
GRANT USE SCHEMA ON SCHEMA pjmi.gold TO `account users`;

GRANT CREATE TABLE ON SCHEMA pjmi.bronze TO `account users`;
GRANT CREATE TABLE ON SCHEMA pjmi.silver TO `account users`;
GRANT CREATE TABLE ON SCHEMA pjmi.gold TO `account users`;
