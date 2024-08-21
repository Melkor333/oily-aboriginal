FROM debian

RUN apt update && apt install -y build-essential wget
RUN wget https://www.oilshell.org/download/oils-for-unix-0.22.0.tar.gz && tar xvf oils-for-unix-0.22.0.tar.gz
RUN cd oils-for-unix* \
&& ./configure \
&& _build/oils.sh \
&& ./install
