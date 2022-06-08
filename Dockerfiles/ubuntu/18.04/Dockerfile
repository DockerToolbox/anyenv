FROM ubuntu:18.04

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20210119~18.04.2 \
		curl=7.58.0-2ubuntu3.18 \
		git=1:2.17.1-1ubuntu0.11 \
		unzip=6.0-21ubuntu1.1 \
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

