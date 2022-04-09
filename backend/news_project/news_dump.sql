CREATE TABLE news (
    news_id serial NOT NULL PRIMARY KEY,
    title character varying(255),
    description_news character varying(10000),
    category_id int,
    FOREIGN KEY (category_id) REFERENCES categories (id),
    country_id int,
    FOREIGN KEY (country_id) REFERENCES countries (id)
);

CREATE TABLE categories (
    id serial NOT NULL PRIMARY KEY,
    title character varying(255),
    description_categoty character varying(10000)
);

CREATE TABLE countries (
    id serial NOT NULL PRIMARY KEY,
    name_country character varying(255),
    description_country character varying(10000)
);

-- insert into categories (title, description_categoty) values ('Business', 'Category about business');