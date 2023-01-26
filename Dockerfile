FROM mcr.microsoft.com/appsvc/staticappsclient:stable
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y python2 python3 g++ make python3-pip build-essential
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]