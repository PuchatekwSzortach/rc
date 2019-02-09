export PYTHONPATH=.

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TF_CPP_MIN_LOG_LEVEL=2

# Setup direnv
eval "$(direnv hook bash)"

# Invoke autocompletion
_complete_invoke() {
    local candidates
    candidates=`invoke --complete -- ${COMP_WORDS[*]}`
    COMPREPLY=( $(compgen -W "${candidates}" -- $2) )
}
# Tell shell builtin to use the above for completing our invocations.
complete -F _complete_invoke -o default invoke inv