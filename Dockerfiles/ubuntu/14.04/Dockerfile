FROM ubuntu:14.04

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20170717~14.04.2 \
		curl=7.35.0-1ubuntu2.20 \
		git=1:1.9.1-1ubuntu0.10 \
		unzip=6.0-9ubuntu1.5 \
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

