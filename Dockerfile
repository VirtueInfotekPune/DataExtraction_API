# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies specified in the requirements file
RUN pip install --no-cache-dir -r requirement.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable to specify Flask app
ENV FLASK_APP=app.py

# Run the Flask app on port 8000
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
