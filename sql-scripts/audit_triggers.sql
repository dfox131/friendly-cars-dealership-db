/* Friendly Cars Dealership Audit Triggers */

-- 1st Audit Trigger

CREATE OR REPLACE TRIGGER after_insert_car_customer
AFTER INSERT ON CarCustomer
FOR EACH ROW
BEGIN
    count
    UPDATE CarAd
    SET frequency = frequency + 1 
    WHERE placedIn = :NEW.adSeen;
END;
/


-- 2nd Audit Trigger

CREATE OR REPLACE TRIGGER UpdateCarWeightOnOptionAdd
AFTER INSERT ON CarNewCarOptions
FOR EACH ROW
BEGIN
    IF :NEW.carOption = 'Air Suspension' THEN
        UPDATE CarNewCar
        SET weight = weight + 100 
        WHERE VIN = :NEW.VIN;
    END IF;
END;
/


-- 3rd Trigger

CREATE OR REPLACE TRIGGER CarCustomer_Audit_Trigger
AFTER UPDATE OF phoneNumber ON CarCustomer
FOR EACH ROW
DECLARE
    v_user VARCHAR2(50);
BEGIN
SELECT USER INTO v_user FROM dual;    
    IF :OLD.phoneNumber != :NEW.phoneNumber THEN
        INSERT INTO CarCustomer_Audit (custId, field_updated, old_value, new_value, updated_by)
        VALUES (:OLD.custId, 'phoneNumber', :OLD.phoneNumber, :NEW.phoneNumber, v_user);
    END IF;
END;
/