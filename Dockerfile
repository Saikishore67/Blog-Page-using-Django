# Use official Python image
FROM python:3.12

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory inside the container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the rest of your project files
COPY . /app/

# Expose the port Django will run on
EXPOSE 8000

# Default command to run Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
