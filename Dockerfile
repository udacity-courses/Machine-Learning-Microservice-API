FROM python:3.7.10-stretch
LABEL description="This file creates a web application"
## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY app.py requirements.txt /app/
COPY model_data/ /app/model_data

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container
CMD ["python", "app.py"]