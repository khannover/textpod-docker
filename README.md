# Textpod-Docker

Read more of Textpod [here](https://github.com/freetonik/textpod)

This is a wrapper of textpod for running in Docker.
It installs monolith and textpod with cargo.
It also installs nginx as a reverse proxy.

## Installation / Update

```
git clone https://github.com/khannover/textpod-docker
docker build -t textpod .
docker run --rm --name textpod -d -v ./notes.md:/app/notes.md -v ./attachments:/app/attachments -p 8080:80 textpod
```

Now you can open your browser on http://localhost:8080
