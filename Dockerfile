FROM golang:1.10.8
RUN mkdir -p /root/go/src/github.com/projectcalico/libcalico-go
ADD . /root/go/src/github.com/projectcalico/libcalico-go
RUN cd /root/go/src \
    && go get -v github.com/Masterminds/glide \
    && go install github.com/Masterminds/glide \
    && cd /root/go/src/github.com/projectcalico/libcalico-go \
    && glide install
