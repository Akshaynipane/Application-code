# Use the official Python image as a base
FROM python:3.12-slim-buster

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 5000 (Flask default)
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
