-- Intermediate Level
-- 1. Find the percentage of smokers who developed lung cancer.
select round((count(*)*100)/(select count(*) from lung_cancer_data where Smoker='Yes'),2)
AS percentage_of_smoker from lung_cancer_data 
where Smoker='Yes' and Lung_Cancer_Diagnosis= ' Yes';

-- 2. Calculate the average survival years based on cancer stages.
select Cancer_Stage,round(avg(Survival_Years),2) AS average_of_survival_years 
from lung_cancer_data group by Cancer_Stage order by Cancer_Stage;

-- 3. Count the number of lung cancer patients based on passive smoking.
select Passive_Smoker ,count(*) AS Lung_Cancer_Patient from lung_cancer_data
where Lung_Cancer_Diagnosis='Yes'
group by Passive_Smoker;

-- 4. Find the country with the highest lung cancer prevalence rate.
select country,Lung_Cancer_Prevalence_Rate from lung_cancer_data
order by  Lung_Cancer_Prevalence_Rate  desc limit 1;

-- 5. Identify the smoking years' impact on lung cancer.
select Years_of_Smoking,count(*) AS Smoking_years_impact_on_lungcancer from lung_cancer_data 
where Lung_Cancer_Diagnosis='Yes'
group by Years_of_Smoking order by Years_of_Smoking; 

-- 6. Determine the mortality rate for patients with and without early detection.
select Early_Detection,round(avg(Mortality_Rate),2) AS Mortality_rate
from lung_cancer_data group by Early_Detection order by Early_Detection;

-- 7. Group the lung cancer prevalence rate by developed vs. developing countries.
select Developed_or_Developing,round(avg(Lung_Cancer_Prevalence_Rate),2) 
AS lung_cancer_prevelence_rate from lung_cancer_data
group by  Developed_or_Developing order by  Developed_or_Developing;
