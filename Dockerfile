FROM openjdk:8
RUN mkdir /app
COPY target/universal/isabelle-remix-0.1.0.zip /
RUN unzip /isabelle-remix-0.1.0.zip
RUN ln -s /isabelle-remix-0.1.0/bin/isabelle-remix /bin/isabelle-remix
RUN echo play.http.secret.key=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c50) >> /isabelle-remix-0.1.0/conf/application.conf