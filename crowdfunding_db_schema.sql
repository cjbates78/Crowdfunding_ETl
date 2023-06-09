CREATE TABLE contacts(
	contact_id integer PRIMARY key,
	first_name text,
	last_name text,
	email text
);

CREATE TABLE category(
	category_id text PRIMARY key,
	category text
);

CREATE TABLE subcategory(
	subcategory_id text PRIMARY key,
	subcategory text
);

CREATE TABLE campaign(
	cf_id integer PRIMARY key,
	contact_id integer,
	company_name text,
	description text,
	goal float,
	pledged float,
	outcome text,
	backers_count float,
	country text,
	currency text,
	launch_date date,
	end_date date,
	category_id text,
	subcategory_id text,
	CONSTRAINT fk_contact FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(category_id),
	CONSTRAINT fk_subcategory FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);