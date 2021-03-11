FROM python:3.6.9
MAINTAINER poliyakpavlo@gmail.com
RUN mkdir /opt/app
WORKDIR /opt/app
COPY req.txt /opt/app
COPY sql_orm.py /opt/app
COPY https://raw.githubusercontent.com/pyanush/devops_crash/pavlo_polyak_25021982/lesson8/. /opt/app
#COPY https://raw.githubusercontent.com/pyanush/devops_crash/pavlo_polyak_25021982/lesson8/logfile.log /opt/app
RUN pip install -r req.txt
#RUN pip install pandas sqlalchemy openpyxl
CMD ["pwd"]
VOLUME /opt/app
ENTRYPOINT ["python", "sql_orm.py", "logfile.log"]
CMD ["python", "sql_core.py", "logfile.log"]
EXPOSE 5050
#sudo docker run -itd --rm -p 5050:5050 -v $(pwd):/opt/app sql


#FROM ubuntu
#MAINTAINER Luke Crooks "pavlo@polyak.org"

#RUN apt-get update
#RUN apt-get install -y git
#RUN mkdir /root/.ssh/

# Copy over private key, and set permissions
# Warning! Anyone who gets their hands on this image will be able
# to retrieve this private key file from the corresponding image layer

#ADD id_rsa /root/.ssh/id_rsa

# Create known_hosts
#RUN touch /root/.ssh/known_hosts

# Add bitbuckets key
#RUN ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts

# Clone the conf files into the docker container
#RUN git clone https://github.com/PolyakPavlo/MERN.git
#RUN cd MERN/