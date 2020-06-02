FROM ppodgorsek/robot-framework:3.4.0

ENV PYMSSQL_BUILD_WITH_BUNDLED_FREETDS=1

ADD requirement.pip .
RUN pip3 install -r requirement.pip