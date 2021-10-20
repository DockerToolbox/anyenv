FROM ubuntu:18.04

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20210119~18.04.2 \
		build-essential=12.4ubuntu1 \
		bzip2=1.0.6-8.1ubuntu0.2 \
		curl=7.58.0-2ubuntu3.16 \
		git=1:2.17.1-1ubuntu0.9 \
		unzip=6.0-21ubuntu1.1 \
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

