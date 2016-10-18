function x11grab
	command ffmpeg -video_size 1366x768 -framerate 24 -f x11grab -i :0.0 -c:v libx264 -qp 0 -preset ultrafast /home/l4/Videos/Recs/$argv
end
