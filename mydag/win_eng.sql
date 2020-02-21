Select count(*)
From pageviews
Join customers
On pageviews.user_id = customers.user_id
Where operating_system = "Windows" OR customers.job_title like "%Engineer%";
