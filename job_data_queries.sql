create database if not exists operation_analytics;
use operation_analytics;
select * from job_data;

#no. of jobs viewd per hour per day for nov 2020
SELECT COUNT(distinct job_id) / 720 AS num_jobs_reviewed
FROM job_data
WHERE
ds LIKE '2020-11%';

#calc 7 day rolling avg throughput(no. of events happening pere sec)
SELECT ds, COUNT(distinct job_id)
AS jobs_reviewed,
AVG (COUNT(DISTINCT job_id))
OVER (ORDER BY ds ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)
AS throughput_7_rolling_avg FROM job_data
WHERE ds BETWEEN '2020-11-01' AND '2020-11-30'
GROUP BY ds ORDER BY ds;

#calc percentage share of each language in 30 days
select language as languages,
round(count(*)*100/total,2) as percentage, 
sub.total from job_data
join (select count(*) as total from job_data) as sub
group by language,sub.total
 order by percentage desc;

#duplicate rows count
SELECT * FROM ( SELECT *, ROW_NUMBER() OVER (PARTITION BY job_id) AS rownum FROM job_data ) a
WHERE rownum > 1;
