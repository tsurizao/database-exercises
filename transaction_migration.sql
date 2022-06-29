USE database_exercises;

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions(
    amount DECIMAL(10, 2),
    created_at DATETIME,
    memo VARCHAR(200),
    account_id INT,
    is_fraudulent BOOLEAN
);