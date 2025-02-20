function to --description "Interactive cd that offers to create directories" --wraps "cd"
    # Some git trickery first. If the function is called with no arguments,
    # typically that means to cd to $HOME, but we can be smarter - if you're
    # in a git repo and not in its root, cd to the root.
    if is_empty $argv
        set git_root (git rev-parse --git-dir 2>/dev/null | path dirname)
        if test $status -eq 0 -a "$git_root" != .
            cd $git_root
            return 0
        end
    end

    cd $argv
    set cd_status $status
    if test $cd_status -ne 0
        and gum confirm "Create the directory? ($argv[-1])"
        echo "Creating directory"
        command mkdir -p -- $argv[-1]
        builtin cd $argv[-1]
        return 0
    else
        return $cd_status
    end
end
