FROM centos:8

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		ca-certificates-2020.2.41 \
		git-2.27.0 \
		&& \
	git clone https://github.com/anyenv/anyenv ~/.anyenv && \
	echo 'eval "$(anyenv init -)"' >> ~/.bashrc && \
	export PATH="$HOME/.anyenv/bin:$PATH" && \
	echo y | anyenv install --init && \
	yum autoremove && \
	yum clean all && \
	rm -rf /var/cache/yum

ENV PATH="/root/.anyenv/bin:$PATH"

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

