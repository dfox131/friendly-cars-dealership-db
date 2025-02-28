/* Friendly Cars Dealership Views */

CREATE VIEW CarCustomerView AS
	SELECT  custId, FirstName, LastName,referredBy, adSeen, zip
	FROM  CarCustomer;

CREATE VIEW CarSalespersonView AS
	SELECT empId, firstName, lastName, zip, dateHired
	FROM CarSalesperson;

CREATE VIEW CarAdView AS
	SELECT placedIn, initialDate, totalCost, frequency
	FROM CarAd;

CREATE VIEW CarSaleView AS
	SELECT invoiceNo,saleDate,registrationFee,tradeInAmount,amountPaid,
           amountDue, saleMiles,custId,empId,newCarVIN,usedCarVIN,insPolNo,finPolNo,tradeInVIN,registrationNo
	FROM CarSale;

CREATE VIEW CarInsuranceView AS
	SELECT InsPolicyNo, companyName, zip, startDate, endDate
	FROM CarInsurance;

CREATE VIEW CarFinancingView AS
	SELECT FinPolicyNo, companyName, zip, startDate, numberMonths
	FROM CarFinancing;