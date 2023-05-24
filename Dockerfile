FROM python:3.10.6

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the project files to the container
COPY main.py main.py 

COPY people.json people.json

# Expose the port that the application will be running on
EXPOSE 8000

# Run the application
CMD ["uvicorn", "main:app"]