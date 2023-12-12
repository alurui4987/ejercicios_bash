FROM ubuntu:jammy
RUN apt update && apt install nano -y
RUN groupadd -g 30025 domain_users
RUN useradd -m -u 30015 -g 30025 alu10684987
USER alu10684987
WORKDIR /home/alu10684987
CMD ["/bin/bash"] 

