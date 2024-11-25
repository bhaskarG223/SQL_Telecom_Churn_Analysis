### TELECOME CHURN ANALYSIS PROJECT

SELECT * FROM telecom_churn limit 10;

# check data sanity/quality check
SELECT COUNT(*) FROM telecom_churn; # total Records in Given data is 7043

SELECT COUNT(*) AS Column_count FROM INFORMATION_SCHEMA.columns WHERE TABLE_NAME = "telecom churn";

### What is the churn rate on telecom data
SELECT churn,COUNT(*) AS CNT FROM telecom_churn
GROUP BY churn; # in given data almost 26.54% customers are left the network

SELECT * FROM telecom_churn limit 10;
SELECT COUNT(distinct CustomerID) AS dist_cnt FROM telecom_churn;

### is there any misssing values in data
describe telecom_churn;

SELECT COUNT(*) FROM telecom_churn
WHERE customerID is NULL;	

SELECT * FROM telecom_churn limit 10;

SELECT 
min(tenure) as min_tenure,
max(tenure) as max_tenure,
avg(tenure) as avg_tenure,
std(tenure) as deviation 
FROM telecom_churn;

# if the avg value higher than standard deviation value there is no extreme values
# if standard deviation value is higher compare to avg value then, extreme values avilable in the data.

SELECT * FROM telecom_churn limit 10;
SELECT
min(MonthlyCharges) as min_MonthlyCharges,
max(MonthlyCharges) as max_MonthlyCharges,
avg(MonthlyCharges) as avg_MonthlyCharges,
std(MonthlyCharges) as deviation
FROM telecom_churn;

SELECT
min(TotalCharges) as min_TotalCharges,
max(TotalCharges) as max_TotalCharges,
avg(TotalCharges) as avg_TotalCharges,
std(TotalCharges) as deviation
FROM telecom_churn;

SELECT gender,COUNT(CUSTOMERID) AS CNT
FROM telecom_churn
GROUP BY gender;

### percent
SELECT gender,COUNT(CUSTOMERID) AS CNT,
(COUNT(*)/(SELECT COUNT(*) FROM telecom_churn)*100) as percent
from telecom_churn
GROUP BY gender;

##  checking churn rate with respect gender
SELECT gender,churn,COUNT(CUSTOMERID) AS CNT,
(COUNT(*)/(SELECT COUNT(*) FROM telecom_churn)*100) as percent
from telecom_churn
GROUP BY gender,churn;

SELECT* FROM telecom_churn limit 10;

SELECT SeniorCitizen,COUNT(CUSTOMERID) AS CNT,
(COUNT(*)/(SELECT COUNT(*) FROM telecom_churn)*100) as percent
from telecom_churn
GROUP BY SeniorCitizen;

# percentage of churn seniorcitizen
SELECT SeniorCitizen,churn,COUNT(CUSTOMERID) AS CNT,
(COUNT(*)/(SELECT COUNT(*) FROM telecom_churn)*100) as percent
from telecom_churn
GROUP BY SeniorCitizen,churn;

SELECT * FROM telecom_churn limit 10;
## on partner variable

SELECT partner,COUNT(CUSTOMERID) AS CNT,
(COUNT(*)/(SELECT COUNT(*) FROM telecom_churn)*100) as percent
from telecom_churn
GROUP BY partner;

## percentage of churn partner customers

SELECT partner,churn,COUNT(CUSTOMERID) AS CNT,
(COUNT(*)/(SELECT COUNT(*) FROM telecom_churn)*100) as percent
from telecom_churn
GROUP BY partner,churn;

## dependence
SELECT Dependents,COUNT(CUSTOMERID) AS CNT,
(COUNT(*)/(SELECT COUNT(*) FROM telecom_churn)*100) as percent
from telecom_churn
GROUP BY Dependents;

## churn rate of dependents 
SELECT Dependents,churn,COUNT(CUSTOMERID) AS CNT,
(COUNT(*)/(SELECT COUNT(*) FROM telecom_churn)*100) as percent
from telecom_churn
GROUP BY Dependents,churn;
