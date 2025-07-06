SELECT strftime('%Y', fecha)
FROM libro;

SELECT *
FROM libro
WHERE strftime('%Y', fecha) = '2023'  OR titulo = 'El sol radiante'