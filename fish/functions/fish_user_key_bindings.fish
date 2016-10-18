#vim:ft=fish

function fish_user_key_bindings
	bind \cr '__fzf_ctrl_r'
	bind \cf '__fzf_ctrl_f'

	bind \cn 'clear; commandline -f repaint'
	bind \ek 'history-search-backward'
	bind \ej 'history-search-forward'
	bind \cl 'forward-char'
	bind \ch 'backward-char'
	bind \eh 'backward-word'
	bind \el 'forward-word'
	bind \ck 'backward-kill-word'
	bind \n execute
end

function __fish_command_not_found_handler --on-event fish_command_not_found
    echo "fish: command not found :("
end
