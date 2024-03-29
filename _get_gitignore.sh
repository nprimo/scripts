g_opts=$(gh api /repos/github/gitignore/contents/ \
    | jq '.[] .name' | grep gitignore |xargs)

_get_gitignore() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts=$g_opts

    if [[ ${cur} == * ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi
}

complete -F _get_gitignore get_gitignore.sh
complete -F _get_gitignore get_gitignore
