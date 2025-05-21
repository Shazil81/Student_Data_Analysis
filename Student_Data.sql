-- Exploration Queries --

/* View table data */
select * from student_data;

/* View First 10 rows */
select *from student_data limit 10;

/* Check data types and nulls */
describe student_data;

/* Count Total records */
select count(*) as Total_Students from student_data;

/* Count of Unique Grades */
select Grade, count(*) as Count_per_grade
from student_data
group by Grade;

/* Check for duplicate roll numbers */
select Roll_No, count(*) as Count
from student_data
group by Roll_No
having Count > 1 ;

/* Distribution of commenst */
select Comment, count(*) as Count
from student_data
group by Comment
order by Count desc;

/* Identify Missing or Anomalous Data */
select * from student_data
 where Math is null or Physics is null or Chemistry is null;


-- Analysis Queries --

/* 1. Top 5 Students by total marks */
select Student_Names, (Math + Physics + Chemistry) as total_Marks
from student_data order by Total_Marks desc
limit 5;


/* 2. Average Score per Subject */
select 
	avg(Math) as Avg_Math,
	avg(Physics) as Avg_Physics,
    avg(Chemistry) as Avg_Chemistry
from student_data;


/* 3. Subject wise Top Scorer */
select Student_Names, Math as Score, 'Math' as Subject
from student_data
where Math=(select max(Math) from student_data)
union
select Student_Names, Physics as Score, 'Physics' as Subject
from student_data
where Physics=(select max(Physics) from student_data)
union
select Student_Names, Chemistry as Score, 'Chemistry' as Subject
from student_data
where Chemistry=(select max(Chemistry) from student_data);



/* 4. Count of Students per Grade */
select Grade, count(*) as Student_Count
from student_data
group by Grade
order by Student_Count desc;



/* 5. Count of student who got Failed */
select count(Roll_No) as Student_Count, 'F' as Failed
from student_data
where Grade = 'F';



/* 6. Students who got Consistently High Scores in All Subjects (All > 80) */
select Student_Names, Roll_No, Math, Physics, Chemistry
from student_data
where Math > 80 and Physics > 80 and Chemistry > 80 ;



/* 7. Rank of Students BY Average Score */
select Student_Names,
	round((Math + Physics + Chemistry)/3.0, 2) as Average_Score,
    row_number() over (order by (Math + Physics + Chemistry)/3.0  desc) as Ranks
from Student_data
order by Ranks;    



/* 8. Students who passed */
select Student_Names, Roll_No, Grade
from student_data
where Grade != 'F';



/* 9. Grade wise Average Performance */
select Grade,
	avg(Math) as Avg_Math,
    avg(Physics) as Avg_Physics,
    avg(Chemistry) as Avg_Chemistry
from student_data
group by Grade
order by Grade;



/* 10. Students with Comments Poor Pursuance */
select Student_Names, Roll_No, Grade
from student_data
where Comment = 'Poor Pursuance';
	
