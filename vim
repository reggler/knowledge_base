#use VIM registers
"ky (to yank selection into register k)
"kp (yo paste what's been yanked into register k)
------------------

#switch between vertical & horizontal splits
ctrl-w  shift H (to vertical)
ctrl-w  shift K (to horizontal)
------------------

# save file as root
:w !sudo tee %
------------------

#search and replace
:%s/foo/bar/g
to remove Winsdows line endings (^M) use:
 \r or CTRL-v + CTRL-m
------------------

#enforce syntax coloring
:set syntax=c
#switch from vertical split to horizontal split
ctrl-w K
#switch from horizontal split to vertical split
ctrl-w H
------------------

#Open bash in vim split
:ConqueTerm bash
------------------

#use word under cursor in command line (http://vimdoc.sourceforge.net/htmldoc/cmdline.html#c_CTRL-R_CTRL-W)
CTRL-r CTRL-w				*c_CTRL-R_CTRL-W* *c_<C-R>_<C-W>*

CTRL-r CTRL-a				*c_CTRL-R_CTRL-A* *c_<C-R>_<C-A>*
		Insert the object under the cursor:
			CTRL-f	the Filename under the cursor
			CTRL-p	the Filename under the cursor, expanded with
				'path' as in |gf|
			CTRL-w	the Word under the cursor
			CTRL-a	the WORD under the cursor; see |WORD|
------------------

#list loaded plugins in Vim
:scriptnames            : list all plugins, _vimrcs loaded (super)  
:verbose set history?   : reveals value of history and where set  
:function               : list functions  
:func SearchCompl       : List particular function
------------------

# ESC key 
esc key can be duplicated with Ctrl+[
------------------

#Swap top/bottom or left/right split
-------------------------------------
Ctrl+W R

"#reak out current window into a new tabview
--------------------------------------------
Ctrl+W T

#Close every window in the current tabview but the current one
--------------------------------------------------------------
Ctrl+W o

#show line number in status bar
-------------------------------
:set ruler

#display line number
---------------------
set nu!

#display relastive line number
-------------------------------
set rnu!

delete until next chracter w/o char
------------------------------------
dtc 

delete until next chracter with char
-------------------------------------
dfc

replace one word with another
-----------------------------
1 "This first word should overwrite the second"

yiw     yank inner word (copy word under cursor, say "first").
...     Move the cursor to another word (say "second").
viwp    select "second", then replace it with "first". 
