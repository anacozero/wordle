FROM nginx:mainline-alpine

COPY src/ /usr/share/nginx/html/

HEALTHCHECK  --start-period=15s --interval=1m --timeout=3s --retries=3\
  CMD wget -nv -t1 --spider http://localhost/ || exit 1

EXPOSE 80