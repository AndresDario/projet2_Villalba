CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE users (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(255),
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20),
    image VARCHAR(255),
    CONSTRAINT pk_users PRIMARY KEY(id),
    CONSTRAINT uq_email UNIQUE(email)
) ENGINE=InnoDB;

INSERT INTO users VALUES(NULL, 'Admin', 'Admin', 'admin@admin.com', 'hashed_password', 'admin', NULL);

CREATE TABLE categories (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    CONSTRAINT pk_categories PRIMARY KEY(id)
) ENGINE=InnoDB;

INSERT INTO categories VALUES(NULL, 'Maine Coon');
INSERT INTO categories VALUES(NULL, 'Persa');
INSERT INTO categories VALUES(NULL, 'Siames');
INSERT INTO categories VALUES(NULL, 'Sphynx');

CREATE TABLE products (
    id INT AUTO_INCREMENT NOT NULL,
    category_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price FLOAT(100, 2) NOT NULL,
    stock INT NOT NULL,
    discount VARCHAR(2),
    date DATE NOT NULL,
    image VARCHAR(255),
    CONSTRAINT pk_products PRIMARY KEY(id),
    CONSTRAINT fk_product_category FOREIGN KEY(category_id) REFERENCES categories(id)
) ENGINE=InnoDB;

CREATE TABLE orders (
    id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    province VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    total_price FLOAT(200, 2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    date DATE DEFAULT CURRENT_DATE,
    time TIME DEFAULT CURRENT_TIME,
    CONSTRAINT pk_orders PRIMARY KEY(id),
    CONSTRAINT fk_order_users FOREIGN KEY(user_id) REFERENCES users(id)
) ENGINE=InnoDB;

CREATE TABLE ordersProducts (
    id INT AUTO_INCREMENT NOT NULL,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    unities INT NOT NULL,
    CONSTRAINT pk_ordersProducts PRIMARY KEY(id),
    CONSTRAINT fk_order FOREIGN KEY(order_id) REFERENCES orders(id),
    CONSTRAINT fk_product FOREIGN KEY(product_id) REFERENCES products(id)
) ENGINE=InnoDB;
