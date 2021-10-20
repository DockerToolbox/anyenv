FROM debian:stretch-slim

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20200601~deb9u2 \
		build-essential=12.3 \
		bzip2=1.0.6-8.1 \
		curl=7.52.1-5+deb9u16 \
		git=1:2.11.0-3+deb9u7 \
		libssl-dev=1.1.0l-1~deb9u4 \
		unzip=6.0-21+deb9u2 \
		zlib1g-dev=1:1.2.8.dfsg-5 \
		&& \
	git clone https://github.com/anyenv/anyenv ~/.anyenv && \
	echo 'eval "$(anyenv init -)"' >> ~/.bashrc && \
	export PATH="$HOME/.anyenv/bin:$PATH" && \
	echo y | anyenv install --init && \
        apt-get -y autoremove && \
        rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.anyenv/bin:$PATH"

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

