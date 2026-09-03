FN_RET=0

read_object() {
    local _input="$1"
    FN_RET="$_input"
}

eval_object() {
    local _object="$1"
    FN_RET="$_object"
}

# turn object into string
print_object() {
    local _object="$1"
    FN_RET="$_object"
}

# source_code="$(<"$file")"


repl() {
    local input

    while read -e -r -p 'shellisp> ' input; do
        read_object "$input"
        eval_object "$FN_RET"
        print_object "$FN_RET"
        printf "$FN_RET\n"
    done
}

repl
