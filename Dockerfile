FROM alpine:latest AS builder

WORKDIR /web

COPY . /web/

# Install Git and Hugo
RUN apk update && apk add \
	--no-cache hugo git

# Build site
RUN git submodule update --init \
	&& hugo

FROM nginx:mainline-alpine

WORKDIR /usr/share/nginx/html

RUN rm -fr *

COPY nginx.conf /etc/nginx

COPY --from=builder /web/public .
