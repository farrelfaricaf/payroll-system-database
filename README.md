# payroll-system-database
A university database project (UTS) for a payroll system, focusing on normalization, 15 nested queries, and query performance testing against large dummy datasets (10, 100, 1k, 10k rows) using PostgreSQL.

## 🚀 Project Objectives

The main goal of this project is to fulfill the midterm assignment requirements, which include:
1.  **Database Normalization**: Analyzing and documenting the normalization process applied to the database schema.
2.  **Dummy Data Generation**: Creating four distinct dummy datasets with different scales (10, 100, 1,000, and 10,000 rows) to simulate a realistic database environment.
3.  **15 Nested Queries**: Writing 15 relevant nested queries (subqueries) to address the business requirements of the payroll system.
4.  **Performance Analysis**: Measuring and comparing the `query time` (execution time) for each query against the four different dummy datasets.

## 📊 Database Schema

The database design (PDM) includes several relational tables to manage employee data, job positions, attendance, overtime, and salary history.

The main tables include:
* `Karyawan`
* `Jabatan`
* `Tunjangan`
* `Ref_PTKP`
* `Absensi`
* `Lembur`
* `Riwayat_Gaji`


![Diagram PDM Sistem Gaji](PDM_Payroll.jpg)

## 💻 Tech Stack
* **Database:** PostgreSQL
* **Tool:** Navicat
* **Data Dummy Generator:** Excel, [Data Dummy Maker](https://smalldev.tools/test-data-generator-online)

## 📂 Repository Contents
* **/Nested Query**: Contains SQL scripts for the 15 nested queries.
* **/report**: Contains the final project report, including the normalization analysis and the query time comparison tables.
* **/10 Data**, **/100 Data**, **/1000 Data**, **/10000 Data**: Each folder contains the `.sql` files with dummy data for the transactional tables (`Karyawan`, `Absensi`, etc.) corresponding to that specific test scale.

## 🧪 How to Run the Tests

To replicate the performance analysis, follow these steps in order:

1.  Load the `Schema.sql` file to create all table structures.
2.  Load the master data by running `jabatan.sql`, `ref_ptkp.sql`, and `tunjangan.sql`.
3.  Load the data folders sequentially (starting with the `10` data folder, then `100`, `1000`, and `10000`).
4.  After loading one data set (e.g., all files in the "10" folder), run/import all the query files to test them.
5.  The purpose of loading one folder at a time is to observe the query execution time needed for each query against each specific data volume.
6.  After finishing the test on one folder, **truncate** the `absensi`, `riwayat_gaji`, and `lembur` tables.
7.  After truncating, import the files from the next folder (e.g., "100") and continue the test on the different data volumes.

**Note:** The `Karyawan` table cannot be cleared using `TRUNCATE` (due to foreign key constraints). You must clear it manually by selecting all records and deleting them.

Thank You
