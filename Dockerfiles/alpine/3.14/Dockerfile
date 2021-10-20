FROM alpine:3.14

# hadolint ignore=SC2016,DL3018,DL4006
RUN apk update && \
	apk add --no-cache \
		ca-certificates=20191127-r5 \
		bash=5.1.4-r0 \
		bzip2=1.0.8-r1 \
		coreutils=8.32-r2 \
		curl=7.79.1-r0 \
		git=2.32.0-r0 \
		libc6-compat=1.2.2-r3 \
		openssl=1.1.1l-r0 \
		openssl-dev=1.1.1l-r0 \
		readline-dev=8.1.0-r0 \
		unzip=6.0-r9 \
		zlib=1.2.11-r3 \
		zlib-dev=1.2.11-r3 \
		&& \
	apk add --no-cache --virtual \
		build-dependencies \
		build-base \
		linux-headers \
		&& \
	git clone https://github.com/anyenv/anyenv ~/.anyenv && \
	echo 'eval "$(anyenv init -)"' >> ~/.bashrc && \
	export PATH="$HOME/.anyenv/bin:$PATH" && \
	echo y | anyenv install --init && \
	sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd && \
	rm -rf /var/cache/apk/*

ENV PATH="/root/.anyenv/bin:$PATH"

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

