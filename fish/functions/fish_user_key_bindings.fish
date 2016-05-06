function fish_user_key_bindings
    bind \cf '__fzf_ctrl_f'
    bind \cr '__fzf_ctrl_r'

    if bind -M insert > /dev/null 2>&1
        bind -M insert \ct '__fzf_ctrl_f'
        bind -M insert \cr '__fzf_ctrl_r'
    end
end
