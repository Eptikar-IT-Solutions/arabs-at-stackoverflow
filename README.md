### How Arab's are contributing to Stackoverflow

Check out the blog post at [eptikar.com/blog](http://eptikar.com/blog)

#### How it works:

**First:**
=========

We used the awesome data availabe at [data.stackexchange.com](http://data.stackexchange.com), using *SQL* to fetch related subsets of data.

Users's *LOCATION* is an open feild in Stackoverflow database and there are about **47,835** unique location by the time of makaing this study. 

Using nested `LIKE` conditions we get possible matches of the location, for example to pull users from Egypt we would have to do:


```sql
# Fetch users from Egypt

  SELECT * FROM users WHERE Location  LIKE '%Egypt%'
    OR LOWER(Location)  LIKE '%egypt%'
    OR LOWER(Location)  LIKE '%cairo'
    OR LOWER(Location)  LIKE '%alexandria%'
    OR LOWER(Location)  LIKE '%pORt said%'
    OR LOWER(Location)  LIKE '%giza%'
    OR LOWER(Location)  LIKE '%fayyum%'
    OR LOWER(Location)  LIKE '%suez%'
    OR LOWER(Location)  LIKE '%al mansurah%'
    OR LOWER(Location)  LIKE '%mansoura%';
    OR LOWER(Location)  LIKE '%sharm el sheikh%'

```

*quiries.sql* contains the sql used to match users of the Arab countries


*P.S:*

*Of course this could be refined to give more accurate results*

**Second:**
===========

We used *R* to make sense of the data using simple visulations, results are in the *graphs* directory


###CREDIT:
- Rayan
- Nimir

###LICENSE:
GPL V 2.0