
build:
	@curl -so docs/index.html https://raw.githubusercontent.com/javanile/bpkg-ci/main/bpkg-install.sh




## -----
## Build
## -----
build: build-bpkg-install

build-bpkg-install:
	@curl -sLo bpkg-install.sh https://raw.githubusercontent.com/bpkg/bpkg/master/lib/install/install.sh
	@sed -i 's/master/main/g' bpkg-install.sh
	@sed -i 's/{BASH_SOURCE\[0\]}/0/g' bpkg-install.sh
	@sed -i 's/local let needs_global=0/local let needs_global=1/g' bpkg-install.sh

## ----
## Test
## ----
test: test-bpkg-install

test-bpkg-install: build-bpkg-install
	@rm -fr *.log
	@cat bpkg-install.sh | bash -s term@master > stdout.log 2> stderr.log
	@sed -i 's/\x1B\[[0-9;]\{1,\}[A-Za-z]//g' *.log
	@sed -i 's/^[ \t]*//;s/[ \t]*$$//' *.log
	@sed -i '/^$$/d' *.log
	@diff stdout.log test/fixtures/bpkg-install-stdout.log
	@diff stderr.log test/fixtures/bpkg-install-stderr.log
