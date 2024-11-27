# Base Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application code
COPY main.py /app/

# Install dependencies (if any)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8080

# Start the application
CMD ["python", "main.py"]
