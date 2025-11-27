CREATE TABLE SKU (
    sku_id VARCHAR(50) PRIMARY KEY,
    name TEXT,
    category TEXT,
    weight DECIMAL(10,2),
    price DECIMAL(10,2)
);

CREATE TABLE DistributionCenters (
    dc_id INT PRIMARY KEY,
    dc_name TEXT,
    region TEXT
);

CREATE TABLE Calendar (
    date DATE PRIMARY KEY,
    week INT,
    month INT,
    year INT,
    is_holiday BOOLEAN
);

CREATE TABLE Promo (
    promo_id INT PRIMARY KEY,
    sku_id VARCHAR(50),
    date_start DATE,
    date_end DATE,
    promo_type TEXT,
    FOREIGN KEY (sku_id) REFERENCES SKU(sku_id)
);

CREATE TABLE Dataset (
    sales_date DATE,
    sku_id VARCHAR(50),
    dc_id INT,
    sales_count INT,
    weight DECIMAL(10,2),
    promo BOOLEAN,
    FOREIGN KEY (sku_id) REFERENCES SKU(sku_id),
    FOREIGN KEY (dc_id) REFERENCES DistributionCenters(dc_id)
);
