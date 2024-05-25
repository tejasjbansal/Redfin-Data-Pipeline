# Redfin-Data-Pipeline

## Project Overview

This project involves building a complete data engineering pipeline on AWS Cloud. We will be extracting data from the Redfin data source, transforming it using Python, and loading it into a Snowflake database. Finally, we will visualize the data using Power BI. The entire process will be automated using an orchestration tool on an Amazon EC2 instance.

## Project Architecture

![Redfin Analyticspython ETL pipeline](https://github.com/tejasjbansal/Redfin-Data-Pipeline/assets/56173595/c1463653-4bef-473b-9f64-b4fcb94d1323)


## Project Requirements

- **AWS Account**
  - Amazon S3
  - Amazon EC2
- **Snowflake Account**
  - Snowpipe for data ingestion
- **Power BI**
  - For data visualization
- **Python**
  - For data transformation
- **Redfin Data Source**
  - Source of raw data

## Project Workflow

1. **Data Extraction**
   - Extract data from the Redfin data source.
   - Load the raw data into an Amazon S3 bucket.

2. **Data Transformation**
   - Use Python to transform the extracted data.
   - Save the transformed data back to an Amazon S3 bucket.

3. **Data Loading**
   - The transformed data in the S3 bucket triggers Snowpipe.
   - Snowpipe loads the data into the Snowflake database.

4. **Data Visualization**
   - Connect Power BI to the Snowflake database.
   - Create interactive dashboards for data visualization.

5. **Automation**
   - Use an orchestration tool installed on an Amazon EC2 instance to automate the entire process.

## Detailed Steps

### 1. Data Extraction

- **Create an Amazon S3 bucket:**
  - Log in to your AWS account.
  - Navigate to the S3 service and create a new bucket.

- **Extract data from Redfin:**
  - Use Python or any suitable tool to fetch data from Redfin.
  - Store the raw data in the created S3 bucket.

### 2. Data Transformation

- **Set up your Python environment:**
  - Install necessary libraries (e.g., `pandas`, `boto3`).

- **Transform the data:**
  - Write a Python script to clean and transform the raw data.
  - Save the transformed data back to the S3 bucket.

### 3. Data Loading

- **Configure Snowpipe in Snowflake:**
  - Create a Snowflake table to store the transformed data.
  - Set up a Snowpipe to automatically ingest data from the S3 bucket.

### 4. Data Visualization

- **Connect Power BI to Snowflake:**
  - Use the Snowflake connector in Power BI.
  - Create visualizations and dashboards based on the data.

### 5. Automation

- **Set up an Amazon EC2 instance:**
  - Launch an EC2 instance on AWS.
  - Install and configure the orchestration tool (e.g., Apache Airflow).

- **Automate the workflow:**
  - Create a DAG (Directed Acyclic Graph) in the orchestration tool to automate the data extraction, transformation, and loading processes.

## Getting Started

### Prerequisites

- AWS Account with S3 and EC2 services enabled
- Snowflake Account
- Power BI Desktop installed
- Python installed on your local machine

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com//tejasjbansal/Redfin-Data-Pipeline.git
   ```
2. **Install Python dependencies:**
   ```sh
   pip install -r requirements.txt
   ```

### Running the Project

1. **Data Extraction and Transformation:**
   - Run the Python scripts to extract and transform data.
   ```sh
   python extract_data.py
   python transform_data.py
   ```

2. **Upload transformed data to S3:**
   - Ensure the transformed data is uploaded to the designated S3 bucket.

3. **Snowpipe and Data Loading:**
   - Verify that Snowpipe has ingested the data into Snowflake.

4. **Data Visualization:**
   - Open Power BI and connect to the Snowflake database.
   - Build and publish your dashboards.

### Automation

- **Set up the orchestration tool on EC2:**
  - Follow the instructions in the repository to configure the orchestration tool.
  - Schedule the DAG to run the workflow automatically.

## Contributing

We welcome contributions to improve this project. Please fork the repository and submit pull requests for review.

## License

This project is licensed under the MIT License.
