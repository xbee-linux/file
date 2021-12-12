#!/bin/bash
set -e

mkdir -p {{ .pack.exportDir }}/{bin,include,lib,share}
cp /usr/bin/file {{ .pack.exportDir }}/bin
cp /usr/include/magic.h {{ .pack.exportDir }}/include
cp -r /usr/lib/{libmagic.la,libmagic.so.1.0.0,pkgconfig} {{ .pack.exportDir }}/lib
cd {{ .pack.exportDir }}/lib
ln -s libmagic.so.1.0.0 libmagic.so
ln -s libmagic.so.1.0.0 libmagic.so.1
mkdir -p {{ .pack.exportDir }}/share/{man,misc}
cp /usr/share/misc/magic.mgc {{ .pack.exportDir }}/share/misc
mkdir -p {{ .pack.exportDir }}/share/man/{man1,man3,man4,man5}
cp /usr/share/man/man1/file.1 {{ .pack.exportDir }}/share/man/man1
cp /usr/share/man/man3/libmagic.3 {{ .pack.exportDir }}/share/man/man3
cp /usr/share/man/man4/magic.4 {{ .pack.exportDir }}/share/man/man4


