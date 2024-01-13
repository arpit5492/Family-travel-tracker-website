# Family Travel Tracker Website

## Description
Welcome to the Family Travel Tracker Website! This innovative web application is meticulously crafted to offer a seamless and interactive way to track and record all the countries visited by individuals in their lifetime. The frontend of the website is designed using HTML (EJS) and CSS, providing a user-friendly and aesthetically pleasing interface. The backend functionality is powered by Node.js and Express.js, ensuring a robust and efficient experience. Additionally, PostgreSQL is utilized for data storage, maintaining a reliable and organized database of travel records.

## Database Schema

```
Table users {
  id serial [primary key]
  name varchar(20) unique
  color varchar(20) 
}

Table visited_countries {
  id integer [primary key]
  country_code varchar(3) [not null, unique]
  user_id integer [unique]
}

Table countries {
  id serial [primary key, not null]
  country_code varchar(3)
  country_name varchar(45)
}

Ref: users.id < visited_countries.user_id
```

## Installation Instructions

### Database Setup
- Navigate to the `queries.sql` file in the repository.
- Execute the SQL queries within this file to set up the required tables in your PostgreSQL database.

### Installing Dependencies
- Run the following command to install all the necessary packages:
```
npm install
```

### Running the Server
- Start the server by executing:
```
node index.js
```

- Once the server is running, you can access the website at [http://localhost:4000/](http://localhost:4000/).

## Usage
After setting up the server, you can start tracking countries visited by individuals. The website offers an intuitive interface for adding, viewing, and managing travel records. Enjoy documenting your family's travel adventures and revisiting your favorite destinations through this tracker!

## Contributing
Contributions to enhance the Family Travel Tracker Website are warmly welcomed. Whether it's improving the code, refining the user interface, or suggesting new features, your input is highly valued.

