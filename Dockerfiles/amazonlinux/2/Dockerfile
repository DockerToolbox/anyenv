FROM amazonlinux:2

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		ca-certificates-2021.2.50 \
		curl-7.76.1 \
		git-2.32.0 \
		unzip-6.0 \
		yum-plugin-remove-with-leaves-1.1.31 \
		&& \
	git clone https://github.com/anyenv/anyenv ~/.anyenv && \
	echo 'eval "$(anyenv init -)"' >> ~/.bashrc && \
	export PATH="$HOME/.anyenv/bin:$PATH" && \
	echo y | anyenv install --init && \
	yum clean all && \
	rm -rf /var/cache/yum

ENV PATH="/root/.anyenv/bin:$PATH"

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

