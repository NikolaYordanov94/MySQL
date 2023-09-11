DELETE u FROM universities AS u 
WHERE
    number_of_staff IS NULL
    OR number_of_staff = 0;