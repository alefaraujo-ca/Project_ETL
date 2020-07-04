Project Title: NBA Players and their Salaries

Team Members:
Alessandra Araujo
Nadia Iskandar
Jennifer Huynh

Project Description/Outline:
To create a database of NBA players and their salaries. We will able be scraping data from the NBA site to get an additional source of data (player - country and teams - logos). 

Extract data sources:
NBA Dataset of Players and Teams- https://pypi.org/project/nba-api/

Salaries of Players - https://www.kaggle.com/whitefero/nba-player-salary-19902017 

NBA Site to Web Scrape the country of origin of players - https://ca.global.nba.com/playerindex/?_ga=2.145643060.1250585434.1576345060-40322362.1576345059 

Player Statatistatics- https://www.kaggle.com/schmadam97/nba-regular-season-stats-20182019 

Transformations:
For the tables created from the CSV files and the scraped dataset (ex, salary, player_stats, and team_stats) we had to drop some columns that were not required. We also renamed the table columns to match the main tables that were pulled from the API.
For the table team created based on API pull, we decided to use the abbreviation as primary key because, in this scenario it's unique and all the other data refers to abbreviation and not the numeric id.

Load:
We chose SQL over noSQL because SQL provided more structure to our tables. One of the main determining factors was that we did not want to accidentally insert the same data twice. We also knew the data we were going to load, so we did not need the flexibility that noSQL allows for.
