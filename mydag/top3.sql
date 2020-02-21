Select top3.user_id, url as last_page_viewed from pageviews 
Join (select user_id, MAX(timestamp) as max_time from pageviews group by user_id) as latest
On latest.user_id = pageviews.user_id and pageviews.timestamp = max_time
join 
(Select tmp.user_id
From
(Select distinct c.user_id
From customers c
Join pageviews p
On p.user_id = c.user_id
Where url like "%.gov%") as tmp
Join pageviews
On tmp.user_id = pageviews.user_id
Group by tmp.user_id
Order by count(*) desc
Limit 3) top3
ON top3.user_id = pageviews.user_id;

