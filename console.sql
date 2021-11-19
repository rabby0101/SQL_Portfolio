SELECT *
FROM "Housing"
--WHERE "PropertyAddress" is null
ORDER BY "ParcelID"

SELECT a."ParcelID"
FROM "Housing" a
JOIN "Housing" b
ON a."ParcelID" = b."ParcelID"
AND a."UniqueID "<>b."UniqueID "
WHERE a."PropertyAddress" is null;

--UPDATE NULL ADDRESSES--
UPDATE "Housing"
SET "PropertyAddress" = COALESCE(a."PropertyAddress",b."PropertyAddress")
FROM "Housing" a
JOIN "Housing" b
    ON a."ParcelID" = b."ParcelID"
    AND a."UniqueID "<>b."UniqueID "
WHERE a."PropertyAddress" is null;


--Breaking out address(Address,City,State)
SELECT
SUBSTR("PropertyAddress",1,CHARI)
FROM "Housing"

