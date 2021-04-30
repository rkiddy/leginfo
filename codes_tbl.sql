Truncate Table codes_tbl;
LOAD DATA LOCAL
  INFILE "CODES_TBL.dat"
  REPLACE
  INTO TABLE codes_tbl
  FIELDS TERMINATED BY '\t'
  OPTIONALLY ENCLOSED BY '`'
  LINES TERMINATED BY '\n'
(
   CODE
  ,TITLE
)
