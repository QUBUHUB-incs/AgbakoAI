# Base image
FROM python:3.10-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc

# Install Python libraries
RUN pip install pandas tensorflow numpy

# Use official Python runtime as a base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Start the application
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
