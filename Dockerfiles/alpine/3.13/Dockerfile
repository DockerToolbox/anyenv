FROM alpine:3.13

# hadolint ignore=SC2016,DL3018,DL4006
RUN apk update && \
	apk add --no-cache \
		ca-certificates=20191127-r5 \
		bash=5.1.0-r0 \
		git=2.30.2-r0 \
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

