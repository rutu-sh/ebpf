.PHONY: sync-code
sync-code:
	rsync -havz -e "sshpass -f /Users/rutu/imp/nimbus ssh -o StrictHostKeyChecking=no" $(CURDIR) nimbus-23:/home/rutu-sh/rutu-sh/ebpf


.PHONY: sync-code-back
sync-code-back:
	rsync -havz -e "sshpass -f /Users/rutu/imp/nimbus ssh -o StrictHostKeyChecking=no" nimbus-23:/home/rutu-sh/rutu-sh/ebpf $(CURDIR)