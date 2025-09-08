SELECT * FROM e_banking.account;

desc account;

select acct_number,acct_balance,cust_id from account where cust_id > 35 order by acct_balance desc;

select count(acct_type) as total from account where cust_id > 35;


-- Total number of accounts 
select acct_type, Count(*) as total_acct from account GROUP BY acct_type;

-- Total account numbers associated with the accoutn type.
select acct_type, group_concat(acct_number) as account_number from account  GROUP BY acct_type;

-- Total account balance associated with the accoutn type.
select acct_type, group_concat(acct_balance) as account_balance from account  GROUP BY acct_type;

-- show average and max balance of the account types .
select acct_type, AVG(acct_balance) as Average_Balance from account GROUP BY acct_type;







