build-context:
	cp -r core build 

clean-context:
	rm -rf build/core

build-app:
	$(MAKE) build-context && \
	cd build && \
	docker build --no-cache --network=host -t go-app:latest .	

deploy-app:
	cd deploy && \
	docker-compose up -d
	