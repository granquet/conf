#!/bin/sh

if [ $# -eq 0 ] ; then
        dest=$HOME
else
    dest=$1
fi

links=`find . -maxdepth 1 -not -name '.git' -not -name '.gitmodules' -not -name '.' -not -name 'install.sh' -not -name '*.swp'`

for l in $links
do
    echo "linking `realpath $l` to $dest/$l"
    ln -s `realpath $l` $dest/$l
done
