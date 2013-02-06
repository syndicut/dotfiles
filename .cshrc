#	$ZenonID: src/zen/share/zvm.skels/skel/.cshrc,v 1.1 2007/10/29 08:54:02 defan Exp $
#
# .cshrc - csh resource script, read at beginning 
#	   of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA
#alias pwd	dirs

setenv	EDITOR	joe
setenv	PAGER	less

setenv	BLOCKSIZE	K
#setenv LANG ru_SU.KOI8-R
set path=( /bbs /{bin,sbin} /usr/{bin,sbin} /usr/local/bin ~/bin .)

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)

	# make mail(1) happy:
	setenv	crt	24

	# Buy tcsh, hello bash!
	setenv  SHELL   ~/bin/bash
	exec $SHELL
endif
