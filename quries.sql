################################################################  

  SELECT COUNT(*) FROM users; # TOTAL Users is 4,113,611
  
################################################################

  SELECT COUNT(*) FROM Posts; #TOTAL Posts is 245,33,055

################################################################

  SELECT * FROM users WHERE Location LIKE '%Sudan'
    OR LOWER(Location) LIKE '%sudan%'
    OR LOWER(Location) LIKE '%khartoum%'
    OR LOWER(Location) LIKE '%bahri%';
    OR LOWER(Location) LIKE '%omdurman%';
    # Execluding users from south sudan
    AND LOWER(Location) NOT LIKE '%south sudan%'

################################################################

  SELECT * FROM users WHERE Location  LIKE '%MORocco%'
    OR LOWER(Location) LIKE '%mORocco%'
    OR LOWER(Location) LIKE '%casablanca%'
    OR LOWER(Location) LIKE '%rabat%'
    OR LOWER(Location) LIKE '%taza%'
    OR LOWER(Location) LIKE '%marrakech%'
    OR LOWER(Location) LIKE '%fes mORocco%';
    OR LOWER(Location) LIKE '%agadir%';
    OR LOWER(Location) LIKE '%المغرب%';

###################################################################

  SELECT * FROM users WHERE Location  LIKE '%Saudi Aribia%'
    OR LOWER(Location)  LIKE '%saudi aribia%'
    OR LOWER(Location)  LIKE '%ksa%'
    OR LOWER(Location)  LIKE '%riyadh%'
    OR LOWER(Location)  LIKE '%jeddah%'
    OR LOWER(Location)  LIKE '%mecca%'
    OR LOWER(Location)  LIKE '%medina%' 
    OR LOWER(Location)  LIKE '%dammam%';
    OR LOWER(Location)  LIKE '%الرياض%';

###################################################################

  SELECT * FROM users WHERE Location  LIKE '%Iraq%'
    OR LOWER(Location)  LIKE '%iraq%'
    OR LOWER(Location)  LIKE '%baghdad'
    OR LOWER(Location)  LIKE '%basra%'
    OR LOWER(Location)  LIKE '%kirkuk%'
    OR LOWER(Location)  LIKE '%fallujah%'
    OR LOWER(Location)  LIKE '%mosul%';

###################################################################

  SELECT * FROM users WHERE Location  LIKE '%Algeria%'
    OR LOWER(Location)  LIKE '%algeria%'
    OR LOWER(Location)  LIKE '%alger'
    OR LOWER(Location)  LIKE '%constantine%'
    OR LOWER(Location)  LIKE '%annaba%'
    OR LOWER(Location)  LIKE '%tlemcen%'
    OR LOWER(Location)  LIKE '%bejaia%'
    OR LOWER(Location)  LIKE '%ORan';
    OR LOWER(Location)  LIKE '%الجزائر%';

###################################################################

  SELECT * FROM users WHERE Location  LIKE '%Egypt%'
    OR LOWER(Location)  LIKE '%egypt%'
    OR LOWER(Location)  LIKE '%cairo%'
    OR LOWER(Location)  LIKE '%alexandria%'
    OR LOWER(Location)  LIKE '%pORt said%'
    OR LOWER(Location)  LIKE '%giza%'
    OR LOWER(Location)  LIKE '%fayyum%'
    OR LOWER(Location)  LIKE '%suez%'
    OR LOWER(Location)  LIKE '%al mansurah%'
    OR LOWER(Location)  LIKE '%mansoura%'
    OR LOWER(Location)  LIKE '%sharm el sheikh%'
    OR LOWER(location)  LIKE '%10th of Ramadan%'
    OR LOWER(location)  LIKE '%aswan%'
    OR LOWER(Location)  LIKE '%مصر%'
    # Execluding places where there is a city named alexandria
    OR LOWER(Location) NOT LIKE '%la%'
    OR LOWER(Location) NOT LIKE '%ohio%'
    OR LOWER(Location) NOT LIKE '%mn%'
    OR LOWER(Location) NOT LIKE '%canada%'
    OR LOWER(Location) NOT LIKE '%va%';


###################################################################

  SELECT * FROM users WHERE Location  LIKE '%UAE%'
    OR LOWER(Location)  LIKE '%uae%'
    OR LOWER(Location)  LIKE '% united arab emirates'
    OR LOWER(Location)  LIKE '%dubai%'
    OR LOWER(Location)  LIKE '%abu dhabi%'
    OR LOWER(Location)  LIKE '%sharjah%'
    OR LOWER(Location)  LIKE '%al Ain%'
    OR LOWER(Location)  LIKE '%ajman%'
    OR LOWER(Location)  LIKE '%ras alkhaimah%'
    OR LOWER(Location)  LIKE '%fujairah%'
    OR LOWER(Location)  LIKE '%umm alquwain%'

