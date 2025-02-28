/* Friendly Cars Dealership Tables */

CREATE TABLE CarAd 
(placedIn            VARCHAR2(15)    NOT NULL,
 initialDate         DATE,
 totalCost           NUMBER(6,2),
 frequency           NUMBER(4),
 contactPerson       VARCHAR2(35),
 areaCode            CHAR(3),
 phoneNumber         CHAR(7),
 CONSTRAINT CarAd_pk PRIMARY KEY (placedIn));


CREATE TABLE CarCustomer 
(custId              VARCHAR2(6)     NOT NULL,
 adSeen              VARCHAR2(15),
 firstName           VARCHAR2(20)    NOT NULL,
 lastName            VARCHAR2(20)    NOT NULL,
 street              VARCHAR2(50),
 city                VARCHAR2(15),
 state               CHAR(2),
 zip                 CHAR(5),
 areaCode            CHAR(3),
 phoneNumber         CHAR(7),
 driversLicNo        VARCHAR2(20)    UNIQUE,
 referredBy          VARCHAR2(35),
 CONSTRAINT CarCustomer_pk PRIMARY KEY (custId),
 CONSTRAINT CarCustomer_fk FOREIGN KEY (adSeen) REFERENCES CarAd(placedIn));


CREATE TABLE CarNewCar 
(VIN                 VARCHAR2(17)    NOT NULL,
 make                VARCHAR2(50),
 model               VARCHAR2(50),
 listPrice           NUMBER(10,2),
 dateManufactured    DATE,
 placeManufactured   VARCHAR2(50),
 cylinders           NUMBER(6),
 doors               NUMBER(6),
 weight              NUMBER(8,2),
 capacity            NUMBER(8),
 color               VARCHAR2(20),
 delDate             DATE,
 delMiles            NUMBER(8,2)     NOT NULL,
 CONSTRAINT CarNewCar_pk PRIMARY KEY (VIN));


CREATE TABLE CarOptionsMenu 
(carOption           VARCHAR2(50)    NOT NULL,
 price               NUMBER(10,2),
 CONSTRAINT CarOptionsMenu_pk PRIMARY KEY (carOption));


CREATE TABLE CarNewCarOptions 
(VIN                 VARCHAR2(17)    NOT NULL,
 carOption           VARCHAR2(50)    NOT NULL,
 CONSTRAINT CarNewCarOptions_pk PRIMARY KEY (VIN, carOption),
 CONSTRAINT CarNewCarOptions_fk_VIN FOREIGN KEY (VIN) REFERENCES     CarNewCar(VIN),
 CONSTRAINT CarNewCarOptions_fk_Option FOREIGN KEY (carOption)  REFERENCES CarOptionsMenu(carOption));

CREATE TABLE CarCustomizationMenu
(customItem          VARCHAR2(50)    NOT NULL,
 price               NUMBER(10,2),
 CONSTRAINT CarCustomizationMenu_pk PRIMARY KEY (customItem));


CREATE TABLE CarSalesperson
(empId    			  VARCHAR2(6),
firstName			  VARCHAR2(20) NOT NULL,	
lastName			  VARCHAR2(15) NOT NULL,
street			  VARCHAR2(50),
city				  VARCHAR2(15),	
state				  CHAR(2),
zip				  CHAR(5),
homeAreaCode		  CHAR(3),
homePhoneNumber		  CHAR(7),
officeAreaCode		  CHAR(3),
officePhoneNumber		  CHAR(7),
cellAreaCode		  CHAR(3),
cellPhoneNumber		  CHAR(7),
dateHired			  DATE ,
CONSTRAINT CarSaleperson_pk PRIMARY KEY (empId));


CREATE TABLE CarRegistration( 
registrationNo		  VARCHAR2(20),
plateNo			  VARCHAR2(20),
fee				  NUMBER(8,2),
CONSTRAINT CarRegistration_pk PRIMARY KEY (registrationNo),
CONSTRAINT CarRegistration_plateNo_uk UNIQUE (plateNo));


CREATE TABLE CarInsurance(
InsPolicyNo		     VARCHAR2(20),
companyName		     VARCHAR2(20),
street		     VARCHAR2(50),
city			     VARCHAR2(15),
state			     CHAR(2),
zip			     CHAR(5),
AreaCode		  CHAR(3),
PhoneNumber		  CHAR(7),
StartDate		     DATE,
endDate		  DATE,
CONSTRAINT CarInsurance_No_CompanyName_pk PRIMARY KEY (InsPolicyNo, companyName));


CREATE TABLE CarFinancing(
FinPolicyNo			  VARCHAR2(20),		
companyName			  VARCHAR2(20),		
street			  VARCHAR2(50),
city				  VARCHAR2(15),	
state				  CHAR(2),
zip				  CHAR(5),
AreaCode			  CHAR(3),
PhoneNumber			  CHAR(7),
StartDate			  DATE,
AmountFinanced		  NUMBER(10,2),
Rate				  NUMBER(10,2),
NumberMonths		  NUMBER(2),
CONSTRAINT CarFinancing_No_comapanyName_pk PRIMARY KEY (FinPolicyNo, companyName));


