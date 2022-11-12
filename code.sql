--11. join
SELECT *
FROM stream s
INNER JOIN chat c
  ON s.device_id = c.device_id
LIMIT 10
;

--10. 
SELECT
  strftime('%H', time) hour,
  COUNT(*) view_count
FROM stream
WHERE country = "US"
GROUP BY hour
ORDER BY view_count DESC
;

--9. review strftime()
SELECT 
  time,
  strftime('%S', time) seconds
FROM stream
GROUP BY time
LIMIT 20;

--8. preview time column
SELECT time FROM stream LIMIT 10;

--7. genres
SELECT
  game,
  CASE
    WHEN game in ("League of Legends", "Dota 2", "Heroes of the Storm") THEN "MOBA"
    WHEN game in ("Counter-Strike: Global Offensive") THEN "FPS"
    WHEN game in ("DayZ", "ARK: Survival Evolved") THEN "Survival"
    ELSE "Other"
  END genre,
  COUNT(*) count
FROM stream
WHERE game IS NOT NULL
GROUP BY game
ORDER BY count DESC
;

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
