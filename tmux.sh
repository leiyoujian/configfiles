cmd=tmux # tmux path                                                                                                                   │duplicate session: develop
session=develop   # session name                                                                                                       │usage: select-pane [-DdegLlMmRU] [-P style] [-t target-pane]
                                                                                                                                       │can't find window 2
if [ -z $cmd ]; then                                                                                                                   │can't find window 2
  echo "You need to install tmux."                                                                                                     │can't find window 2
  exit 1                                                                                                                               │can't find window 2
fi                                                                                                                                     │can't find window 3
$cmd new-session -s $session -n dev -d                                                                                                 │can't find window 3
$cmd select-window -t $session:1                                                                                                       │can't find window 3
$cmd selectp -t $session:1.1    #选中第0个窗格                                                                                         │usage: select-pane [-DdegLlMmRU] [-P style] [-t target-pane]
$cmd splitw -t $session:1.1 -h -p 20  #将其分成左右两个                                                                                │.tmux % tmux ls
$cmd selectp -t $session:1.2 #选中第二个                                                                                               │1: 1 windows (created Tue Jul 11 14:50:04 2017) [270x58] (attached)
$cmd splitw -t $session:1.2 -v -p 50 #将其分为上下两个.                                                                                │develop: 1 windows (created Tue Jul 11 14:46:45 2017) [270x58]
$cmd selectp -t $session:1.2                                                                                                           │.tmux % tmux kill develop
$cmd send-keys -t $session:1.2 'cd  /go/path/src/loyocloud-oa' C-m                                                                     │ambiguous command: kill, could be: kill-pane, kill-server, kill-session, kill-window
$cmd send-keys -t $session:1.2 'bee run' C-m                                                                                           │.tmux % tmux kill-session develop
$cmd selectp -t $session:1.3                                                                                                           │usage: kill-session [-aC] [-t target-session]
$cmd send-keys -t $session:1.3 'cd /go/path/src/loyocloud-account' C-m                                                                 │.tmux % tmux kill-session -t develop
$cmd send-keys -t $session:1.3 'bee run' C-m                                                                                           │.tmux % ls
$cmd selectp -t $session:1.1     #选中第一个，也就是左边那个                                                                           │dev.sh    devlayout mylayout  plugins
$cmd send-keys -t $session:1.1 'cd /go/path/src/loyocloud-oa' C-m                                                                      │.tmux % tmux ls
$cmd attach -t $session                                                                                                                │1: 1 windows (created Tue Jul 11 14:50:04 2017) [270x58] (attached)
                                                                                                                                       │.tmux % tmux selectp -t 1
exit 0                                                                                                                                 │.tmux % tmux ls
~
