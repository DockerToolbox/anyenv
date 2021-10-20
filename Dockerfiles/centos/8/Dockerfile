FROM centos:8

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		ca-certificates-2020.2.41 \
		bzip2-1.0.6 \
		curl-7.61.1 \
		gcc-8.4.1 \
		git-2.27.0 \
		gzip-1.9 \
		make-4.2.1 \
		tar-1.30 \
		unzip-6.0 \
		&& \
	# All the shared commands go here
	git clone https://github.com/anyenv/anyenv ~/.anyenv && \
	#echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc && \
	echo 'eval "$(anyenv init -)"' >> ~/.bashrc && \
	export PATH="$HOME/.anyenv/bin:$PATH" && \
	echo y | anyenv install --init && \
	yum autoremove && \
	yum clean all && \
	rm -rf /var/cache/yum

ENV PATH="/root/.anyenv/bin:$PATH"

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

