; Vim key bindings for IE
; released under GPLv2
; contact author : cqwyrm at gmail dot com


#IfWinActive ahk_class IEFrame ; works ONLY if IE is active
{

; Mode Switching
Esc:: Suspend ; toggle Vim/Normal mode

; Tabs
b:: send ^9 ; switch to last tab
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

g:: ; switch to a specific tab N ("N" is a number between 1 and 8)
input, num, L1
if num between 1 and 8
	send ^%num%
return

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
Suspend on ;  back to Normal mode
return ;


; Address Bar
o:: 
send !d ; edit url address
Suspend on ;  switch to Normal mode
return ;

; Bookmars
a:: ^d ; add bookmark
}
