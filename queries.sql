-- write your queries here

1). SELECT *
    FROM owners
    LEFT JOIN vehicles
    ON owners.id = vehicles.owner_id;

2). SELECT first_name, last_name, COUNT(*)
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY first_name, last_name
    ORDER BY first_name;

3). SELECT first_name, last_name, CAST(AVG(price) as int), COUNT(*) 
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY first_name, last_name HAVING COUNT(*) > 1 AND CAST(AVG(price) as int) > 10000
    ORDER BY first_name DESC;








