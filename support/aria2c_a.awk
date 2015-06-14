# aria2cのヘルプテキストを簡易整形(1行1項目)
# これをさらにフィルタリングすること

function format_title(str) {
    where = match(str, /^ -{1,2}[^ ]*, -{1,2}[^ ]* /)
    if (where != 0) {
        split(str, array, ", ")
        sub(/ /, "", array[1])
        sub(/ /, "", array[2])
        a1 = array[1]
        a2 = array[2]
        sub(/(\[){0,1}=.*/, "", a1)
        sub(/(\[){0,1}=.*/, "", a2)
        new_string = sprintf("'(%s %s)'{%s,%s}'[", a1, a2, array[1], array[2])
    } else {
        sub(/ /, "", str)
        new_string = sprintf("'%s[", str)
    }
    return new_string
}

/^ -{1,2}[^ ]* / || /^ -{1,2}[^ ]*, -{1,2}[^ ]* / {
    text = gensub(/^ -{1,2}[^ ]* |^ -{1,2}[^ ]*, -{1,2}[^ ]* /, "", 1, $0)
    title = gensub(text, "", 1, $0)
    printf("%s", format_title(title))
    if (/[^ \.]\./) {
        nextline = 0
        sub(/\. .*/, ".", text)
        sub(/ {2,}/, "", text)
        printf("%s]' \\\n", text)
    } else {
        nextline = 1
        sub(/ {2,}/, "", text)
        printf("%s", text)
    }
}

nextline && /^ [^-].*$/ {
    if (/[^ \.]\./) {
        nextline = 0
        text = $0
        sub(/\. .*/, ".", text)
        sub(/ {2,}/, "", text)
        printf("%s]' \\\n", text)
    } else {
        nextline = 1
        text = $0
        sub(/ {2,}/, "", text)
        printf("%s", $0)
    }
}
