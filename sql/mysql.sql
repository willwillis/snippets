-- get monthly breakdown of table data
-- for a table whose date is stored in epoch time
-- http://stackoverflow.com/questions/1554025/monthly-breakdown-of-table-data-date-stored-as-epoch-time

SELECT  YEAR(FROM_UNIXTIME(app_date)) AS yr,
        MONTH(FROM_UNIXTIME(app_date)) AS mon,
        COUNT(*)
FROM    ol_applications
GROUP BY
        yr, mon

--
--