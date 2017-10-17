FROM centos:7
RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install uwsgi uwsgi-plugin-python
RUN mkdir /app
COPY helloworld.py /app
CMD ["uwsgi","--plugins","python","--http-socket",":8000","--wsgi-file","/app/helloworld.py"]
EXPOSE 8000
