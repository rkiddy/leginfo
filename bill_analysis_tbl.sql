LOAD DATA LOCAL
  INFILE "BILL_ANALYSIS_TBL.dat"
  REPLACE
  INTO TABLE bill_analysis_tbl
  FIELDS TERMINATED BY '\t'
  OPTIONALLY ENCLOSED BY '`'
  LINES TERMINATED BY '\n'
(
   ANALYSIS_ID
  ,BILL_ID
  ,HOUSE
  ,ANALYSIS_TYPE
  ,COMMITTEE_CODE
  ,COMMITTEE_NAME
  ,AMENDMENT_AUTHOR
  ,ANALYSIS_DATE
  ,AMENDMENT_DATE
  ,PAGE_NUM
  ,@var1
  ,RELEASED_FLOOR
  ,ACTIVE_FLG
  ,TRANS_UID
  ,TRANS_UPDATE
)
SET SOURCE_DOC=LOAD_FILE(concat('/var/lib/mysql-files/',@var1))
