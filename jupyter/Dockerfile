FROM bitnami/jupyter-base-notebook:latest

USER root

RUN apt-get update && apt-get install -y wget 

COPY requirements.txt .

RUN pip install --upgrade pip setuptools wheel && \
    pip install -r requirements.txt

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--notebook-dir=/home/jovyan","--ServerApp.token=''", "--ServerApp.password=''","--NotebookApp.base_url=/jupyter_service/"]
