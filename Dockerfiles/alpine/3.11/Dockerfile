FROM alpine:3.11

# hadolint ignore=SC2016,DL3018,DL4006
RUN apk update && \
	apk add --no-cache \
		ca-certificates=20191127-r2 \
		bash=5.0.11-r1 \
		git=2.24.4-r0 \
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

