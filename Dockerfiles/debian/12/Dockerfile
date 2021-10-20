FROM debian:bookworm

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20210119 \
		build-essential=12.9 \
		bzip2=1.0.8-4 \
		curl=7.74.0-1.3+b1 \
		git=1:2.33.0-1 \
		libssl-dev=1.1.1l-1 \
		unzip=6.0-26 \
		zlib1g-dev=1:1.2.11.dfsg-2 \
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

