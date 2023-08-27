# Use an official Python runtime as a parent image
FROM python:3.10.6 


# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Make port 5002 available to the world outside this container
EXPOSE 5002

# Run app.py when the container launches
CMD ["python", "app.py"]


