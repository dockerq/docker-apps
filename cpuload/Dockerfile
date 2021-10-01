FROM python:2.7.18

WORKDIR /cpuload

RUN git clone https://github.com/GaetanoCarlucci/CPULoadGenerator.git . \
    && pip install -r requirements.txt \
    && rm -rf /var/lib/apt/lists/*

CMD ["python", "CPULoadGenerator.py"]