UPDATE universities 
SET 
    tuition_fee = tuition_fee + 300
WHERE
    id >= 5 AND id <= 12;