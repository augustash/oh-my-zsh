# Generate strong passwords
function genpasswd() {
    if [[ $# -ne 1 ]]; then
        echo "Usage: $0 [length]"
        return 1
    fi

    # generate random password
    tr -dc A-Za-z0-9_ < /dev/urandom | head -c $1 | xargs
}
