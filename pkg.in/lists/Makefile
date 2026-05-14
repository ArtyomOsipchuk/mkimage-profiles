# step 3: copy package lists referenced in distro configuration
#         (and only those!) over to $(BUILDDIR)
ifeq (,$(BUILDDIR))
pkgdups:
	@find -type f ! -name README ! -name Makefile \
	| grep -v '~$$' \
	| sed 's,^\./,,g' \
	| xargs ../../bin/pkgdups

%:
	$(error BUILDDIR not defined)

else

include $(BUILDDIR)/distcfg.mk
include $(BUILDDIR)/functions.mk

SUFFIX := pkg/lists
TARGET := $(BUILDDIR)/$(SUFFIX)

all: | $(TARGET) $(GLOBAL_DEBUG) copy-lists copy-groups save_packages_to_lists grep-kflavours grep-metadep grep-archdep \
	create_lists_groups check-lists
	@mp-commit "$(TARGET)" "requested $(SUFFIX) copied over"

create_lists_groups:
	@if [ -z "$(EDITION_IS_USED)" ]; then exit 0; fi; \
	if [ "$(CHECK)" = 0 ]; then exit 0; fi; \
	APTBOX=$(BUILDDIR)/.work/pkgbox/aptbox; \
	RPMFILES=`$$APTBOX/apt-get install -d -y --print-uris $(EDITION_PACKAGES) 2>&1 | grep 'file:' \
		| sed 's/ .*//' | sed 's/file://' | xargs`; \
	if [ -n "$$RPMFILES" ]; then echo $$RPMFILES; cp $$RPMFILES $$APTBOX/var/cache/apt/archives/; else \
		$$APTBOX/apt-get install -d -y -o=dir::cache=$$APTBOX/var/cache/apt $(EDITION_PACKAGES) 2>&1 \
		| grep 'Get:'; fi; \
	mkdir -p $(BUILDDIR)/pkg/editions/; \
	for i in $$APTBOX/var/cache/apt/archives/*.rpm; do rpm2cpio $$i \
		| cpio -i -D $(BUILDDIR)/pkg/editions/ -d -v 2>&1; done; \
	export ALTERATOR_EDITIONS_DIR=$(BUILDDIR)/pkg/editions/usr/share/alterator/editions; \
	export ALTERATOR_COMPONENTS_DIR=$(BUILDDIR)/pkg/editions/usr/share/alterator/components; \
	OUTDIR=$(BUILDDIR)/pkg; \
	editions2packages --kflavours $(KFLAVOURS) --arch $(ARCH) > $$OUTDIR/lists/.alt-components; \
	metadata2directory --kflavours $(KFLAVOURS) --arch $(ARCH) --outdir $$OUTDIR; \
	base2list --baselists $(EDITION_BASE_LSTS) --sections $(EDITION_BASE_SECTIONS) \
		--kflavours $(KFLAVOURS) --arch $(ARCH) --outdir $$OUTDIR; \
	rm -rf $(BUILDDIR)/pkg/editions/ $(LOG)

# env | grep _LISTS | sort -u | xargs -r cp -t
copy-lists:
	@echo $(sort $(foreach V, \
		$(filter %_LISTS,$(.VARIABLES)), \
		$(if $(filter environment% file,$(origin $V)),$($V)))) \
	|xargs -r -- cp --parents -at $(TARGET) -- || exit 1; \
	find $(TARGET) -name 'README' -delete -o -name 'Makefile' -delete

save_packages_to_lists:
	@$(foreach V, \
		$(filter-out NO_SORT_% CLEANUP_% %CLEANUP_PACKAGES GLOBAL_% PINNED_%,$(filter %_PACKAGES,$(sort \
		$(.VARIABLES)))),echo $($V) | sed -e 's/\s\+/\n/g' \
		| sort -u > $(TARGET)/$V;)
	@for i in $(KFLAVOURS) $(STAGE1_KFLAVOURS); do \
		echo kernel-image-$$i >$(TARGET)/KFLAVOURS; \
	done

check-lists:
	@APTBOX=$(BUILDDIR)/.work/pkgbox/aptbox; \
	if [ -d "$$APTBOX" ] && [ -z "$(NOCHECK)" ]; then \
		check-pkg-list --aptbox "$$APTBOX" `find $(TARGET) -type f`; \
	fi
	@rm -f $(TARGET)/*_PACKAGES* $(TARGET)/KFLAVOURS

copy-groups: PKGDIR = ..
copy-groups:
	@echo $(sort $(call groups2lists)) \
	| xargs -r -- cp --parents -at $(TARGET) -- || exit 1

grep-archdep:
	@find $(TARGET) -type f \
	| xargs -r -I __ -- archdep-filter -a "$(ARCH)" -i __

grep-metadep:
	@APT_CACHE=$(BUILDDIR)/.work/pkgbox/aptbox/apt-cache; \
	if [ -f "$$APT_CACHE" ]; then \
		find $(TARGET) -type f \
		| xargs -r -I __ -- metadep-expander "$$APT_CACHE" __; \
	fi

grep-kflavours:
	@find $(TARGET) -type f \
	| xargs -r -I __ -- kflavours-expander "$(KFLAVOURS)" __

# do beforehand as foreach gets expanded before recipe execution
$(TARGET):
	@mkdir -p $(TARGET)

# figure out *_LISTS variables and print them out nicely
debug:
	@echo -e $(foreach V, \
		$(filter %_LISTS,$(sort $(.VARIABLES))), \
		$(if $(filter environment% file,$(origin $V)),\
			$(shell echo '\\n"**"' $V: $($V)))) '\n'

endif
