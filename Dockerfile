# syntax=docker/dockerfile:1.3-labs
FROM nginx:mainline-alpine

COPY src/ /usr/share/nginx/html/

COPY <<EOF /docker-entrypoint.d/40-html-ogurl-replace.sh
    #!/bin/sh
    if [ \$METAOG_URL ]; then
    sed -i "s&https://www.powerlanguage.co.uk/wordle/&\$METAOG_URL&g" /usr/share/nginx/html/index.html
    METAOG_IMAGE=$(echo "$METAOG_URL/images/wordle_og_1200x630.png" | sed -e 's&//images&/images&g')
    sed -i "s&https://www.dailywordle.com/images/wordle_og_1200x630.png&\$METAOG_IMAGE&g" /usr/share/nginx/html/index.html
    fi
EOF

RUN chmod +x /docker-entrypoint.d/40-html-ogurl-replace.sh

HEALTHCHECK  --start-period=15s --interval=1m --timeout=3s --retries=3\
  CMD wget -nv -t1 --spider http://localhost/ || exit 1

EXPOSE 80

