FROM ubuntu:16.04

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20210119~16.04.1 \
		curl=7.47.0-1ubuntu2.19 \
		git=1:2.7.4-0ubuntu1.10 \
		unzip=6.0-20ubuntu1.1 \
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

