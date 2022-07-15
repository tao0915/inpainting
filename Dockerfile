FROM hyeonwoong/generative-inpainting-model

RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev libgl1-mesa-dev

RUN pip install --upgrade pip

WORKDIR /app
COPY requirements.txt /app

RUN pip install -r /app/requirements.txt

COPY . /app

CMD ["python", "server.py"]