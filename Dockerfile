FROM Python:3.13.7-slim

COPY ./requirements.txt /webapp/requirements.txt

WORKDIR /webapp

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT [ "uvicorn" ]

CMD ["--host","0.0.0.0","main:app"]
