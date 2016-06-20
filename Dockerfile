FROM busybox:latest
RUN mkdir /x && echo "hey" > /x/a
RUN rm -rf /x && mkdir /x && echo "hey2" > /x/a
RUN rm -rf /x && mkdir /x
CMD ["cat", "/x/a"]
