/* Friendly Cars Dealership Inserts */

-- CarAd (placedIn, initialDate, totalCost, frequency, contactPerson, areaCode, phoneNumber)

INSERT INTO CarAd VALUES ('AD001', '01-JAN-2023', 2000.50, 10, 'John Adams', '515', '1234567'); 
 
INSERT INTO CarAd VALUES ('AD002', '20-FEB-2024', 1500.75, 8, 'Jane Smith', '718', '9876543'); 
 
INSERT INTO CarAd VALUES ('AD003', '10-MAR-2020', 2500.00, 12, 'Alice Wonderland', '646', '1122334'); 
 
INSERT INTO CarAd VALUES ('AD004', '05-APR-2024', 1800.20, 9, 'Bob Brown', '315', '4455667'); 
 
INSERT INTO CarAd VALUES ('AD005', '25-MAY-2022', 2200.80, 11, 'Charlie Green', '516', '7788990');
 

-- CarZipCode (zip, city, state)

INSERT INTO CarZipCode VALUES ('18503', 'New York', 'NY');
INSERT INTO CarZipCode VALUES ('18504', 'New York', 'NY');
INSERT INTO CarZipCode VALUES ('18505', 'New York', 'NY');
INSERT INTO CarZipCode VALUES ('06901', 'Stamford', 'CT');
INSERT INTO CarZipCode VALUES ('10005', 'New York', 'NY');
INSERT INTO CarZipCode VALUES ('90001', 'Los Angeles', 'CA');
INSERT INTO CarZipCode VALUES ('94102', 'San Francisco', 'CA');
INSERT INTO CarZipCode VALUES ('10001', 'New York', 'NY');
INSERT INTO CarZipCode VALUES ('60601', 'Chicago', 'IL');
INSERT INTO CarZipCode VALUES ('77002', 'Houston', 'TX');
   

-- CarCustomer (custId, adSeen, firstName, lastName, street, zip, areaCode, phoneNumber, referredBy)

INSERT INTO CarCustomer VALUES ('CUST01', 'AD001', 'Michael', 'Scott', '123 Paper St','18503', '570', '1234567', 'Andrew Craig'); 
 
INSERT INTO CarCustomer VALUES ('CUST02', 'AD002', 'Dwight', 'Schrute', '456 Beet St', '18504', '570', '7654321','Pam Beesly'); 
 
INSERT INTO CarCustomer VALUES ('CUST03', 'AD003', 'Sheldon', 'Cooper', '789 Dunder Rd', '18505', '570', '3456789', 'Angela Martin'); 
 
INSERT INTO CarCustomer VALUES ('CUST04', 'AD004', 'Jim', 'Halpert', '101 Maple St', '06901', '203', '9876543', 'Michael Douglas'); 
 
INSERT INTO CarCustomer VALUES ('CUST05', 'AD005', 'Ryan', 'Howard', '202 Corporate Blvd', '10005', '212', '1122334','Kelly Clarkson'); 
 
 
-- CarCustomerDriversLicense (driversLicNo, custId)    

INSERT INTO CarCustomerDriversLicense VALUES ('DL12345', 'CUST01'); 
 
INSERT INTO CarCustomerDriversLicense VALUES ('DL23456', 'CUST02'); 
 
INSERT INTO CarCustomerDriversLicense VALUES ('DL34567', 'CUST03'); 
 
INSERT INTO CarCustomerDriversLicense VALUES ('DL45678', 'CUST04'); 
 
INSERT INTO CarCustomerDriversLicense VALUES ('DL56789', 'CUST05'); 
 

-- CarNewCar (VIN, make, model, listPrice, dateManufactured, placeManufactured, cylinders, doors, weight, capacity, color, delDate, delMiles)    

INSERT INTO CarNewCar VALUES ('VIN001', 'Toyota', 'Camry', 30000.00,'10-Jan-2023', 'Japan', 6, 4, 1500.25, 5, 'White','15-May-2023', 10.5); 
 
INSERT INTO CarNewCar VALUES ('VIN002', 'Honda', 'Civic', 25000.00, '18-Feb-2024', 'USA', 4, 4, 1400.50, 5, 'Black','10-Jun-2024', 12.0); 
 
INSERT INTO CarNewCar VALUES ('VIN003', 'Ford', 'Mustang', 45000.00,'20-Mar-2022', 'USA', 8, 2, 1700.75, 4, 'Red','01-Jul-2022', 5.0); 
 
INSERT INTO CarNewCar VALUES ('VIN004', 'BMW', 'X5', 60000.00,'25-Apr-2023', 'Germany', 6, 4, 1800.60, 7, 'Blue','15-Aug-2023', 7.2); 
 
