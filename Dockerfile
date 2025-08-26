FROM alpine:latest

ARG MY_BUILD_ARG

RUN echo -e "#!/bin/sh\n\necho \"The value of MY_BUILD_ARG is: ${MY_BUILD_ARG}\"" > /usr/local/bin/main.sh
RUN chmod +x /usr/local/bin/main.sh

CMD ["/usr/local/bin/main.sh"]
