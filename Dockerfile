#My image inherites from "python" image
FROM python:3.10.2-bullseye
WORKDIR /app
COPY . /app
#host: your PC, laptop, cloud server,...
#Copy from "host" to "container"
COPY requirements.txt requirements.txt
#Run this command in the container
RUN pip3 install -r requirements.txt
#Run command in container
EXPOSE 5000
CMD python main.py