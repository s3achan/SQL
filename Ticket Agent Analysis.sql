SELECT COUNT(*) as total_tickets, 
       SUM(agent_id IS NOT NULL) as tickets_with_agent,
       SUM(agent_id IS NULL) as tickets_without_agent 
FROM tickets

