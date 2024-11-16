# Use a base image with a package manager (e.g., Debian/Ubuntu)
FROM python:3.10-slim

# Install required packages including newer SQLite
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    sqlite3 libsqlite3-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set work directory
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application files
COPY . .
EXPOSE 8000
CMD python manage.py runserver
