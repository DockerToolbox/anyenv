FROM debian:buster-slim

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20200601~deb10u2 \
		build-essential=12.6 \
		bzip2=1.0.6-9.2~deb10u1 \
		curl=7.64.0-4+deb10u2 \
		git=1:2.20.1-2+deb10u3 \
		libssl-dev=1.1.1d-0+deb10u7 \
		unzip=6.0-23+deb10u2 \
		zlib1g-dev=1:1.2.11.dfsg-1 \
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

