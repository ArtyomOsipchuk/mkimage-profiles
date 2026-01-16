# step 3: copy package lists and groups as well as installation profiles
#         referenced in distro configuration (and only those!)
#         over to $(BUILDDIR)

ifeq (,$(BUILDDIR))
$(error BUILDDIR not defined)
endif

include $(BUILDDIR)/distcfg.mk

# sequential execution, no reason to haste
all:
	@for dir in lists groups profiles; do \
		$(MAKE) -C $$dir || exit; \
		if [ -n "$(EDITION_IS_USED)" ]; then exit 0; fi; \
	done
