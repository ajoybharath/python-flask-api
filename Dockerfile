FROM python:3.7.2

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY requirements.txt /usr/src/app/
RUN  pip install --upgrade pip 
RUN pip install  --user -r requirements.txt

# Bundle app source
COPY app.py /usr/src/app

EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
