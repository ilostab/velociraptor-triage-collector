FROM golang:alpine

RUN apk add --no-cache make git zip

WORKDIR /app

COPY . .

RUN mkdir -p /results

CMD ["sh", "-c", "make compile && cp output/*.yaml output/*.zip /results/ && echo 'Files successfully copied to /results'"]

# docker build -t . velocirpator-triage-collector
# docker run --rm -v "$(pdw)/../release/:/results/" velociraptor-triage-collector