INSERT INTO CarNewCar VALUES ('VIN005', 'Audi', 'A4', 50000.00,'30-May-2023', 'Germany', 4, 4, 1600.40, 5, 'Gray', '10-Sep-2023', 8.0); 

 
-- CarOptionsMenu (carOption, price)   

INSERT INTO CarOptionsMenu VALUES ('Sunroof', 1000.00); 
 
INSERT INTO CarOptionsMenu VALUES ('Leather Seats', 1500.00); 
 
INSERT INTO CarOptionsMenu VALUES ('Navigation System', 2000.00); 
 
INSERT INTO CarOptionsMenu VALUES ('Heated Seats', 800.00); 
 
INSERT INTO CarOptionsMenu VALUES ('Air Suspension', 1200.00); 
 

-- CarNewCarOptions (VIN, carOption)    

INSERT INTO CarNewCarOptions VALUES ('VIN001', 'Sunroof'); 
INSERT INTO CarNewCarOptions VALUES ('VIN001', 'Leather Seats'); 
INSERT INTO CarNewCarOptions VALUES ('VIN002', 'Navigation System'); 
INSERT INTO CarNewCarOptions VALUES ('VIN002', 'Sunroof'); 
INSERT INTO CarNewCarOptions VALUES ('VIN002', 'Leather Seats'); 
INSERT INTO CarNewCarOptions VALUES ('VIN003', 'Heated Seats'); 
INSERT INTO CarNewCarOptions VALUES ('VIN004', 'Sunroof'); 
INSERT INTO CarNewCarOptions VALUES ('VIN004', 'Leather Seats'); 
INSERT INTO CarNewCarOptions VALUES ('VIN004', 'Navigation System'); 
INSERT INTO CarNewCarOptions VALUES ('VIN004', 'Heated Seats'); 
INSERT INTO CarNewCarOptions VALUES ('VIN004', 'Air Suspension'); 

   
-- CarCustomizationMenu (customItem, price)  

INSERT INTO CarCustomizationMenu VALUES ('Custom Paint Job', 3000.00); 
INSERT INTO CarCustomizationMenu VALUES ('Sport Tires', 2000.00); 
INSERT INTO CarCustomizationMenu VALUES ('Carbon Fiber Body Kit', 5000.00); 
INSERT INTO CarCustomizationMenu VALUES ('Performance Exhaust', 3500.00); 
INSERT INTO CarCustomizationMenu VALUES ('Custom Interior Design', 4000.00); 
 

-- CarSalesperson (empId, firstName, lastName, street, zip, homeAreaCode, homePhoneNumber, officeAreaCode, officePhoneNumber, cellAreaCode, cellPhoneNumber, dateHired)

INSERT INTO CarSalesperson VALUES ('EMP001', 'Michael', 'Anderson', '123 Main St','90001', '213', '5551234', '213', '5555678', '213', '5559876','15-Jun-2021'); 
INSERT INTO CarSalesperson VALUES ('EMP002', 'Jessica', 'Brown', '456 Oak Ave', '94102', '415', '5552234', '415', '5555678', '415', '5559876', '25-Mar-2019'); 
INSERT INTO CarSalesperson VALUES ('EMP003', 'David', 'Wilson', '789 Pine Rd', '10001', '212', '5553234', '212', '5555678', '212', '5559876', '01-Nov-2020'); 
INSERT INTO CarSalesperson VALUES ('EMP004', 'Emily', 'Turner', '101 Cedar Blvd', '60601', '312', '5554234', '312', '5555678', '312', '5559876', '05-Aug-2022'); 
INSERT INTO CarSalesperson VALUES ('EMP005', 'Christopher', 'Johnson', '202 Birch St', '77002', '713', '5555234', '713', '5555678', '713', '5559876', '10-Jan-2023'); 

 
-- CarRegistration (registrationNo, plateNo, fee) 

INSERT INTO CarRegistration VALUES ('REG001', 'ABC123', 100.00);
INSERT INTO CarRegistration VALUES ('REG002', 'DEF456', 105.00);
INSERT INTO CarRegistration VALUES ('REG003', 'GHI789', 110.00);
INSERT INTO CarRegistration VALUES ('REG004', 'JKL012', 120.00);
INSERT INTO CarRegistration VALUES ('REG005', 'MNO345', 125.00);

 
-- CarInsurance (InsPolicyNo, companyName, street, zip, areaCode, phoneNumber, startDate, endDate)

