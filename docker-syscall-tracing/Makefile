.PHONY: sync-code
sync-code:
	rsync -havz -e "sshpass -f /Users/rutu/imp/nimbus ssh -o StrictHostKeyChecking=no" $(CURDIR) nimbus-23:/home/rutu-sh/rutu-sh/ebpf

clean:
	cd src/sample-container && \
	$(MAKE) clean-context

build-app:
	cd src/sample-container && \
	$(MAKE) build

deploy-app:
	cd deploy && \
	docker compose up

undeploy-app:
	cd deploy && \
	docker compose down