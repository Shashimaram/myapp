
FROM --platform=linux/amd64 alpine:latest

# Install system packages
RUN apk update && \
    apk add --no-cache python3 py3-pip

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Create and activate a virtual environment
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Upgrade pip and install Django within the virtual environment
RUN pip install --no-cache-dir --upgrade pip setuptools && \
    pip install --no-cache-dir django

# Expose port
EXPOSE 8000

# Command to run the application using the virtual environmen
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
