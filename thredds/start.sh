#!/usr/bin/env bash

trap_term () {
    /usr/local/tomcat/bin/catalina.sh stop
}

trap trap_term SIGTERM

if [ ! -z "${UID}" ]; then
    echo "Trying to start Tomcat as user ${UID}"
    if ! id -u ${UID} > /dev/null 2>&1; then
        echo "The user ${UID} does not exist, trying to create it"
        addgroup --gid ${GID} tomcat-users
        adduser --disabled-password --gecos "" --no-create-home --gid ${GID} --uid ${UID} tomcat-user
    fi
    chown -R ${UID}:${GID} /usr/local/tomcat
    for dir in "$@"
    do
        chown -f -R ${UID}:${GID} $dir
    done

    echo "Starting Tomcat as user ${UID}"
    su -m `id -run ${UID}` -c "/usr/local/tomcat/bin/catalina.sh run" &
else
    echo "No UID specified, starting Tomcat as root"
    /usr/local/tomcat/bin/catalina.sh run &
fi

CHILD=$!
wait ${CHILD}
