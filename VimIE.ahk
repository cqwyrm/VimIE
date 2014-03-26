; Vim key bindings for IE
; released under GPLv2
; author : cqwyrm


#IfWinActive ahk_class IEFrame ; works ONLY in IE
{
; Mode Switching
Esc:: Suspend ; toggle Vim/Normal mode

; Tabs
c:: send ^k ; duplicate current tab
d:: send ^w ; close a tab
n:: send ^{tab} ; next tab
p:: send ^+{tab} ; previous tab
u:: send ^+t ; restore the last closed tab
x:: send ^{F4} ; close all other tabs
r:: send {F5} ; refresh tab
t:: 
send ^t ; open new tab
Suspend on ; back to Normal mode
return ;

; Browsing
h:: send !{left} ; back in history
l:: send !{right} ; forword in history
j:: send {down} ; move down
k:: send {up} ;  move up
w:: send {home} ; go top of page
s:: send {end} ; go bottom  of page


; Search
/:: 
send ^f ; search in page
Suspend on ; Edit mode on
return ;


; Address Bar
g:: 
send !d ; edit url address
Suspend on ;  switch to Normal mode
return ;

}
