-- Create tables
CREATE TABLE category(
  category_id VARCHAR(50) NOT NULL PRIMARY KEY,
  category VARCHAR(50) NOT NULL	
);

SELECT * FROM category; 

CREATE TABLE subcategory(
  subcategory_id VARCHAR(50) NOT NULL PRIMARY KEY,
  subcategory VARCHAR(50) NOT NULL	
);

SELECT * FROM subcategory; 

-- Delete the table contacts
DROP TABLE contacts;

CREATE TABLE contacts(
  contact_id int NOT NULL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL
);

SELECT * FROM contacts;

-- Delete the table campaign
DROP TABLE campaign;

CREATE TABLE campaign(
  cf_id int NOT NULL PRIMARY KEY,
  contact_id int NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  company_name VARCHAR(50) NOT NULL,
  description VARCHAR(100) NOT NULL,
  goal int NOT NULL,
  pledged int NOT NULL,
  outcome VARCHAR(50) NOT NULL,
  backers_count int NOT NULL,
  country VARCHAR(50) NOT NULL,
  currency VARCHAR(50) NOT NULL,
  launched_date date NOT NULL,
  end_date date NOT NULL,
  category_id VARCHAR(50) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
  subcategory_id VARCHAR(50) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;