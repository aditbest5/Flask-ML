#My image inherites from "python" image
FROM python:3.10.2-bullseye
WORKDIR /app
COPY . /app
#host: your PC, laptop, cloud server,...
#Copy from "host" to "container"
COPY requirements.txt requirements.txt
#Run this command in the container
RUN pip3 install -r requirements.txt
#RUN apt-get update
#Run command in container
EXPOSE 3000
CMD ["gunicorn", "--bind", "0.0.0.0:3000", "main:app"]