FROM python:3.6-slim
ARG user
ARG password
ADD requirements.txt /
RUN pip install --upgrade --extra-index-url https://$user:$password@distribution.livetech.site -r /requirements.txt
ADD . /sperimentationGit
ENV PYTHONPATH=$PYTHONPATH:/sperimentationGit
WORKDIR /sperimentationGit/sperimentationGit/services
CMD python services.py