#######################################################################

  SELECT * FROM users WHERE Location  LIKE '%Syria%'
    OR LOWER(Location)  LIKE '%syria%'
    OR LOWER(Location)  LIKE '%damascus'
    OR LOWER(Location)  LIKE '%latakia%'
    OR LOWER(Location)  LIKE '%aleppo%'
    OR LOWER(Location)  LIKE '%ladhiqiyah%';

#######################################################################

  SELECT * FROM users WHERE Location  LIKE '%Tunisia%'
    OR LOWER(Location)  LIKE '%tunisia%'
    OR LOWER(Location)  LIKE '%tunis'
    OR LOWER(Location)  LIKE '%sfax%'
    OR LOWER(Location)  LIKE '%sousse%'
    OR LOWER(Location)  LIKE '%sosah%'
    OR LOWER(Location)  LIKE 'kairouan%'
    OR LOWER(Location)  LIKE 'ettadhamen%'
    OR LOWER(Location)  LIKE 'gabès%'
    OR LOWER(Location)  LIKE 'bizerte%'
    OR LOWER(Location)  LIKE 'aryanah%'
    OR LOWER(Location)  LIKE 'gafsa%'
    OR LOWER(Location)  LIKE '%sfax%'
    OR LOWER(Location)  LIKE 'el mourouj%'

############################################################

  SELECT * FROM users WHERE Location  LIKE '%JORdan%'
    OR LOWER(Location)  LIKE '%jORdan%'
    OR LOWER(Location)  LIKE '%amman%'
    OR LOWER(Location)  LIKE '%zarqa'
    OR LOWER(Location)  LIKE '%irbid'
    OR LOWER(Location)  LIKE '%jerash';

#############################################################

  SELECT * FROM users WHERE Location  LIKE '%Libya%'
    OR LOWER(Location)  LIKE '%libya%'
    OR LOWER(Location)  LIKE '%benghazi'
    OR LOWER(Location)  LIKE '%tripoli';

#############################################################

  SELECT * FROM users WHERE Location  LIKE '%Palestine%'
    OR LOWER(Location)  LIKE '%palestine%'
    OR LOWER(Location)  LIKE '%ramallah'
    OR LOWER(Location)  LIKE '%al quds'
    OR LOWER(Location)  LIKE '%gaza'
    OR LOWER(Location)  LIKE '%nablus'
    OR LOWER(Location)  LIKE '%beit jala';

################################################################

  SELECT * FROM users WHERE Location  LIKE '%Lebanon%'
    OR LOWER(Location)  LIKE '%lebanon%'
    OR LOWER(Location)  LIKE '%beirut'
    OR LOWER(Location)  LIKE '%tripoli'
    OR LOWER(Location)  LIKE '%sidon'
    OR LOWER(Location)  LIKE '%zahlé'
    OR LOWER(Location)  LIKE '%aley';

################################################################

  SELECT * FROM users WHERE Location  LIKE '%Oman'
    OR LOWER(Location)  LIKE '%oman'
    OR LOWER(Location)  LIKE '%muscat'
    OR LOWER(Location)  LIKE '%salalah';

#################################################################

  SELECT * FROM users WHERE Location  LIKE '%Kuwait'
    OR LOWER(Location)  LIKE '%kuwait'
    OR LOWER(Location)  LIKE '%kuwait city';

#################################################################

  SELECT * FROM users WHERE Location  LIKE '%Mauritania'
    OR LOWER(Location)  LIKE '%mauritania'
    OR LOWER(Location)  LIKE '%nouakchott';

#################################################################

  SELECT * FROM users WHERE Location  LIKE '%Qatar'
    OR LOWER(Location)  LIKE '%qatar'
    OR LOWER(Location)  LIKE '%Doha%'
    OR LOWER(Location)  LIKE '%doha';

#################################################################

  SELECT * FROM users WHERE Location  LIKE '%Bahrain'
    OR LOWER(Location)  LIKE '%bahrain'
    OR LOWER(Location)  LIKE '%manama'
    OR LOWER(Location)  LIKE '%muharraq';

################################################################

  SELECT * FROM users WHERE Location  LIKE '%ComORos'
    OR LOWER(Location)  LIKE '%comORos'
    OR LOWER(Location)  LIKE '%anjouan'
    OR LOWER(Location)  LIKE '%grande comORe'
    OR LOWER(Location)  LIKE '%mohéli';

