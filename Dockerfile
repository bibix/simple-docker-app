FROM debian
MAINTAINER Gaël Lambert <gael.lambert@readme.fr>

RUN apt-get update && apt-get install -y vim ca-certificates python-setuptools && easy_install pip && pip install flask && apt-get clean
COPY ./simple_app.py /opt/simple_app.py

EXPOSE 5000

#ENTRYPOINT ["/usr/bin/python"]
#CMD ["/opt/simple_app.py"]

# For debug
ENTRYPOINT ["/bin/bash"]
CMD ["-c", "/bin/sleep 3600"]
