FROM centos:7

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		ca-certificates-2020.2.41 \
		git-1.8.3.1 \
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

