build-context:
	cp -r core build 

clean-context:
	rm -rf build/core

.PHONY: build
build:
	$(MAKE) build-context && \
	cd build && \
	docker build --no-cache --network=host -t sample-container:latest .	