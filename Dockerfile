FROM alpine:latest AS builder

WORKDIR /web

COPY . /web/

# Install Git and Hugo
RUN apk update && apk add \
	--no-cache hugo git

# Build site
RUN git submodule update --init \
	&& hugo

FROM nginx:stable-alpine

WORKDIR /web
COPY --from=builder /web/public .

COPY nginx.conf /etc/nginx
