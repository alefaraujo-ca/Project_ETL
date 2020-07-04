-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/b28IPq
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "player" (
    "player_id" int   NOT NULL,
    "full_name" varchar(40)   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(20)   NOT NULL,
    "is_active" boolean   NOT NULL,
    "born_country" varchar(30)   NULL,
    CONSTRAINT "pk_player" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "team" (
    "team_id" char(3)   NOT NULL,
    "full_name" varchar(30)   NOT NULL,
    "nickname" varchar(15)   NOT NULL,
    "city" varchar(20)   NOT NULL,
    "state" varchar(20)   NOT NULL,
    "year_founded" int   NOT NULL,
    "api_team_id" int   NOT NULL,
    CONSTRAINT "pk_team" PRIMARY KEY (
        "team_id"
     )
);

CREATE TABLE "team_player" (
    "team_id" CHAR(3)   NOT NULL,
    "player_id" INT   NOT NULL,
    "season_id" CHAR(7)   NOT NULL,
    CONSTRAINT "pk_team_player" PRIMARY KEY (
        "team_id","player_id","season_id"
     )
);

CREATE TABLE "salary" (
    "salary_id" int   NOT NULL,
    "player_id" int   NOT NULL,
    "salary" float   NOT NULL,
    "start_season" int   NULL,
    "end_season" int   NULL,
    "id_team" CHAR(3)   NOT NULL,
    CONSTRAINT "pk_salary" PRIMARY KEY (
        "salary_id"
     )
);

CREATE TABLE "player_stats" (
    "player_id" int   NOT NULL,
    "season_id" CHAR(7)   NOT NULL,
    "team_id" varchar(3)   NOT NULL,
    "PTS" FLOAT   NULL,
    "BLK" FLOAT   NULL,
    "STL" FLOAT   NULL,
    "AST" FLOAT   NULL,
    "REB" FLOAT   NULL,
    "FT_PCT" FLOAT   NULL,
    "FTA" FLOAT   NULL,
    "FG3_PCT" FLOAT   NULL,
    "FG3A" FLOAT   NULL,
    "FG_PCT" FLOAT   NULL,
    "FGA" FLOAT   NULL,
    "MIN" FLOAT   NULL,
    "GP" INT   NULL,
    "USG" FLOAT   NULL,
    "BPM" FLOAT   NULL,
    "VORP" FLOAT   NULL,
    CONSTRAINT "pk_player_stats" PRIMARY KEY (
        "player_id","season_id"
     )
);

CREATE TABLE "team_stats" (
    "team_id" varchar(3)   NOT NULL,
    "season_id" CHAR(7)   NOT NULL,
    "G" INT   NULL,
    "FG_PCT" FLOAT   NULL,
    "3P_PCT" FLOAT   NULL,
    "FT_PCT" FLOAT   NULL,
    "OREB" FLOAT   NULL,
    "DREB" FLOAT   NULL,
    "PPG" FLOAT   NULL,
    "RPG" FLOAT   NULL,
    "APG" FLOAT   NULL,
    "TO" FLOAT   NULL,
    "SPG" FLOAT   NULL,
    "BPG" FLOAT   NULL,
    "PF" FLOAT   NULL,
    CONSTRAINT "pk_team_stats" PRIMARY KEY (
        "team_id","season_id"
     )
);

ALTER TABLE "team_player" ADD CONSTRAINT "fk_team_player_team_id" FOREIGN KEY("team_id")
REFERENCES "team" ("team_id");

ALTER TABLE "team_player" ADD CONSTRAINT "fk_team_player_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "player_stats" ADD CONSTRAINT "fk_player_stats_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "team_stats" ADD CONSTRAINT "fk_team_stats_team_id" FOREIGN KEY("team_id")
REFERENCES "team" ("team_id");