CREATE TABLE CarWarrantee(
warType			  VARCHAR2(20),		
cost				  NUMBER(10,2),
period			  VARCHAR(3),
CONSTRAINT CarWarrantee_type_pk PRIMARY KEY (warType));


CREATE TABLE CarUsedCar(
VIN                       VARCHAR2(17),
make                      VARCHAR2(50),
model                     VARCHAR2(50),
cylinders                 NUMBER(6),
doors                     NUMBER(6),
weight                    NUMBER(8,2),
capacity                  NUMBER(8),
color                     VARCHAR2(20),
modelYear                 NUMBER(4),
mileage                   NUMBER(8),
bookValue                 NUMBER(10,2),
CONSTRAINT CarUsedCar_VIN_pk PRIMARY KEY (VIN));


CREATE TABLE CarUsedCarFeatures(
VIN                      VARCHAR2(17),
feature                  VARCHAR2(50),
CONSTRAINT CarUsedCarFeatures_VIN_pk PRIMARY KEY (VIN),
CONSTRAINT CarUsedCarFeatures_VIN_fk FOREIGN KEY (VIN)
REFERENCES CarUsedCar (VIN));


CREATE TABLE CarSale (
    invoiceNo                VARCHAR2(10),
    saleDate                 DATE,
    salePrice                NUMBER(10,2),
    tax                      NUMBER(8,2),
    registrationFee          NUMBER(8,2),
    tradeInAmount            NUMBER(10,2),
    financedAmount           NUMBER(10,2),
    amountPaid               NUMBER(10,2),
    amountDue                NUMBER(10,2),
    commission               NUMBER(8,2),
    saleMiles                NUMBER(8),
    custId                   VARCHAR2(6),
    empId                    VARCHAR2(6),
    newCarVIN                VARCHAR2(17),
    usedCarVIN               VARCHAR2(17),
    InsPolicyNo              VARCHAR2(20),
    insCoName                VARCHAR2(50),
    finPolNo                 VARCHAR2(20),
    finCoName                VARCHAR2(50),
    tradeInVIN               VARCHAR2(17),
    registrationNo           VARCHAR2(20),
    warType                  VARCHAR2(50),
    CONSTRAINT CarSale_invoiceNo_pk PRIMARY KEY (invoiceNo),
    CONSTRAINT CarSale_custID_fk FOREIGN KEY (custId)
    REFERENCES CarCustomer (custId),
    CONSTRAINT CarSale_empID_fk FOREIGN KEY (empId)
    REFERENCES CarSalesperson (empId),
    CONSTRAINT CarSale_newCarVIN_fk FOREIGN KEY (newCarVIN)
    REFERENCES CarNewCar (VIN),
    CONSTRAINT CarSale_usedCarVIN_fk FOREIGN KEY (usedCarVIN)
    REFERENCES CarUsedCar (VIN),
    CONSTRAINT CarSale_insurance_fk FOREIGN KEY (InsPolicyNo,      
    insCoName)
    REFERENCES CarInsurance (InsPolicyNo, companyName),
    CONSTRAINT CarSale_financing_fk FOREIGN KEY (finPolNo, finCoName)
    REFERENCES CarFinancing (FinPolicyNo, companyName),
    CONSTRAINT CarSale_registrationNo_fk FOREIGN KEY (registrationNo)
    REFERENCES CarRegistration (registrationNo),
    CONSTRAINT CarSale_warType_fk FOREIGN KEY (warType)
    REFERENCES CarWarrantee (warType)
);
 

CREATE TABLE CarSale_CustomItem(
invoiceNo                VARCHAR2(10),
customItem               VARCHAR2(50),
CONSTRAINT CarSale_CustomItem_invoiceNo_customItem_pk
PRIMARY KEY (invoiceNo, customItem),
CONSTRAINT CarSale_CustomItem_invoiceNo_fk FOREIGN KEY (invoiceNo)
REFERENCES CarSale (invoiceNo),
CONSTRAINT CarSale_CustomItem_customItem_fk FOREIGN KEY (customItem)
REFERENCES CarCustomizationMenu (customItem));


CREATE TABLE CarSurvey(
surveyNumber             VARCHAR2(10),
invoiceNo                VARCHAR2(10),
dealershipRating         NUMBER(1),
carRating                NUMBER(1),
salespersonRating        NUMBER(1),
CONSTRAINT CarSurvey_surveyNumber_pk PRIMARY KEY (surveyNumber),
CONSTRAINT CarSurvey_invoiceNo_fk FOREIGN KEY (invoiceNo)
REFERENCES CarSale (invoiceNo));