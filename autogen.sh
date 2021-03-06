#! /bin/sh

# 
# execute the complete autoconf sequence to create the proper configure scripts
# and all..
#

# new: run
#   ./bootstrap.sh
# instead...


# make sure the MY_CPP_OPTION m4 macro is known to autoconf lateron:
aclocal -I m4

# If your autoconf version changes, the autom4te.cache stuff will mess you up.
# Get rid of it.
echo ... removing autoheader cache files ...
rm -rf autom4te*.cache

# create a fresh ac-config.h.in which is in sync with the configure.in script
autoheader -f

# run autoconf to create a fresh configure script
autoconf -f 

# run automake to create a matching Makefile.in makefile template
automake -a --gnu