################################################################

  SELECT * FROM users WHERE Location  LIKE '%Yemen'
    OR LOWER(Location)  LIKE '%yemen'
    OR LOWER(Location)  LIKE '%sanaa%'
    OR LOWER(Location)  LIKE '%aden'
    OR LOWER(Location)  LIKE '%taizz';

################################################################

  SELECT * FROM users WHERE Location  LIKE '%Djibouti'
    OR LOWER(Location)  LIKE '%djibouti'
    OR LOWER(Location)  LIKE '%djibouti city';

################################################################

  SELECT * FROM users WHERE Location  LIKE '%Somalia%'
    OR LOWER(Location)  LIKE '%somalia%'
    OR LOWER(Location)  LIKE '%mogadishu';


################################################################
######### Combining above quiries to match Arab users ##########
################################################################

WITH
arab_users
AS 
(
  SELECT id, Location FROM users 
       WHERE LOWER(location) LIKE ('%sudan%')
       OR LOWER(Location) LIKE ('%khartoum%')
       OR LOWER(location) LIKE ('%bahri%')
       OR LOWER(location) LIKE ('%mORocco%') 
       OR LOWER(location) LIKE ('%casablanca%') 
       OR LOWER(location) LIKE ('%rabat%') 
       OR LOWER(location) LIKE ('%Taza%')
       OR LOWER(location) LIKE ('%marrakech%') 
       OR LOWER(location) LIKE ('%fes mORocco%') 
       OR LOWER(location) LIKE ('%saudi aribia%') 
       OR LOWER(location) LIKE ('%ksa') 
       OR LOWER(location) LIKE ('%riyadh%') 
       OR LOWER(location) LIKE ('%jeddah%') 
       OR LOWER(location) LIKE ('%mecca%') 
       OR LOWER(location) LIKE ('%medina%') 
       OR LOWER(location) LIKE ('%dammam%') 
       OR LOWER(location) LIKE ('%iraq%') 
       OR LOWER(location) LIKE ('%baghdad') 
       OR LOWER(location) LIKE ('%basra%') 
       OR LOWER(location) LIKE ('%kirkuk%') 
       OR LOWER(location) LIKE ('%fallujah%') 
       OR LOWER(location) LIKE ('%mosul%') 
       OR LOWER(location) LIKE ('%algeria%') 
       OR LOWER(location) LIKE ('%alger') 
       OR LOWER(location) LIKE ('%constantine%') 
       OR LOWER(location) LIKE ('%annaba%') 
       OR LOWER(location) LIKE ('%tlemcen%')
       OR LOWER(location) LIKE ('%bejaia%') 
       OR LOWER(location) LIKE ('%ORan') 
       OR LOWER(location) LIKE ('%egypt%')
       OR LOWER(location) LIKE ('%cairo') 
       OR LOWER(location) LIKE ('%alexandria%') 
       OR LOWER(location) LIKE ('%pORt said%') 
       OR LOWER(location) LIKE ('%giza%') 
       OR LOWER(location) LIKE ('%fayyum%') 
       OR LOWER(location) LIKE ('%suez%') 
       OR LOWER(location) LIKE ('%al mansurah%') 
       OR LOWER(location) LIKE ('%mansoura%') 
       OR LOWER(location) LIKE ('%sharm el sheikh%') 
       OR LOWER(location) LIKE ('%uae%') 
       OR LOWER(location) LIKE ('% united arab emirates')
       OR LOWER(location) LIKE ('%dubai%') 
       OR LOWER(location) LIKE ('%abu dhabi%') 
       OR LOWER(location) LIKE ('%sharjah%') 
       OR LOWER(location) LIKE ('%al Ain%') 
       OR LOWER(location) LIKE ('%ajman%') 
       OR LOWER(location) LIKE ('%ras alkhaimah%') 
       OR LOWER(location) LIKE ('%fujairah%') 
       OR LOWER(location) LIKE ('%Umm alquwain%')
       OR LOWER(location) LIKE ('%syria%') 
       OR LOWER(location) LIKE ('%damascus') 
       OR LOWER(location) LIKE ('%latakia%') 
       OR LOWER(location) LIKE ('%aleppo%') 
       OR LOWER(location) LIKE ('al ladhiqiyah%') 
       OR LOWER(location) LIKE ('%tunisia%') 
       OR LOWER(location) LIKE ('%tunis') 
       OR LOWER(location) LIKE ('%sfax%') 
       OR LOWER(location) LIKE ('%sousse%') 
       OR LOWER(location) LIKE ('%sosah%') 
       OR LOWER(location) LIKE ('kairouan%') 
       OR LOWER(location) LIKE ('ettadhamen%') 
       OR LOWER(location) LIKE ('gabès%') 
       OR LOWER(location) LIKE ('bizerte%') 
       OR LOWER(location) LIKE ('aryanah%') 
       OR LOWER(location) LIKE ('gafsa%') 
       OR LOWER(location) LIKE ('%sfax%') 
       OR LOWER(location) LIKE ('el mourouj%') 
       OR LOWER(location) LIKE ('%jORdan%') 
       OR LOWER(location) LIKE ('%amman%') 
       OR LOWER(location) LIKE ('%zarqa') 
       OR LOWER(location) LIKE ('%irbid') 
       OR LOWER(location) LIKE ('%jerash') 
       OR LOWER(location) LIKE ('%libya%') 
       OR LOWER(location) LIKE ('%benghazi') 
       OR LOWER(location) LIKE ('%tripoli') 
       OR LOWER(location) LIKE ('%palestine%') 
       OR LOWER(location) LIKE ('%ramallah') 
       OR LOWER(location) LIKE ('%al quds') 
       OR LOWER(location) LIKE ('%gaza') 
       OR LOWER(location) LIKE ('%nablus') 
       OR LOWER(location) LIKE ('%beit jala') 
       OR LOWER(location) LIKE ('%lebanon%') 
       OR LOWER(location) LIKE ('%beirut') 
       OR LOWER(location) LIKE ('%tripoli')
       OR LOWER(location) LIKE ('%sidon')
       OR LOWER(location) LIKE ('%zahlé')
       OR LOWER(location) LIKE ('%aley')
       OR LOWER(location) LIKE ('%oman')
       OR LOWER(location) LIKE ('%muscat')
       OR LOWER(location) LIKE ('%salalah')
       OR LOWER(location) LIKE ('%kuwait')
       OR LOWER(location) LIKE ('%kuwait city')
       OR LOWER(location) LIKE ('%mauritania')
       OR LOWER(location) LIKE ('%nouakchott')
       OR LOWER(location) LIKE ('%qatar')
       OR LOWER(location) LIKE ('%doha')
       OR LOWER(location) LIKE ('%doha')
       OR LOWER(location) LIKE ('%bahrain')
       OR LOWER(location) LIKE ('%manama')
       OR LOWER(location) LIKE ('%muharraq')
       OR LOWER(location) LIKE ('%comORos')
       OR LOWER(location) LIKE ('%anjouan')
       OR LOWER(location) LIKE ('%grande comORe')
       OR LOWER(location) LIKE ('%mohéli')
       OR LOWER(location) LIKE ('%yemen')
       OR LOWER(location) LIKE ('%Sanaa%')
       OR LOWER(location) LIKE ('%taizz')
       OR LOWER(location) LIKE ('%djibouti')
       OR LOWER(location) LIKE ('%djibouti city')
       OR LOWER(location) LIKE ('%somalia%')
       OR LOWER(location) LIKE ('%mogadishu')
)

  ################################################################
  ################# TOTAL Arab Psots 103,908 #####################
  ################################################################

  SELECT COUNT(*) FROM Posts WHERE Posts.OwnerUserId IN (SELECT id FROM arab_users q
     
     WHERE LOWER(location) NOT LIKE ('%alexandria, va')
     OR LOWER(location) NOT LIKE ('%alexandria, la')
     OR LOWER(location) NOT LIKE ('%south sudan')
     OR LOWER(location) NOT LIKE ('%jerusalem%')
     OR LOWER(location) NOT LIKE ('%libya - tripoli')
     OR LOWER(location) NOT LIKE ('%muscatine, IA'))


  ################################################################
  ####################### TOTAL Popular Tags #####################
  ################################################################

  SELECT Tags.TagName, COUNT(Tags.TagName) FROM Posts, Tags WHERE Posts.OwnerUserId IN (
    SELECT Users.Id FROM arab_users q
       
       WHERE LOWER(location) NOT LIKE ('%alexandria, va')
       OR LOWER(location) NOT LIKE ('%alexandria, la')
       OR LOWER(location) NOT LIKE ('%south sudan')
       OR LOWER(location) NOT LIKE ('%jerusalem%')
       OR LOWER(location) NOT LIKE ('%libya - tripoli')
       OR LOWER(location) NOT LIKE ('%muscatine, IA'))

    AND Tags.Id IN (SELECT TagId FROM PostTags WHERE PostId = Posts.Id)
    GROUP BY Tags.TagName
    ORDER BY COUNT(Tags.TagName) DESC;