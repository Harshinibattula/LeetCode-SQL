SELECT machine_id, ROUND(AVG(end_timestamp - start_timestamp),3) AS 'processing_time'
FROM
    (SELECT a.machine_id, a.process_id, a.timestamp as 'start_timestamp', b.timestamp AS 'end_timestamp'
        FROM Activity a
        INNER JOIN Activity b
        ON a.machine_id = b.machine_id
        AND a.process_id = b.process_id
        AND a.activity_type = 'start'AND b.activity_type = 'end'
    ) AS processing_time
GROUP BY machine_id;