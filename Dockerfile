FROM python:3.11-slim

WORKDIR /app

# Install git (needed for pip install from git repos)
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Copy requirements first for better Docker layer caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY gather_lighter_data.py .

# Create directories for data and logs
RUN mkdir -p lighter_data logs

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "gather_lighter_data.py"]