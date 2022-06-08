FROM alpine:3.13

# hadolint ignore=SC2016,DL3018,DL4006
RUN apk update && \
	apk add --no-cache \
		ca-certificates=20211220-r0 \
		bash=5.1.16-r0 \
		curl=7.79.1-r1 \
		git=2.30.3-r0 \
		unzip=6.0-r9 \
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

