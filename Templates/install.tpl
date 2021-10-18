	# All the shared commands go here
	git clone https://github.com/anyenv/anyenv ~/.anyenv && \
	echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile && \
	echo 'eval "$(anyenv init -)"' >> ~/.bash_profile && \
	export PATH="$HOME/.anyenv/bin:$PATH" && \
	echo y | anyenv install --init && \
