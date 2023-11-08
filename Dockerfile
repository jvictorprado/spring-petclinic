FROM anapsix/alpine-java 
LABEL maintainer="victorpradoestudo@gmail.com"
COPY /target/*.jar /home/*.jar 
CMD ["java","-jar","/home/*.jar"]
