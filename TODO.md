# Disclaimer
All projects that start with `dev`
are under active development.

This project is in development meaning
it does not produce expected results.

# Problem
Can't find executable.

# Error
Dockerfile:5
--------------------
   4 |     
   5 | >>> RUN apt-get update && \
   6 | >>>     apt-get install -y git cmake make g++ python2.7 llvm-dev zlib1g-dev libreadline-dev && \
   7 | >>>     mkdir -p /opt && \
   8 | >>>     cd /opt && \
   9 | >>>     git clone https://github.com/morganstanley/hobbes && \
  10 | >>>     cd hobbes && \
  11 | >>>     cmake . && \
  12 | >>>     make && \
  13 | >>>     make install 

# Possible solutions
Bad llvm version.