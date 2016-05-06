set -xU EDITOR 'vim'
set -xU TERM 'xterm-256color'
set -xU BROWSER 'google-chrome-stable'
set -xU GTK_IM_MODULE ibus
set -xU XMODIFIERS @im ibus
set -xU QT_IM_MODULE ibus
set -xU DE "xfce"
set -xU XDG_CONFIG_DIR '/etc/xdg'
set -xU QT_STYLE_OVERRIDE gtk
set -xU NO_AT_BRIDGE 1
set -gx _JAVA_OPTIONS "-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
set -gx FZF_DEFAULT_OPTS '--color=16'
alias gdb "gdb -q "
alias youtube-dl '~/Desktop/bin/youtube-dl'
alias ips 'bpython'
alias ll 'ls -lha' 
alias fm 'vifm'
alias vv 'g++ -std=c++14'
alias edt 'textadeptjit'
alias pm 'pacman'
alias puttb 'nc termbin.com 9999'
alias getmyip 'wget http://ipinfo.io/ip -qO -'
alias crc 'crystal build'
alias getnetspeed '~/Desktop/bin/speedtest'
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
