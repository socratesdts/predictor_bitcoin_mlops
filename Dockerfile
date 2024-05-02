FROM python:3.11

WORKDIR /code

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ../../../Escritorio/bitcoin_price_prediction_ulead-dev/bitcoin_price_prediction_ulead-dev /code

EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]