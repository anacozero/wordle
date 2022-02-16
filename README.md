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
	--env METAOG_URL="https://wordle.replaceme.com/" \
	ghcr.io/anacozero/wordle
```

## Auto configuration via environment variables

This image supports customization via environment variables.

### METAOG_URL

The full custom url of hosted site. e.g `https://wordle.customsite.com/`
*This replaces the html metadata information of the original site rip: `https://www.powerlanguage.co.uk/wordle/`*