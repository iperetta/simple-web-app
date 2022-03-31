# start by pulling the python image
FROM python:3.8

# copy the requirements file into the image
COPY . ./

RUN pip install -r dependencies/requirements.txt

# switch working directory
WORKDIR /app

# configure the container to run in an executed manner
ENTRYPOINT [ "python", "view.py"]