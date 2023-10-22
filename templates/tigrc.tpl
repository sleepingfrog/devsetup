set main-view   = id date author:full commit-title:graph=yes,refs=yes
set blame-view  = date:default author:email-user id:yes,color line-number:yes,interval=1 text
set pager-view  = line-number:yes,interval=1 text
set stage-view  = line-number:yes,interval=1 text
set log-view    = line-number:yes,interval=1 text
set blob-view   = line-number:yes,interval=1 text
set diff-view   = line-number:yes,interval=1 text:yes,commit-title-overflow=no

set line-graphics = utf-8
# editorにline-numberを渡す
set editor-line-number = yes
# marge commit の表示を変えたい
set diff-options = -m --first-parent

set tab-size     = 2
set ignore-space = at-eol
set refresh-mode = auto

set diff-highlight = true

bind generic  g        move-first-line
bind generic  E        view-grep
bind generic  G        move-last-line
bind main     G        move-last-line

bind generic  <Ctrl-f> move-page-down
bind generic  <Ctrl-b> move-page-up
bind generic  H        scroll-left
bind generic  L        scroll-right
bind main F ?!git commit --fixup %(commit)
bind main _ ?!git rebase -i %(commit)
