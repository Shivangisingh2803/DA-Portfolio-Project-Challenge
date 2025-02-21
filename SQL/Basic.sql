-- Basic Level
-- 1. Retrieve all records for individuals diagnosed with lung cancer.
select * from lung_cancer_data 
where Lung_Cancer_Diagnosis='Yes';

-- 2. Count the number of smokers and non-smokers.
select count(Smoker) AS Count_of_smokers 
from lung_cancer_data where Smoker='Yes'; 
select count(Smoker)  AS Count_of_nonsmokers 
from lung_cancer_data where Smoker='No';

-- 3. List all unique cancer stages present in the dataset.
select distinct(Cancer_Stage) AS unique_cancer_stages 
from lung_cancer_data;

-- 4. Retrieve the average number of cigarettes smoked per day by smokers.
select avg(Cigarettes_per_Day) AS Average_of_Cigarettes_per_Day
from lung_cancer_data where Smoker='Yes';

 -- 5. Count the number of people exposed to high air pollution.
select count(Population_Size) AS No_of_people_exposed_to_high_pollution from lung_cancer_data
where Air_Pollution_Exposure='High';

-- 6. Find the top 5 countries with the highest lung cancer deaths. 
select distinct(Country), Annual_Lung_Cancer_Deaths from lung_cancer_data order by  Annual_Lung_Cancer_Deaths Desc
limit 5;


-- 7. Count the number of people diagnosed with lung cancer by gender.
select Gender, count(*) AS Number_of_patient from lung_cancer_data where Lung_Cancer_Diagnosis='Yes' GROUP BY Gender; 


-- 8. Retrieve records of individuals older than 60 who are diagnosed with lung cancer.
select * from lung_cancer_data where age>60 AND Lung_Cancer_Diagnosis='Yes';
