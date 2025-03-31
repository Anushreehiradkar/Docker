 # Use Python base image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the application files
COPY app.py app.py

# Expose the application port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]

