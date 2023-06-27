ARG BASE_IMG_NAME
FROM ${BASE_IMG_NAME}
LABEL maintainer="Edgar Y. Walker <eywalker@uw.edu>, Daniel Sitonic <sitonic@uw.edu>"
RUN apt-get update && \
    apt-get install nodejs -y &&\
    apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip3 install jupyterlab
# Add Jupyter Notebook config
COPY ./jupyter_server_config.py /root/.jupyter/
CMD ["jupyter", "lab", "--allow-root"]