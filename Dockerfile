
# syntax=docker/dockerfile:1

# base image
FROM python:3.10

# create working directory
WORKDIR /app

# copy the requirements into the image
COPY requirements.txt requirements.txt

# install the requirements
RUN pip3 install -r requirements.txt

# copy source code into the image
COPY . .

# run the application
CMD [ "python3", "-m" , "sanitize_csv"]
