CREATE TABLE loyalty_program (
    cust_id INT,
    fname STRING,
    lname STRING,
    email STRING,
    loyalty_level STRING,
    phone_numbers MAP<STRING, STRING>,
    order_ids ARRAY<INT>,
    order_summary STRUCT<min:INT, max:INT, avg:FLOAT, total:INT>
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t';