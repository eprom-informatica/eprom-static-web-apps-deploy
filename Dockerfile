FROM mcr.microsoft.com/appsvc/staticappsclient:stable
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install --no-install-recommends python2 -y
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]