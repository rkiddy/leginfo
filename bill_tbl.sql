LOAD DATA LOCAL
  INFILE "BILL_TBL.dat"
  REPLACE
  INTO TABLE bill_tbl
  FIELDS TERMINATED BY '\t'
  OPTIONALLY ENCLOSED BY '`'
  LINES TERMINATED BY '\n'
(
   BILL_ID
  ,SESSION_YEAR
  ,SESSION_NUM
  ,MEASURE_TYPE
  ,MEASURE_NUM
  ,MEASURE_STATE
  ,CHAPTER_YEAR
  ,CHAPTER_TYPE
  ,CHAPTER_SESSION_NUM
  ,CHAPTER_NUM
  ,LATEST_BILL_VERSION_ID
  ,ACTIVE_FLG
  ,TRANS_UID
  ,TRANS_UPDATE
  ,CURRENT_LOCATION
  ,CURRENT_SECONDARY_LOC
  ,CURRENT_HOUSE
  ,CURRENT_STATUS
  ,DAYS_31ST_IN_PRINT
)