FROM python:3-alpine

# Create app directory
WORKDIR /opt/demo/

#RUN pip3 install --trusted-host pypi.org --trusted-host files.pythonhosted.org Flask

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY /app .

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]