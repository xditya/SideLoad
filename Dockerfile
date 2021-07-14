FROM programmingerror/ultroid:b0.1

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . .
RUN sh run.sh
RUN ls
COPY ./Ultroid .
RUN cd Ultroid

CMD ["bash", "resources/startup/startup.sh"]