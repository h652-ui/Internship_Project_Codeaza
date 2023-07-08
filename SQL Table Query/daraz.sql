CREATE TABLE Laptops (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(400),
    price DECIMAL(10, 2),
    rating DECIMAL(3, 1)
);

CREATE TABLE LaptopDetails (
    id INT AUTO_INCREMENT PRIMARY KEY,
    laptop_id INT,
    detail TEXT,
    FOREIGN KEY (laptop_id) REFERENCES Laptops(id)
);

CREATE TABLE LaptopReviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    laptop_id INT,
    comment TEXT,
    reply TEXT,
    FOREIGN KEY (laptop_id) REFERENCES Laptops(id)
);
