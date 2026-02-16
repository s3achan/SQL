SELECT COUNT(*) as total_tickets, 
       SUM(agent_id IS NOT NULL) as tickets_with_agent,
       SUM(agent_id IS NULL) as tickets_without_agent 
FROM tickets

--- 

SELECT
  COUNT(*) AS total_tickets,
  SUM(CASE WHEN agent_id IS NOT NULL THEN 1 ELSE 0 END) AS tickets_with_agent,
  SUM(CASE WHEN agent_id IS NULL THEN 1 ELSE 0 END) AS tickets_without_agent
FROM tickets;

-----
SELECT
  COUNT(*) AS total_tickets,
  SUM(IF(agent_id IS NOT NULL, 1, 0)) AS tickets_with_agent,
  SUM(IF(agent_id IS NULL, 1, 0)) AS tickets_without_agent
FROM tickets;

----

SELECT COUNT(*) AS total_tickets,
  (SELECT COUNT(*)
   FROM tickets
   WHERE agent_id IS NOT NULL) AS tickets_with_agent,
  (SELECT COUNT(*)
   FROM tickets
   WHERE agent_id IS NULL) AS tickets_without_agent
FROM tickets
