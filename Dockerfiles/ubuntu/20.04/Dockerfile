FROM ubuntu:20.04

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20210119~20.04.2 \
		build-essential=12.8ubuntu1.1 \
		bzip2=1.0.8-2 \
		curl=7.68.0-1ubuntu2.7 \
		git=1:2.25.1-1ubuntu3.2 \
		unzip=6.0-25ubuntu1 \
		&& \
	# All the shared commands go here
	git clone https://github.com/anyenv/anyenv ~/.anyenv && \
	#echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc && \
	echo 'eval "$(anyenv init -)"' >> ~/.bashrc && \
	export PATH="$HOME/.anyenv/bin:$PATH" && \
	echo y | anyenv install --init && \
        apt-get -y autoremove && \
        rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.anyenv/bin:$PATH"

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

