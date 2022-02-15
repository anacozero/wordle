Wordle Docker
=============
[![Docker Build](https://github.com/anacozero/wordle/actions/workflows/buildrelease.yml/badge.svg?branch=master)](https://github.com/anacozero/wordle/actions/workflows/buildrelease.yml)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/anacozero/wordle?label=Release&style=plastic)

Docker image for Webserver that hosts the original Wordle Site Rip (Pre NYTIMES!)

Usage
-----

Start the container:

```console
# docker run \
	--name wordle \
	--detach \
	--publish 80:80 \
	ghcr.io/anacozero/wordle
```
