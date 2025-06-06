SELECT 
    a.machine_id, 
    ROUND(AVG((a1.timestamp - a.timestamp)), 3) AS processing_time
    FROM Activity AS a 
    JOIN Activity AS a1 
        ON a.machine_id = a1.machine_id 
       AND a.process_id = a1.process_id 
    WHERE a.activity_type = 'start' 
      AND a1.activity_type = 'end'
GROUP BY machine_id;
