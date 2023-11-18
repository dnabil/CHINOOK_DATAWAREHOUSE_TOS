CREATE OR REPLACE FUNCTION customer_before_update_function() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $$
BEGIN
    IF NEW.updated_at IS NULL OR NEW.updated_at = OLD.updated_at THEN
        NEW.updated_at := NOW();
    END IF;
    RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER customer_before_update_trigger BEFORE UPDATE ON "Customer"
FOR EACH ROW EXECUTE PROCEDURE customer_before_update_function();