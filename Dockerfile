# Use an official Python runtime as a parent image
FROM python:3.12.4-slim

# Set environment variables
ENV PYTHONUNBUFFERED 1 \
    PYTHONDONTWRITEBYTECODE 1

# Set the working directory
WORKDIR /usr/src/app

# Copy dependency files
COPY src/requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY src/ ./src

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "src/app.py"]
