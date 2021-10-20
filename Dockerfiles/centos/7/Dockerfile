FROM centos:7

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		ca-certificates-2020.2.41 \
		bzip2-1.0.6 \
		curl-7.29.0 \
		gcc-4.8.5 \
		git-1.8.3.1 \
		gzip-1.5 \
		make-3.82 \
		openssl-devel-1.0.2k \
		tar-1.26 \
		unzip-6.0 \
		zlib-devel-1.2.7 \
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