INSERT INTO CarInsurance VALUES ('INS001', 'StateFarm', '123 Main St', '10001', '555', '5551234', '01-JANUARY-2024', '01-JANUARY-2025');
INSERT INTO CarInsurance VALUES ('INS002', 'AllState', '456 Elm St', '10005', '555', '5555678', '01-FEBRUARY-2024', '01-FEBRUARY-2025');
INSERT INTO CarInsurance VALUES ('INS003', 'Geico', '789 Oak St', '18503', '555', '5558765', '01-MARCH-2024', '01-MARCH-2025');
INSERT INTO CarInsurance VALUES ('INS004', 'Liberty Mutual', '135 Maple St', '06901', '555', '5554321', '01-APRIL-2024', '01-APRIL-2025');
INSERT INTO CarInsurance VALUES ('INS005', 'Progressive', '246 Pine St', '18504', '555', '5556789', '01-MAY-2024', '01-MAY-2025'); 


-- CarFinancing (FinPolicyNo, companyName, street, zip, areaCode, phoneNumber, startDate, amountFinanced, rate, numberMonths)

INSERT INTO CarFinancing VALUES ('FIN001', 'Chase', '321 Cedar St', '18503', '555', '5559876', '15-JANUARY-2024', 20000, 5.0, 60);
INSERT INTO CarFinancing VALUES ('FIN002', 'Bank of America', '654 Walnut St', '18504', '555', '5555432', '20-FEBRUARY-2024', 18000, 4.5, 48);
INSERT INTO CarFinancing VALUES ('FIN003', 'Wells Fargo', '987 Cherry St', '06901', '555', '5556543', '25-MARCH-2024', 22000, 5.2, 72);
INSERT INTO CarFinancing VALUES ('FIN004', 'Capital One', '159 Chestnut St', '10005', '555', '5558769', '10-APRIL-2024', 16000, 4.8, 36);
INSERT INTO CarFinancing VALUES ('FIN005', 'US Bank', '753 Birch St', '60601', '555', '5552134', '18-MAY-2024', 25000, 5.5, 60);
 

-- CarWarrantee (warType, cost, period) 

INSERT INTO CarWarrantee VALUES ('Basic', 500, 24);
INSERT INTO CarWarrantee VALUES ('Powertrain', 800, 36);
INSERT INTO CarWarrantee VALUES ('Comprehensive', 1000, 48);
INSERT INTO CarWarrantee VALUES ('Extended', 1200, 60);
INSERT INTO CarWarrantee VALUES ('Roadside Assistance', 300, 12);

 
-- CarUsedCar (VIN, make, model, cylinders, doors, weight, capacity, color, modelYear, mileage, bookValue) 

INSERT INTO CarUsedCar VALUES ('VIN001', 'Toyota', 'Camry', 4, 4, 3300, 5, 'Blue', 2018, 50000, 18000);
INSERT INTO CarUsedCar VALUES ('VIN002', 'Honda', 'Accord', 4, 4, 3200, 5, 'Black', 2017, 60000, 17000);
INSERT INTO CarUsedCar VALUES ('VIN003', 'Ford', 'Explorer', 6, 4, 4500, 7, 'White', 2019, 40000, 22000);
INSERT INTO CarUsedCar VALUES ('VIN004', 'Chevrolet', 'Malibu', 4, 4, 3400, 5, 'Gray', 2016, 70000, 15000);
INSERT INTO CarUsedCar VALUES ('VIN005', 'Nissan', 'Altima', 4, 4, 3300, 5, 'Red', 2018, 55000, 17500);
 

-- CarUsedCarFeatures (VIN, feature) 

INSERT INTO CarUsedCarFeatures VALUES ('VIN001', 'Sunroof');
INSERT INTO CarUsedCarFeatures VALUES ('VIN001', 'Leather Seats');
INSERT INTO CarUsedCarFeatures VALUES ('VIN002', 'Bluetooth');
INSERT INTO CarUsedCarFeatures VALUES ('VIN003', 'Backup Camera');
INSERT INTO CarUsedCarFeatures VALUES ('VIN003', 'Heated Seats');
INSERT INTO CarUsedCarFeatures VALUES ('VIN004', 'Navigation System');
INSERT INTO CarUsedCarFeatures VALUES ('VIN004', 'Alloy Wheels');
INSERT INTO CarUsedCarFeatures VALUES ('VIN005', 'Remote Start');
INSERT INTO CarUsedCarFeatures VALUES ('VIN005', 'Blind Spot Monitoring');
INSERT INTO CarUsedCarFeatures VALUES ('VIN002', 'Cruise Control');
 

-- CarSale (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount, financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId, newCarVIN, usedCarVIN, insPolNo, finPolNo, tradeInVIN, registrationNo) 

