FROM amazonlinux:2

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		ca-certificates-2021.2.50 \
		bzip2-1.0.6 \
		curl-7.76.1 \
		gcc-7.3.1 \
		git-2.32.0 \
		gzip-1.5 \
		make-3.82 \
		tar-1.26 \
		unzip-6.0 \
		yum-plugin-remove-with-leaves-1.1.31 \
		&& \
	# All the shared commands go here
	git clone https://github.com/anyenv/anyenv ~/.anyenv && \
	#echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc && \
	echo 'eval "$(anyenv init -)"' >> ~/.bashrc && \
	export PATH="$HOME/.anyenv/bin:$PATH" && \
	echo y | anyenv install --init && \
	yum clean all && \
	rm -rf /var/cache/yum

ENV PATH="/root/.anyenv/bin:$PATH"

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

