
all: usage 

usage:
	@echo "Usage:                                                   "
	@echo "                                                         "
	@echo "    make  command                                        "
	@echo "                                                         "
	@echo "The commands are:                                        "
	@echo "                                                         "
	@echo "    build       build system                             "
	@echo "    serve       run gitbook serve                        "
	@echo "    clean       clean up                                 "
	@echo "    status      run git status                           "
	@echo "                                                         "

build: install
	cd src && gitbook build

install:
	cd src && yarn install && gitbook install

serve:
	cd src && gitbook serve --port 4379 --lrport 4479 --watch

status:
	git status .

.PHONE: distclean clean

clean:
	find . -name \*~ -type f |xargs -I {} rm -f {}

#sunya:
#	rm -rf .vscode .git .gitignore tools doc VERSION README.md Makefile LICENSE AUTHORS

distclean: clean
