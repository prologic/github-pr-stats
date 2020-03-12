FROM python:2 AS build

WORKDIR /src
COPY . .

RUN pip install -r requirements.txt
RUN pip install -e .

ENTRYPOINT ["./bin/github-pr-stats"]
CMD ["--help"]
