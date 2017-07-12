cmd=tmux # tmux path                                                                                                                  
session=develop   # session name                                                                                                      
                                                                                                                                      
if [ -z $cmd ]; then                                                                                                                  
  echo "You need to install tmux."                                                                                                    
  exit 1                                                                                                                              
fi                                                                                                                                    
$cmd new-session -s $session -n dev -d                                                                                                
$cmd select-window -t $session:1                                                                                                      
$cmd selectp -t $session:1.1    #选中第0个窗格                                                                                        
$cmd splitw -t $session:1.1 -h -p 20  #将其分成左右两个                                                                               
$cmd selectp -t $session:1.2 #选中第二个                                                                                              
$cmd splitw -t $session:1.2 -v -p 50 #将其分为上下两个.                                                                               
$cmd selectp -t $session:1.2                                                                                                          
$cmd send-keys -t $session:1.2 'cd  /go/path/src/loyocloud-oa' C-m                                                                    
$cmd send-keys -t $session:1.2 'bee run' C-m                                                                                          
$cmd selectp -t $session:1.3                                                                                                          
$cmd send-keys -t $session:1.3 'cd /go/path/src/loyocloud-account' C-m                                                                
$cmd send-keys -t $session:1.3 'bee run' C-m                                                                                          
$cmd selectp -t $session:1.1     #选中第一个，也就是左边那个                                                                          
$cmd send-keys -t $session:1.1 'cd /go/path/src/loyocloud-oa' C-m                                                                     
$cmd attach -t $session                                                                                                               
                                                                                                                                      
exit 0
