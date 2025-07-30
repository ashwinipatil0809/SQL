SELECT concat_ws("-","2025","06","25")AS DATE;
SELECT LOCATE("S","DataScience")As foundAt;
SELECT LOCATE("S","DataScienceS",6)as foundAt;
SELECT LOCATE("a","flower")as notfoundchar;

SELECT LOCATE("a","DataScience")As pos1,
LOCATE("a","DataScience ",LOCATE("a","DataScience")+1)As pos2; 
LOCATE("a","DataScience",LOCATE("a","DataScience"+1)+1) As pos3;


SELECT REVERSE("DataScience")As reverse;
SELECT REVERSE(trim("            DataScience            "))As reverse;

SELECT ASCII("A") As ASCIIValue;
SELECT ASCII("Z") As ASCIIValue;
SELECT ASCII("a") As ASCIIValue;
SELECT ASCII("z") As ASCIIValue;

SELECT RPAD("45",5,"*")AS rpaded;

SELECT RPAD("1854",7,"*")As rpaded;

SELECT LPAD(RIGHT("9511827927",4),10,"x")AS RAPED;
SELECT RPAD(LEFT("9123546789",6),10,"x")As RPADED;

SELECT SUBSTRING_INDEX("patilashwini2134@gmail.com","@",1)as domain;
SELECT SUBSTRING_INDEX("patilashwini2134@gmail.com","@",-1)as domain;
SELECT SUBSTRING_INDEX("ASHWINI PATIL"," ",+1)As firstname;
SELECT SUBSTRING_INDEX("ASHWINI PATIL"," ",-1)As firstname;


-- maths function
SELECT CEIL(3423/1000)As ceilng;  -- closest and greatest integer values
SELECT CEIL(8976/100)AS celing;  
SELECT CEIL(3.7)AS celing; 

SELECT FLOOR(3.9)As celing;      -- closest & lowerest interger values

SELECT ROUND(34.8976,2)As rounded;
SELECT ROUND(8976.89765,3)As rounded;

SELECT SQRT(25)AS squreroot;

SELECT POWER(3,2)As power;
SELECT POWER(5,3)As power;

SELECT log(53)As log;
SELECT log10(53)As log;
SELECT sin(45);
SELECT RADIANS(180)As rad;
SELECT SIN(RADIANS(180))As radsin;

SELECT ABS(-10) As absolute;
SELECT ABS(-4) As absolute;

SELECT MOD(13,4)As remainder;
SELECT PI()As pie_value;

-- SELECT GREATEST(30,"science",40,"maths",64,"chem",67)As best_score;

SELECT coalesce(NULL,345065,NULL,NULl)As firstnum;
SELECT coalesce(NULL,NULL,NULL,NULl)As ALLnULL;



-- date function

SELECT curdate();
SELECT now();
SELECT year("2025-06-22");
SELECT DAY("2025-06-22");
SELECT MONTH("2025-06-22");

SELECT date_format("2025-06-02","%D-%M-%Y");

SELECT date_format("2025-06-02","%d-%m-%y");

SELECT date_format("2025-06-02","%d-%b-%y");

SELECT date_format("2025-06-02","%d-%a-%y");

SELECT datediff("2030-06-02","2025-06-02")AS DIFF;

SELECT date_add(curdate(),interval 14 day);
SELECT date_add("2025-07-02",interval 1 year)adddate;
SELECT date_add(curdate(),interval 1 YEAR);
SELECT lastday();
SELECT date_sub("2030-06-02",interval 10 day);
select last_day("2025-07-04");
 SELECT weekofyear("2025-06-08");