INSERT INTO CarSale VALUES ('INV001', '01-OCTOBER-2024', 25000, 1250, 100, 3000, 20000, 5000, 0, 1500, 10000, 'CUST01', 'EMP001', NULL, 'VIN001', 'INS001', 'FIN001', 'VIN003', 'REG001');
INSERT INTO CarSale VALUES ('INV002', '05-OCTOBER-2024', 22000, 1100, 105, 2500, 18000, 4000, 0, 1300, 8000, 'CUST02', 'EMP002', NULL, 'VIN002', 'INS002', 'FIN002', 'VIN004', 'REG002');
INSERT INTO CarSale VALUES ('INV003', '10-OCTOBER-2024', 27000, 1350, 110, 3500, 22000, 7000, 0, 1600, 5000, 'CUST03', 'EMP003', NULL, 'VIN003', 'INS003', 'FIN003', 'VIN005', 'REG003');
INSERT INTO CarSale VALUES ('INV004', '15-OCTOBER-2024', 21000, 1050, 120, 2000, 16000, 6000, 0, 1200, 6000, 'CUST04', 'EMP004', NULL, 'VIN004', 'INS004', 'FIN004', 'VIN002', 'REG004');
INSERT INTO CarSale VALUES ('INV005', '20-OCTOBER-2024', 23000, 1150, 125, 2800, 19000, 8000, 0, 1400, 7000, 'CUST05', 'EMP005', NULL, 'VIN005', 'INS005', 'FIN005', 'VIN001', 'REG005'); 


-- CarSaleInsurance (insPolNo, insCoName) 

INSERT INTO CarSaleInsurance VALUES ('INS001', 'StateFarm');
INSERT INTO CarSaleInsurance VALUES ('INS002', 'Geico');
INSERT INTO CarSaleInsurance VALUES ('INS003', 'Progressive');
INSERT INTO CarSaleInsurance VALUES ('INS004', 'AllState');
INSERT INTO CarSaleInsurance VALUES ('INS005', 'Liberty Mutual');
 

-- CarSaleFinancing (finPolNo, finCoName) 

INSERT INTO CarSaleFinancing VALUES ('FIN001', 'Chase');
INSERT INTO CarSaleFinancing VALUES ('FIN002', 'Bank of America');
INSERT INTO CarSaleFinancing VALUES ('FIN003', 'Wells Fargo');
INSERT INTO CarSaleFinancing VALUES ('FIN004', 'Capital One');
INSERT INTO CarSaleFinancing VALUES ('FIN005', 'US Bank'); 


-- CarSaleRegistration (registrationNo, warType) 

INSERT INTO CarSaleRegistration VALUES ('REG001', 'Basic');
INSERT INTO CarSaleRegistration VALUES ('REG002', 'Powertrain');
INSERT INTO CarSaleRegistration VALUES ('REG003', 'Comprehensive');
INSERT INTO CarSaleRegistration VALUES ('REG004', 'Extended');
INSERT INTO CarSaleRegistration VALUES ('REG005', 'Roadside Assistance');

 
-- CarSale_CustomItem (invoiceNo, customItem) 

INSERT INTO CarSale_CustomItem VALUES ('INV001', 'Custom Paint Job');
INSERT INTO CarSale_CustomItem VALUES ('INV002', 'Sport Tires');
INSERT INTO CarSale_CustomItem VALUES ('INV003', 'Carbon Fiber Body Kit');
INSERT INTO CarSale_CustomItem VALUES ('INV004', 'Performance Exhaust');
INSERT INTO CarSale_CustomItem VALUES ('INV005', 'Custom Interior Design');

 
-- CarSurvey (surveyNumber, dealershipRating, carRating, salespersonRating) 

INSERT INTO CarSurvey VALUES ('SUR001', 5, 4, 5);
INSERT INTO CarSurvey VALUES ('SUR002', 4, 5, 4);
INSERT INTO CarSurvey VALUES ('SUR003', 5, 5, 5);
INSERT INTO CarSurvey VALUES ('SUR004', 4, 4, 4);
INSERT INTO CarSurvey VALUES ('SUR005', 5, 3, 4);
 

-- CarSurveyInvoice (invoiceNo, surveyNumber) 

INSERT INTO CarSurveyInvoice VALUES ('INV001', 'SUR001');
INSERT INTO CarSurveyInvoice VALUES ('INV002', 'SUR002');
INSERT INTO CarSurveyInvoice VALUES ('INV003', 'SUR003');
INSERT INTO CarSurveyInvoice VALUES ('INV004', 'SUR004');
INSERT INTO CarSurveyInvoice VALUES ('INV005', 'SUR005');