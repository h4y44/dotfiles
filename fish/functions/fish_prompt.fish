function fish_prompt
	set_color cyan
	echo 'l4> '
end

function fish_right_prompt
	set_color brown
	echo $PWD
end

function time
    command time --portability $argv
end

function getdirect
    curl -w "%{url_effective}\n" -I -L -s -S $argv -o /dev/null 
end

function pstream
    youtube-dl -q -o- $argv | mplayer -cache 4096 -
end

function gops
	tr ' ' '\n'
end
