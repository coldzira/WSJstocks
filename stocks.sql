DROP DATABASE IF EXISTS stocks;

CREATE DATABASE stocks;

USE stocks;

CREATE TABLE stockinfo(
    exchange VARCHAR(10),
    symbol VARCHAR(10),
    company VARCHAR(50),
    volume DECIMAL(32,0),
    price DECIMAL(6, 2),
    difference DECIMAL(6, 2),
    
    PRIMARY KEY (symbol)
);