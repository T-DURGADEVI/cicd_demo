#Base Image
FROM python:3.8

# Set the working directory 
WORKDIR /app

# copy the requirements file
COPY requirements.txt .

#run to install the requirements
RUN pip install -r requirements.txt

# copy all files
COPY . .

# Expose port to run the flask application
EXPOSE 5000

# run flask application
CMD ["python","app.py"]
