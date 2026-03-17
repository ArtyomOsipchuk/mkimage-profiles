# return $(ARCH) value iff it is known to support virtualization
ARCH_VIRT = i586 x86_64 ppc64le aarch64 loongarch64 riscv64 e2k%
ARCH_NOVM = e2k e2kv4 e2kv5
virt_arch = $(filter $(ARCH_VIRT),$(filter-out $(ARCH_NOVM),$(ARCH)))
