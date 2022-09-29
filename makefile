
FILENAMESLIB := lib

PICLIST := $(addprefix $(FILENAMESLIB)/, ols_begin.sh ols_def.sh ols_end.sh ols_err.sh \
           ols_file.sh ols_help.sh ols_list.sh ols_man.sh \
		   ols_mktemp.sh ols_rmtemp.sh ols_setex.sh ols_signal.sh \
		   ols_test.sh ols_type.sh ols_usage.sh ols_version.sh \
		   filebase.sh filename.sh filepath.sh  filesfx.sh \
		   getopt.sh \
		   tst_plan.sh is.sh isnot.sh ok.sh \
		   diag.sh pass.sh fail.sh BAIL_OUT.sh \
		   vprintf.sh)
PICTARGET := lib/olslib
.SUFFIXES:
.SUFFIXES: .bash .t

default: all

# Targets


# Installation Support Targets

.PHONY: check
.PHONY: clean                # Remove all files in current directory normally created by building program
.PHONY: install              # Install package.
.PHONY: installcheck         # Run installation checks.
.PHONY: installdirs          # Create installation directories if required.
.PHONY: install-html         # Install HTML documentation.
.PHONY: install-dvi          # Install dvi documentation.
.PHONY: install-pdf          # Install PDF documentation.
.PHONY: install-ps           # Install postscript documentation.
.PHONY: install-strip        # Install and strip executables of debug info.
.PHONY: uninstall            # Uninstall all install and install-* files.

# Development Suport Targets

.PHONY: all                  # Default target.
.PHONY: test                 # Run development tests.
.PHONY: TAGS                 # Regenerate program TAGS
.PHONY: dvi                  # Generate dvi documentation.
.PHONY: info                 # Generate info documentation.
.PHONY: html                 # Generate HTML documentation.
.PHONY: cvt-docx             # Convert Word to Markdown.
.PHONY: markdown             # Generate Markdown with citations.
.PHONY: pdf                  # Generate PDF documentation.
.PHONY: ps                   # Generate postscript documentation.
.PHONY: mostlyclean          # Like clean but leave files most people don't want to recompile.
.PHONY: realclean            # Delete derived files
.PHONY: maintainer-clean     # Delete almost everything that can be reconstructed by this makefile.




# Distribution Support Targets

.PHONY: ci                   # Runs $(CI) and $(RCS_LABEL) on MANIFEST files.
.PHONY: dist                 # Creates distribution. Defaults to tardist.
.PHONY: distcheck            # Report files missing from MANIFEST file.
.PHONY: distclean            # Run realclean then distcheck.
.PHONY: distdir              # Copies MANIFEST files to $(DISTNAME)-$(VERSION).
.PHONY: disttest             # Creates tarfile. See MakeMaker.
.PHONY: manifest             # Rewrites MANIFEST file with remaining files.
.PHONY: shdist               # Run distdir then create a shar archive.
.PHONY: skipcheck            # Report skipped files from MANIFEST.SKIP file.
.PHONY: tardist              # Creates tarfile. See ExtUtils::MakeMaker.
.PHONY: uutardist            # Run tardist then uuencodes the tarfile.
.PHONY: veryclean            # Run realclean then removes backup files.
.PHONY: zipdist              # Run distdir then create a $(ZIP) zipfile.

#


all:
	@echo "all:"

install:
	@echo "install:"

uninstall:
	@echo "uninstall:"

install-strip:
	@echo "install-strip:"

clean:
	@echo "clean"

distclean:
	@echo "distclean:"

mostlyclean:
	@echo "mostlyclean:"

realclean:
	@echo "realclean:"

maintainer-clean:
	@echo "maintainer-clean:"

TAGS:
	@echo "TAGS:"

info:
	@echo "info:"

dvi:
	@echo "dvi:"

dist:
	@echo "dist:"
	bin

check:
	@echo "check:"

# Select which license you wish to publish under and
# replace filename doc/license/CC-BY-SA-4-0.mkd
# with the filename you want.
LICENSE: doc/license/CC-BY-SA-4-0.mkd
	@bin/build-license.sh doc/license/CC-BY-SA-4-0.mkd

MANIFEST: doc/manifest.mkd
	@bin/build-manifest.sh

README: doc/readme.mkd
	@bin/build-readme.sh

installcheck:
	@echo "installcheck:"

installdirs:
	@echo "installdirs:"

test:
	@echo "test:"

distcheck:
	@echo "distcheck:"

veryclean:
	@echo "veryclean:"

manifest:
	bin/build-manifest.sh

distdir:
	@echo "distdir:"

disttest:
	@echo "disttest:"

tardist:
	@echo "tardist:"

uutardist:
	@echo "uutardist:"

shdist:
	@echo "shdist:"

zipdist:
	@echo "zipdist:"

ci:
	@echo "ci:"

skipcheck:
	@echo "skipcheck:"

install-html:
	@echo "install-html:"

install-dvi:
	@echo "install-dvi:"

install-pdf:
	@echo "install-pdf:"

install-ps:
	@echo "install-ps:"

cvt-docx:
	echo "Convet Word to Markdown."
	bin/cvt-docx.sh

html:
	@echo "html:"
	@bin/build-html.sh

pdf:
	@echo "pdf:"
	@bin/build-pdf.sh

markdown:
	@echo "markdown:"
	@bin/build-markdown.sh

ps:
	@echo "ps:"
