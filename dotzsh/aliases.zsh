alias gdb="gdb --args";
# Remove all files in the current directory with size zero (remove zero size files)
alias rmzsf="find . -maxdepth 1 -size 0 -exec rm {} \;"
alias ssh="ssh -X"
alias ls="ls --color=auto"
alias ll="ls -la"
alias rm="rm -i"
alias more="less"
alias perl="perl -w"
alias vi='LC_ALL=en_US.UTF-8 vim -X -c"syn sync fromstart"'
alias matlab="matlab -nojvm -nosplash"
alias remake="make clean && make"
alias awk="gawk"
alias gnuplot="gnuplot -persist -xrm 'gnuplot*line2Color:blue'"
# Various internet sources (audio streams, weather)
alias wfmt="mplayer http://wttw.ic.llnwd.net/stream/wttw_wfmt_livebroadcast"
alias current="mplayer http://currentstream1.publicradio.org:80"
alias bbc="mplayer mms://livewmstream-ws.bbc.co.uk.edgestreams.net/reflector:48278"
alias usradar="wget http://radar.weather.gov/Conus/RadarImg/latest.gif -O /tmp/uslatest.gif; eog /tmp/uslatest.gif; rm -f /tmp/uslatest.gif"
alias itasca="ssh -X itasca.msi.umn.edu"
alias glu="ssh -X glu21.cs.umn.edu"
# make bc work with floating points by default
alias bc="bc -l"
alias pidgin='NSS_SSL_CBC_RANDOM_IV=0 pidgin'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'
# fixes for colors (xterm-16color and -2) and fonts (-u)
alias tmux="TERMINFO=~/.terminfo/x/xterm-16color TERM=xterm-16color tmux -u -2"
# htop is much better than top
alias top="htop"
alias python="python3"
alias pip="pip3"

# quick search of process list                  
# (last entry is always the grep process itself)
function pss {                                  
  ps aux | grep -Ei "($@|%CPU)";
}                                               

function joins {
  join <(sort $1) <(sort $2)
}
