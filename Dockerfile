
FROM python:3.8-slim-buster

WORKDIR /test-flask-dorker

COPY cw_praca_z_kodem_requirements.txt cw_praca_z_kodem_requirements.txt

RUN pip install -r cw_praca_z_kodem_requirements.txt

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0