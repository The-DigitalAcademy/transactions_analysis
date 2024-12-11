-- INCOME GROUP CODE TABLE ---

COPY income_group(
   income_group_code,
   income_group_desc
)
FROM '/Users/tshmacm1166/Desktop/sql_sprint/income_group.csv'
DELIMITER ','
CSV HEADER;

-- CUSTIOMER TABLE ---

COPY customers(
   customer_identifier,
   date_last_updated,
   sex_code,
   income_group_code,
   number_of_accounts,
   occupational_status_code,
   age
)
FROM '/Users/tshmacm1166/Desktop/sql_sprint/customer.csv'
DELIMITER ','
CSV HEADER;

-- TRANSACTION TABLE ---
COPY transactions(
   transaction_description,
   customer_identifier,
   record_date,
   account_type_code,
   account_balance,
   amt,
   event_number,
   product_code,
   channel,
   account_number,
   transaction_reference
)
FROM '/Users/tshmacm1166/Desktop/sql_sprint/transactions.csv'
DELIMITER ','
CSV HEADER;

COPY employment_status(
   employee_status_code,
   employee_status_desc
)
FROM '/Users/tshmacm1166/Desktop/sql_sprint/employment_status.csv'
DELIMITER ','
CSV HEADER;