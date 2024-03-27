.PHONY : dev

install :
	bash src/base.sh
	bash src/sshd_configure.sh
	bash src/sshd_enable.sh

dev :
	@install -m 0700 "share/commit-hook.sh" .git/hooks/prepare-commit-msg
