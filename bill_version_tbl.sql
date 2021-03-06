LOAD DATA LOCAL
  INFILE "BILL_VERSION_TBL.dat"
  REPLACE
  INTO TABLE bill_version_tbl
  FIELDS TERMINATED BY '\t'
  OPTIONALLY ENCLOSED BY '`'
  LINES TERMINATED BY '\n'
(
   BILL_VERSION_ID
  ,BILL_ID
  ,VERSION_NUM
  ,BILL_VERSION_ACTION_DATE
  ,BILL_VERSION_ACTION
  ,REQUEST_NUM
  ,SUBJECT
  ,VOTE_REQUIRED
  ,APPROPRIATION
  ,FISCAL_COMMITTEE
  ,LOCAL_PROGRAM
  ,SUBSTANTIVE_CHANGES
  ,URGENCY
  ,TAXLEVY
  ,@var1
  ,ACTIVE_FLG
  ,TRANS_UID
  ,TRANS_UPDATE
)
SET BILL_XML=LOAD_FILE(concat('/var/lib/mysql-files/',@var1))
