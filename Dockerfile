FROM openjdk
EXPOSE 8080
WORKDIR /app
COPY . /app
RUN javac HelloWorld.java
CMD ["java","HelloWorld"]
