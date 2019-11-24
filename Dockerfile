FROM python:3.8

RUN apt-get -y update && apt-get -y install git bluez bluez-hcidump && mkdir -p /var/log/efergygw

RUN  git clone https://github.com/hulttis/efergygw.git /app/efergygw
WORKDIR /app/efergygw
ADD . .

RUN pip install --no-cache-dir -r requirements.txt

#RUN cat efergygw.json

CMD ["python", "./efergygw.py"]
