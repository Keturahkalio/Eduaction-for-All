--Shows top 20 state with highest number of donors
SELECT state, 
COUNT () 
from Donation_Data 
GROUP by state 
ORDER BY COUNT () DESC LIMIT 20;

-- Shows the number of donors for each job field
SELECT job_field, 
COUNT () 
from Donation_Data 
GROUP by job_field 
ORDER BY COUNT () DESC;

--Shows the total of donations
SELECT SUM (donation) 
FROM Donation_Data;

--Shows no. of female gender that donated
SELECT COUNT(gender) 
FROM Donation_Data 
WHERE gender = 'Female';

--Shows the sum of donation made by females
SELECT SUM (donation) 
FROM Donation_Data 
WHERE gender = 'Female';

--Shows no. of male gender that donated
SELECT COUNT(gender) 
FROM Donation_Data 
WHERE gender = 'Male';

--Shows the sum of donation made by males
SELECT SUM (donation) 
FROM Donation_Data 
WHERE gender = 'Male';

--Shows the number of donations yearly
SELECT COUNT (donation_frequency) 
FROM Donor_Data2 
WHERE donation_frequency = "Yearly";

--Shows the number of donations monthly
SELECT COUNT (donation_frequency) 
FROM Donor_Data2 
WHERE donation_frequency = "Monthly";

--Shows the number of donations weekly
SELECT COUNT (donation_frequency) 
FROM Donor_Data2 
WHERE donation_frequency = "Weekly";

--Shows the number of donations once
SELECT COUNT (donation_frequency) 
FROM Donor_Data2 
WHERE donation_frequency = "Once";

--Shows the donation frequency of each individual yearly
SELECT Donation_Data.first_name, Donation_Data.last_name, Donor_Data2.donation_frequency
FROM Donation_Data 
JOIN Donor_Data2 
on Donation_Data.id = Donor_Data2.id 
WHERE donation_frequency = "Yearly";

--Donation frequency on a monthly basis
SELECT Donation_Data.first_name, Donation_Data.last_name, Donor_Data2.donation_frequency
FROM Donation_Data 
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id 
WHERE donation_frequency = "Monthly";

--Donation frequency on a weekly basis
SELECT Donation_Data.first_name, Donation_Data.last_name, Donor_Data2.donation_frequency
FROM Donation_Data 
JOIN Donor_Data2 
on Donation_Data.id = Donor_Data2.id
WHERE donation_frequency = "Weekly";

--Donation frequency on a once basis
SELECT Donation_Data.first_name, Donation_Data.last_name, Donor_Data2.donation_frequency
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency = "Once";


--Shows the sum of donations yearly
SELECT SUM (donation) 
FROM Donation_Data 
JOIN Donor_Data2 
ON Donation_Data.id = Donor_Data2.id 
WHERE donation_frequency = "Yearly";

--Shows the sum of donations monthly
SELECT SUM (donation) 
FROM Donation_Data 
JOIN Donor_Data2 
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency = "Monthly";

--Shows the sum of donations weekly
SELECT SUM (donation) 
FROM Donation_Data 
JOIN Donor_Data2 
ON Donation_Data.id = Donor_Data2.id 
WHERE donation_frequency = "Weekly";

--Shows the sum of donations once
SELECT SUM (donation) 
FROM Donation_Data 
JOIN Donor_Data2 
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency = "Once";

