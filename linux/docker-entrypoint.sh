#!/bin/bash

if [[ "$BUILD_DATABASE" = "true" ]]; then
    echo 'Building database, this might take awhile'
    cd ./$DARKSTAR_DIR/sql
    for f in *.sql ; do "Importing $f" && mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -t $MYSQL_DATABASE -h db < $f; done
fi

if [[ "$COMPILE_SERVER" = "true" ]]; then
    echo 'Compiling the server'
    cd ./$DARKSTAR_DIR
    git checkout stable

    sh autogen.sh
    ./configure --enable-debug=gdb
    make
fi

echo 'Done'