	# All the shared commands go here
	git clone https://github.com/anyenv/anyenv ~/.anyenv && \
	#echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc && \
	echo 'eval "$(anyenv init -)"' >> ~/.bashrc && \
	export PATH="$HOME/.anyenv/bin:$PATH" && \
	echo y | anyenv install --init && \
