package bootloader_utils;
# $Id: bootloader_utils.pm,v 1.4 2004/06/11 11:09:45 at Exp $
#--------------------------------------------------------------------
# Copyright (C) 2000, 2001, 2002 by MandrakeSoft.
# Chmouel Boudjnah <chmouel@mandrakesoft.com>.
#
# Redistribution of this file is permitted under the terms of the GNU 
# Public License (GPL)
#--------------------------------------------------------------------
# Copyright (C) 2003 by ALT Linux Team,
# Alexey Tourbin <at@altlinux.org>.
#--------------------------------------------------------------------

require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(mnt2dev getroot);

use strict;

sub gettab ($) {
	my $fname = shift;
	open my $fh, $fname or do {
		warn "$0: $fname: $!";
		return;
	};
	my @tab;
	local $_;
	local $/ = "\n";
	while (<$fh>) {
		next unless /\S/;
		next if /^\s*#/;
		my @ent = split;
		push @tab, \@ent;
	}
	return @tab;
}

sub mnt2dev ($;$) {
	my $mnt = shift;
	my $fstab_file = shift || "/etc/fstab";
	my @fstab = gettab $fstab_file;
	foreach my $fsent (@fstab) {
	  return $$fsent[0] if $$fsent[1] eq $mnt;
	}
	return;
}

sub getroot {
	my $root;

	# 1. try to get root device from /proc/cmdline
        my $fh;
	if ((open $fh, "/proc/cmdline") &&
            (<$fh> =~ /root=((UUID=|LABEL=|\/)\S+)/)){
		$root=$1;
	}

	# 2. try to get root device from /etc/fstab
        $root = mnt2dev("/") unless $root;

	# 3. try to get root device from /usr/sbin/rdev
        $root=$& if !$root && (`/usr/sbin/rdev` =~ /\/\S+/);

	return $root;
}

1;
