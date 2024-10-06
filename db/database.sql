CREATE TABLE users (
    userID SERIAL PRIMARY KEY, 
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    created_when TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE market_data (
    market_data_id SERIAL PRIMARY KEY,
    name_of_asset VARCHAR(100) NOT NULL,
    asset_ticker VARCHAR(255) NOT NULL,
    price_of_asset DECIMAL(10,2) NOT NULL,
    market_cap DECIMAL(20, 2),
    market_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP


);


CREATE TABLE user_preferences (

    preference_id SERIAL PRIMARY KEY.
    user_id INTEGER REFERENCES users(userID) ON DELETE CASCADE, 
    risk_tolerance VARCHAR(50) NOT NULL,
    investment_horizon INTEGER NOT NULL,
    asset_preferences VARCHAR(255),
    create_when TIMESTAMP DEFAULT CURRENT_TIMESTAMP


);

CREATE TABLE portfolio_data (
    allocation_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES user(userID) ON DELETE CASCADE,
    asset_ticker VARCHAR(255) NOT NULL,
    percentage_of_alloc DECIMAL (5,2),
    time_of_optimization TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    user_id INTEGER REFEENCES users(userID) ON DELETE CASCADE,
    transaction_type VARCHAR(10) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    price_at_time DECIMAL(10,2) NOT NULL,
    transaction_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);