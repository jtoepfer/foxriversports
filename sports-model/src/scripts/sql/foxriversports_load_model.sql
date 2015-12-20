-- This file contains all the constants needed to start the application
--  to prepopulate the system prior to going live.
--
-- Author:  Josh Toepfer 
-- Created: 8/22/2014
-- Revisions
-- 8/29/2014   Added new insert statements for the leagues, rules, sections, articles.
------------------------------------------------------------

-- These insert statements are used to insert the current sports already defined
INSERT INTO SPORTS (NAME, CODE, DESCRIPTION, STARTDATE, ENDDATE) VALUES ('Basketball', 'BASKETBALL', 'Basketball', '1', CURRENT_DATE, NULL);
INSERT INTO SPORTS (NAME, CODE, DESCRIPTION, STARTDATE, ENDDATE) VALUES ('Volleyball', 'VOLLEYBALL', 'Volleyball', '1', CURRENT_DATE, NULL);
INSERT INTO SPORTS (NAME, CODE, DESCRIPTION, STARTDATE, ENDDATE) VALUES ('Softball',   'SOFTBALL',   'Softball', '1', CURRENT_DATE, NULL);
INSERT INTO SPORTS (NAME, CODE, DESCRIPTION, STARTDATE, ENDDATE) VALUES ('Golf',       'GOLF',       'Golf', '1', CURRENT_DATE, NULL);

-- These insert statements are used to insert the different leagues already defined
INSERT INTO LEAGUES (LEAGUECODE, SPORTID, NAME, DESCRIPTION) VALUES ('WAUKFALL', 1, 'Waukesha Men''s 30+ Fall League', 'Waukesha Men''s 30+ Fall League');
INSERT INTO LEAGUES (LEAGUECODE, SPORTID, NAME, DESCRIPTION) VALUES ('WAUKWINTER', 1, 'Waukesha Men''s 18+ Winter League', 'Waukesha Men''s 18+ Winter League');

-- These are the known rules for the given leagues that are already defined.
insert into rules (RULENO, SPORTID, LEAGUEID, PARENTRULEID, NAME, CREATEDATETIME, UPDATEDATETIME) values ("1", 1, null, null, 'Overview', current_date, current_date);


-- These are the known sections per the given rules for the known leagues that are already defined.
INSERT INTO SECTION (SECTIONNO, RULEID, NAME, CREATEDATETIME, UPDATEDATETIME) VALUES ("", 1, 'General', CURRENT_DATE, CURRENT_DATE);


-- These are the known articles per the given section based upon the known leagues that are already defined.
INSERT INTO ARTICLES (ARTICLENO, SECTIONID, PARENTARTICLEID, DESCRIPTION, CREATEDATETIME, UPDATEDATETIME) VALUES ("-", 1, null, 'Unless otherwise stated, Official NCAA rules with Fox Riverisms govern league play.', CURRENT_DATE, CURRENT_DATE);