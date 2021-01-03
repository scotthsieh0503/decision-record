FROM python:3.7
LABEL maintainer="scott@one45.com"

ENV PYTHONUNBUFFERED 1
ENV PROJECT_ROOT /app

# APT-GET
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install -y nodejs

# Make Project
RUN mkdir $PROJECT_ROOT
WORKDIR $PROJECT_ROOT
COPY requirements.txt $PROJECT_ROOT/requirements.txt
# Install Dependencies
RUN pip install -r requirements.txt
RUN npm install
COPY . .

# Initalize
ENTRYPOINT ["bash", "docker-entrypoint.sh"]
CMD ./docker-entrypoint.sh