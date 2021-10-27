FROM python
WORKDIR /app/workdir
COPY . /app.py /app/workdir/
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install requests

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

