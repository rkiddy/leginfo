LOAD DATA LOCAL
  INFILE "VETO_MESSAGE_TBL.dat"
  REPLACE
  INTO TABLE veto_message_tbl
  FIELDS TERMINATED BY '\t'
  OPTIONALLY ENCLOSED BY '`'
  LINES TERMINATED BY '\n'
(
   BILL_ID
  ,VETO_DATE
  ,@var1
  ,TRANS_UID
  ,TRANS_UPDATE
)
SET MESSAGE=LOAD_FILE(concat('/var/lib/mysql-files/',@var1))
