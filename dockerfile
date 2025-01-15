# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app /app/app

# Expose port 5000 and define the command
EXPOSE 5000
CMD ["python", "app/main.py"]
