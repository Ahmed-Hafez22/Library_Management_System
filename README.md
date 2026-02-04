# 📚 Library Management System (PostgreSQL)

## 📌 Project Overview
This project is a **Relational Database System** designed to manage the operations of a library. It handles book inventory, member management, and loan tracking. 

Unlike simple "flat-file" spreadsheets, this database is fully **normalized (3NF)** to prevent data redundancy and ensure data integrity. It solves real-world problems like tracking overdue books and calculating the financial value of the library's inventory by author.

## 🛠️ Tech Stack
* **Database Engine:** PostgreSQL 16
* **Language:** SQL (DDL, DML, DQL)
* **Tools:** VS Code, SQLTools Extension, Git/GitHub
* **Key Concepts:** Normalization, Foreign Keys, Many-to-Many Relationships, Subqueries, JOINs.

## 📂 Database Schema
The system consists of 6 interconnected tables:

1.  **`books`**: The central inventory table (Title, ISBN, Price).
2.  **`authors`**: Stores author names.
3.  **`genre`**: Categorizes books (e.g., Sci-Fi, Classic).
4.  **`customers`**: Tracks library members and their joining dates.
5.  **`loans`**: A transaction table tracking who borrowed what and when (includes Return Date).
6.  **`book_authors`**: A **Junction Table** handling the Many-to-Many relationship between Books and Authors.

## 🚀 How to Run
1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/Ahmed-Hafez22/Library_Management_System.git](https://github.com/Ahmed-Hafez22/Library_Management_System.git)
    ```
2.  **Initialize the Database:**
    Open the `library_schema.sql` file in your SQL editor and run it to build the tables.
3.  **Load Data (ETL):**
    Run `operations.sql` to populate the database with seed data and perform initial data patches.

## 📊 Key Queries & Features

### 1. Analytics: Most Valuable Authors
A complex analytical query that joins 3 tables to calculate the total inventory value for each author.
```sql
SELECT 
    a.author_name, 
    SUM(b.price) as total_value
FROM authors a
JOIN book_authors ba ON a.author_id = ba.author_id
JOIN books b ON ba.book_id = b.book_id
GROUP BY a.author_name
ORDER BY total_value DESC;
