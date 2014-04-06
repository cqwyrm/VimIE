; Vim-like key bindings for IE
; Copyright (C) 2014 cqwyrm
; Contact me: cqwyrm at gmail dot com

; This program is free software; you can redistribute it and/or
; published by the Free Software Foundation; either version 2 of the
; License, or (at your option) any later version.

; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of 
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
; GNU General Public License for more details.
; modify it under the terms of the GNU General Public License as
#NoEnv
#Warn
SetWorkingDir %A_ScriptDir%

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
x:: send !{F4} ; quit IE
r:: send {F5} ; refresh tab

t:: 
	send ^t ; open new tab
	Suspend on ; back to Normal mode
	return ;

g:: ; switch to the "N"th tab ("N" is a number between 1 and 8)
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


;zoom in and out
z::
input, char, L1
if ( char = "i")
	{
	send ^{+}
}
if ( char = "m")
	{
	send ^-
}
return

; Search
/:: 
	send ^f ; search in page
	Suspend on ;  back to Normal mode
	return ;


; Address Bar
o:: 
	send !d ; edit in the address bar
	Suspend on ;  switch to Normal mode
	return ;

q::
    ^e ; open a search query in the address bar
    Suspend on ; enter Normal mode
    return ;

; Bookmarks
a:: ^d ; add bookmark

}
