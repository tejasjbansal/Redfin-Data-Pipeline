#!/bin/bash

# Update the package list
sudo apt update

# Install pip for Python 3
sudo apt install -y python3-pip

# Install the Python 3.10 venv module
sudo apt install -y python3.10-venv

# Create a virtual environment
python3 -m venv redfin_venv

# Activate the virtual environment
source redfin_venv/bin/activate

# Install necessary Python packages
pip install pandas boto3 awscli apache-airflow

# Verify Airflow installation
airflow version

# Verify Python installation
python3 --version

# Configure AWS CLI
aws configure

# Start Airflow in standalone mode
airflow standalone
