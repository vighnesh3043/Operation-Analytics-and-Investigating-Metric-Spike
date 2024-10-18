#1. calc the weekly user engagement
select extract(week from occured_at)
as week_number,count(distinct user_id) 
as active_user from table_events2
where event_type ='engagement'
group by week_number
order by active_user;


#2. calc the user growth over time for product
SELECT year, week_num, num_users,
SUM(num_users)
OVER (ORDER BY year, week_num
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
AS cum_users
FROM (SELECT EXTRACT(year FROM activated_at)
AS year, EXTRACT(week FROM activated_at)
AS week_num, COUNT(DISTINCT user_id)
AS num_users
FROM table1_users
WHERE state='active'
GROUP BY year, week_num
ORDER BY year, week_num) a;


#3. calc the weekly retention of users-signup cohort
SELECT 
    COUNT(sub.user_id) AS total_users,
    SUM(CASE WHEN sub.retention_week = 1 THEN 1 ELSE 0 END) AS per_week_retention
FROM 
    (SELECT 
        a.user_id, 
        a.sign_up_week, 
        b.engagement_week, 
        b.engagement_week - a.sign_up_week AS retention_week
    FROM 
        (SELECT DISTINCT 
            user_id, 
            EXTRACT(week FROM occured_at) AS sign_up_week
        FROM 
            table_events2
        WHERE 
            event_type = 'signup_flow'
            AND event_name = 'complete_signup'
            AND EXTRACT(week FROM occured_at) = 18 
        ) a
    LEFT JOIN 
        (SELECT DISTINCT 
            user_id, 
            EXTRACT(week FROM occured_at) AS engagement_week
        FROM 
            table_events2
        WHERE 
            event_type = 'engagement'
        ) b
    ON 
        a.user_id = b.user_id
    ) sub
GROUP BY 
    sub.user_id 
ORDER BY 
    Sub.user_id;


#4. calc the weekly user engagement per device
select extract(year from occured_at) as year_number,
    extract(week from occured_at) as week_number,device,
    count(distinct user_id) as 
    active_users from table_events2 
    where event_type = 'engagement'   
    group by week_number,device,year_number
    order by week_number,device,year_number;
 

#5. calc the users email engagement metrics
SELECT 100.0* SUM(CASE WHEN action = 'email_open' THEN 1 ELSE 0 END) / 
SUM(CASE WHEN action IN ('sent_weekly_digest', 'sent_reengagement_email')
 THEN 1 ELSE 0 END) AS email_opening_rate, 
 100.0* SUM(CASE WHEN action = 'email_clickthrough' THEN 1 ELSE 0 END) / 
 SUM(CASE WHEN action IN ('sent_weekly_digest', 'sent_reengagement_email') 
 THEN 1 ELSE 0 END) AS email_clicking_rate FROM email_data_events;
