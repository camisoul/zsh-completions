/=COMMAND/ {
    str = $0
    sub(/=COMMAND/, "=", str)
    sub(/\]'/, "]:COMMAND:_commands'", str)
    printf("%s\n", str)
    nextline = 1
}

/=FILE/ {
    str = $0
    sub(/=FILE/, "=", str)
    sub(/\]'/, "]:FILE:_files'", str)
    printf("%s\n", str)
    nextline = 1
}

/=LOG/ {
    str = $0
    sub(/=LOG/, "=", str)
    sub(/\]'/, "]:LOG:_files'", str)
    printf("%s\n", str)
    nextline = 1
}

/=PATH/ {
    str = $0
    sub(/=PATH/, "=", str)
    sub(/\]'/, "]:PATH:_files'", str)
    printf("%s\n", str)
    nextline = 1
}

/=DIR/ {
    str = $0
    sub(/=DIR/, "=", str)
    sub(/\]'/, "]:DIR:_files -/'", str)
    printf("%s\n", str)
    nextline = 1
}

/\[=true\|false\]/ {
    str = $0
    sub(/\[=true\|false\]/, "=", str)
    sub(/\]'/, "]:BOOL:(true false)'", str)
    printf("%s\n", str)
    nextline = 1
}

/=USER/ {
    str = $0
    sub(/=USER/, "=", str)
    sub(/\]'/, "]:USER:_users'", str)
    printf("%s\n", str)
    nextline = 1
}

/=URI/ {
    str = $0
    sub(/=URI/, "=", str)
    sub(/\]'/, "]:URI:_uris'", str)
    printf("%s\n", str)
    nextline = 1
}

/=SIZE/ {
    str = $0
    sub(/=SIZE/, "=", str)
    sub(/\]'/, "]:SIZE'", str)
    printf("%s\n", str)
    nextline = 1
}

/=SEC/ {
    str = $0
    sub(/=SEC/, "=", str)
    sub(/\]'/, "]:SEC'", str)
    printf("%s\n", str)
    nextline = 1
}

/=SPEED/ {
    str = $0
    sub(/=SPEED/, "=", str)
    sub(/\]'/, "]:SPEED'", str)
    printf("%s\n", str)
    nextline = 1
}

/=LEVEL/ {
    str = $0
    sub(/=LEVEL/, "=", str)
    sub(/\]'/, "]:LEVEL'", str)
    printf("%s\n", str)
    nextline = 1
}

/=MINUTES/ {
    str = $0
    sub(/=MINUTES/, "=", str)
    sub(/\]'/, "]:MINUTES'", str)
    printf("%s\n", str)
    nextline = 1
}

/=RATIO/ {
    str = $0
    sub(/=RATIO/, "=", str)
    sub(/\]'/, "]:RATIO'", str)
    printf("%s\n", str)
    nextline = 1
}

/=LENGTH/ {
    str = $0
    sub(/=LENGTH/, "=", str)
    sub(/\]'/, "]:LENGTH'", str)
    printf("%s\n", str)
    nextline = 1
}

/=REFERER/ {
    str = $0
    sub(/=REFERER/, "=", str)
    sub(/\]'/, "]:REFERER'", str)
    printf("%s\n", str)
    nextline = 1
}

/=HEADER/ {
    str = $0
    sub(/=HEADER/, "=", str)
    sub(/\]'/, "]:HEADER'", str)
    printf("%s\n", str)
    nextline = 1
}

/=POLL/ {
    str = $0
    sub(/=POLL/, "=", str)
    sub(/\]'/, "]:POLL'", str)
    printf("%s\n", str)
    nextline = 1
}

/=METHOD/ {
    str = $0
    sub(/=METHOD/, "=", str)
    sub(/\]'/, "]:METHOD'", str)
    printf("%s\n", str)
    nextline = 1
}

/=VERSION/ {
    str = $0
    sub(/=VERSION/, "=", str)
    sub(/\]'/, "]:VERSION'", str)
    printf("%s\n", str)
    nextline = 1
}

/=LANGUAGE/ {
    str = $0
    sub(/=LANGUAGE/, "=", str)
    sub(/\]'/, "]:LANGUAGE'", str)
    printf("%s\n", str)
    nextline = 1
}

/=LOCATION/ {
    str = $0
    sub(/=LOCATION/, "=", str)
    sub(/\]'/, "]:LOCATION'", str)
    printf("%s\n", str)
    nextline = 1
}

/=DOMAINS/ {
    str = $0
    sub(/=DOMAINS/, "=", str)
    sub(/\]'/, "]:DOMAINS'", str)
    printf("%s\n", str)
    nextline = 1
}

/=SELECTOR/ {
    str = $0
    sub(/=SELECTOR/, "=", str)
    sub(/\]'/, "]:SELECTOR'", str)
    printf("%s\n", str)
    nextline = 1
}

/=INTERFACE/ {
    str = $0
    sub(/=INTERFACE/, "=", str)
    sub(/\]'/, "]:INTERFACE'", str)
    printf("%s\n", str)
    nextline = 1
}

/=PROXY/ {
    str = $0
    sub(/=PROXY/, "=", str)
    sub(/\]'/, "]:PROXY'", str)
    printf("%s\n", str)
    nextline = 1
}

/=PROTO/ {
    str = $0
    sub(/=PROTO/, "=", str)
    sub(/\]'/, "]:PROTO'", str)
    printf("%s\n", str)
    nextline = 1
}

/=PASSWD/ {
    str = $0
    sub(/=PASSWD/, "=", str)
    sub(/\]'/, "]:PASSWD'", str)
    printf("%s\n", str)
    nextline = 1
}

/=PID/ {
    str = $0
    sub(/=PID/, "=", str)
    sub(/\]'/, "]:PID:_pids'", str)
    printf("%s\n", str)
    nextline = 1
}

/=GID/ {
    str = $0
    sub(/=GID/, "=", str)
    sub(/\]'/, "]:GID'", str)
    printf("%s\n", str)
    nextline = 1
}

/=HOST:PORT/ {
    str = $0
    sub(/=HOST:PORT/, "=", str)
    sub(/\]'/, "]:HOST\\:PORT'", str)
    printf("%s\n", str)
    nextline = 1
}

/=PORT\.\.\./ {
    str = $0
    sub(/=PORT\.\.\./, "=", str)
    sub(/\]'/, "]:PORT'", str)
    printf("%s\n", str)
    nextline = 1
}

/=PORT/ {
    str = $0
    sub(/=PORT/, "=", str)
    sub(/\]'/, "]:PORT'", str)
    printf("%s\n", str)
    nextline = 1
}

/=INDEX\.\.\./ {
    str = $0
    sub(/=INDEX\.\.\./, "=", str)
    sub(/\]'/, "]:INDEX'", str)
    printf("%s\n", str)
    nextline = 1
}

/=OS/ {
    str = $0
    sub(/=OS/, "=", str)
    sub(/\]'/, "]:OS'", str)
    printf("%s\n", str)
    nextline = 1
}

/=UM/ {
    str = $0
    sub(/=UM/, "=", str)
    sub(/\]'/, "]:UM'", str)
    printf("%s\n", str)
    nextline = 1
}

/=N/ {
    str = $0
    sub(/=N/, "=", str)
    sub(/\]'/, "]:N'", str)
    printf("%s\n", str)
    nextline = 1
}

nextline != 1 {
    print $0
}

{ nextline = 0 }

