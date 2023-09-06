FROM --platform=linux/amd64 i686/ubuntu

RUN apt-get update
RUN apt-get install -y \
  flex \
  bison \
  build-essential \
  csh \
  default-jdk \
  libxaw7-dev \
  nano \
  wget 

RUN mkdir /usr/class

WORKDIR /usr/class

RUN useradd -ms /bin/bash student

RUN wget -cO - https://courses.edx.org/asset-v1:StanfordOnline+SOE.YCSCS1+1T2020+type@asset+block@student-dist.tar.gz > student-dist.tar.gz

RUN tar -xzf student-dist.tar.gz

RUN rm student-dist.tar.gz

RUN chown student /usr/class

COPY ./nanox /usr/class/bin/nanox

RUN chown student /usr/class/bin/nanox

RUN chmod +x /usr/class/bin/nanox

USER student
WORKDIR /home/student

RUN ln -s /usr/class /home/student/cool

ENV PATH="$PATH:/usr/class/bin"


CMD /bin/bash
