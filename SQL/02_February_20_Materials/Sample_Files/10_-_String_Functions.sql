CREATE TABLE cmarra.US_states(
	[stateCode] NVARCHAR(2),
	[stateName] NVARCHAR(128)
)
GO

INSERT INTO cmarra.US_states values ('AL', 'Alabama'),
('AK', 'Alaska'),
('AL', 'Alabama'),
('AZ', 'Arizona'),
('AR', 'Arkansas'),
('CA', 'California'),
('CO', 'Colorado'),
('CT', 'Connecticut'),
('DE', 'Delaware'),
('DC', 'District of Columbia'),
('FL', 'Florida'),
('GA', 'Georgia'),
('HI', 'Hawaii'),
('ID', 'Idaho'),
('IL', 'Illinois'),
('IN', 'Indiana'),
('IA', 'Iowa'),
('KS', 'Kansas'),
('KY', 'Kentucky'),
('LA', 'Louisiana'),
('ME', 'Maine'),
('MD', 'Maryland'),
('MA', 'Massachusetts'),
('MI', 'Michigan'),
('MN', 'Minnesota'),
('MS', 'Mississippi'),
('MO', 'Missouri'),
('MT', 'Montana'),
('NE', 'Nebraska'),
('NV', 'Nevada'),
('NH', 'New Hampshire'),
('NJ', 'New Jersey'),
('NM', 'New Mexico'),
('NY', 'New York'),
('NC', 'North Carolina'),
('ND', 'North Dakota'),
('OH', 'Ohio'),
('OK', 'Oklahoma'),
('OR', 'Oregon'),
('PA', 'Pennsylvania'),
('PR', 'Puerto Rico'),
('RI', 'Rhode Island'),
('SC', 'South Carolina'),
('SD', 'South Dakota'),
('TN', 'Tennessee'),
('TX', 'Texas'),
('UT', 'Utah'),
('VT', 'Vermont'),
('VA', 'Virginia'),
('WA', 'Washington'),
('WV', 'West Virginia'),
('WI', 'Wisconsin'),
('WY', 'Wyoming')
GO

-- 1. CHAR INDEX
SELECT
	*
FROM
	cmarra.US_states
WHERE
	CHARINDEX(' ',stateName) > 0
GO

-- 2. CONCAT
SELECT
	stateCode,
	CONCAT(StateName, ' has the name New in it') as Column_output
FROM
	cmarra.US_states
WHERE
	stateName LIKE 'New%'

-- 3. LEFT
SELECT
	*
FROM
	cmarra.US_states
WHERE
	LEFT(StateName,3) = 'New'

-- 4. LEN
SELECT
	*
FROM
	cmarra.US_states
WHERE
	LEN(stateName) > 10

-- 5. LOWER / UPPER
SELECT
	stateCode,
	LOWER(stateName) as To_Lower,
	UPPER(stateName) as To_Upper
FROM
	cmarra.US_states

-- 6. REPLACE
SELECT
	stateCode,
	REPLACE(stateName, 'New', 'Old') as stateName
FROM
	cmarra.US_states
WHERE
	LEFT(StateName,3) = 'New'

-- 7. REVERSE
SELECT
	stateCode,
	REVERSE(stateName) as stateName
FROM
	cmarra.US_states

-- 7. RIGHT
SELECT
	*
FROM
	cmarra.US_states
WHERE
	RIGHT(stateName,6) = 'Dakota'

-- 8. STRING_SPLIT
SELECT
	*
FROM
	STRING_SPLIT('1,2,3,4,5',',')
GO

-- 9. SUBSTRING
SELECT
	stateCode,
	SUBSTRING(stateCode,2,1) as second_character
FROM
	cmarra.US_states
GO

-- 10. TRIM
SELECT LTRIM(RTRIM('          sdfsd             ')) as Trimmed
GO

-- select * from cmarra.US_states
