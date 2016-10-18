# vim : setf fish
set -e fish_greeting

set -gx PATH /usr/bin
set -gx EDITOR 'vim'
set -gx BROWSER 'firefox'
set -gx GTK_IM_MODULE ibus
set -gx XMODIFIERS @im ibus
set -gx QT_IM_MODULE ibus
set -gx DE "xfce"
set -gx XDG_CONFIG_DIR '/etc/xdg'
set -gx QT_STYLE_OVERRIDE gtk
set -gx NO_AT_BRIDGE 1
set -gx _JAVA_OPTIONS "-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
set -gx FZF_DEFAULT_OPTS '--color=16'
set -gx GOPATH '/home/l4/Public/Go/'
set -gx STARDICT_DATA_DIR '~/.stardict/dic'
set -gx GUILE_AUTO_COMPILE 0
#less 
set -gx LESS_TERMCAP_mb (printf "\e[01;36m")      # begin blinking
set -gx LESS_TERMCAP_md (printf "\e[01;36m")      # begin bold
set -gx LESS_TERMCAP_me (printf "\e[0m")          # end mode
set -gx LESS_TERMCAP_se (printf "\e[0m")          # end standout-mode
set -gx LESS_TERMCAP_so (printf "\e[07;93m")   # begin standout-mode - info box
set -gx LESS_TERMCAP_ue (printf "\e[0m")          # end underline
set -gx LESS_TERMCAP_us (printf "\e[01;32m")      # begin underline

alias gdb "gdb -q "
alias cck 'cppcheck --enable=warning,performance'
alias youtube-dl '~/Desktop/bin/youtube-dl'
alias ll 'ls -lha' 
alias cdc 'cd -'
alias fm 'vifm'
alias news 'newsbeuter -q'
alias edt 'howl'
alias pm 'pacman'
alias mcc 'musl-gcc'
alias puttb 'nc termbin.com 9999'
alias getmyip 'wget http://ipinfo.io/ip -qO -'
alias f 'file'

function def
	sdcv -c -n $argv | less
end

#fzf config
function __fzfcmd
    echo "fzf"
end

if [ -z "$TMPDIR" ]
    set -g TMPDIR /tmp
end

function __fzf_escape
    while read item
        echo -n (echo -n "$item" | sed -E 's/([ "$~'\''([{<>})])/\\\\\\1/g')' '
    end
end

function __fzf_ctrl_f
    set -q FZF_CTRL_T_COMMAND; or set -l FZF_CTRL_T_COMMAND "
    command find -L . \\( -path '*/\\.*' -o -fstype 'dev' -o -fstype 'proc' \\) -prune \
        -o -type f -print \
        -o -type d -print \
        -o -type l -print 2> /dev/null | sed 1d | cut -b3-"
    eval "$FZF_CTRL_T_COMMAND | "(__fzfcmd)" -m > $TMPDIR/fzf.result"
    and sleep 0
    and commandline -i (cat $TMPDIR/fzf.result | __fzf_escape)
    commandline -f repaint
    rm -f $TMPDIR/fzf.result
end

function __fzf_ctrl_r
    history | eval (__fzfcmd) +s +m --tiebreak=index --toggle-sort=ctrl-r $FZF_CTRL_R_OPTS > $TMPDIR/fzf.result
    and commandline (cat $TMPDIR/fzf.result)
    commandline -f repaint
    rm -f $TMPDIR/fzf.result
end
