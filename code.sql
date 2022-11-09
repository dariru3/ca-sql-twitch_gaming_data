--6. view sources
SELECT
  player,
  COUNT(*) view_count
FROM stream
GROUP BY player
ORDER BY view_count DESC
;

--5. LoL viewers
SELECT
  country,
  --game,
  COUNT(*) lol_count
FROM stream
WHERE game = "League of Legends"
GROUP BY country
ORDER BY lol_count DESC
LIMIT 10
;

--4. most popular games
SELECT
  game,
  COUNT(*) pop_count
FROM stream
GROUP BY game
ORDER BY pop_count DESC
LIMIT 10
;

--3. unique channels
SELECT 
  DISTINCT channel unique_channels
FROM stream
;


--2. unique games
SELECT 
  DISTINCT game unique_games
FROM stream
;

--1. tables
--stream
SELECT *
FROM stream
limit 10
;
--chat
SELECT *
FROM chat
limit 10
;
