"------------------------------------------------------------------------------
"  Description: Filetype plugin file for Btm
"     Language: BTM (Batch to Memory - 4NT, TakeCommand Script)
"          $Id: btm.vim 30 2007-09-26 09:42:07Z krischik@users.sourceforge.net $
"    Copyright: Copyright (C) 2007 Martin Krischik
"   Maintainer: Martin Krischik <krischik@users.sourceforge.net>
"               Bram Moolenaar <Bram@vim.org>
"      $Author: krischik@users.sourceforge.net $
"        $Date: 2007-09-26 11:42:07 +0200 (Mi, 26 Sep 2007) $
"      Version: 1.0
"    $Revision: 30 $
"     $HeadURL: https://vim-scripts.googlecode.com/svn/trunk/4NT%20Bundle/ftplugin/btm.vim $
"      History: 22.11.2007 MK A new Btm Filetype Bundle
"    Help Page: ft-btm-plugin
"------------------------------------------------------------------------------
" btm filetype plugin file

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin") || version < 700
  finish
endif

" Section: File-Option {{{1
"
setlocal encoding=utf-8
setlocal wrap
setlocal smartcase
setlocal ignorecase
setlocal formatoptions-=t formatoptions+=rol

" Section: Comments {{{1
"
setlocal commentstring=::\ %s
setlocal complete=.,w,b,u,t,i
setlocal comments=b:rem,b:@rem,b:REM,b:@REM,b:::

" Section: Define patterns for the browse file filter {{{1
"
if has("gui_win32") && !exists("b:browsefilter")
  let b:browsefilter = "DOS Batch Files (*.bat, *.btm, *.cmd)\t*.bat;*.btm;*.cmd\nAll Files (*.*)\t*.*\n"
endif

" Section: Tagging {{{1
"
setlocal iskeyword+=-

" Section: Completion {{{1
"
setlocal omnifunc=syntaxcomplete#Complete
setlocal completefunc=btm#User_Complete

" Section: Folding {{{1
"
setlocal foldmethod=marker

finish " 1}}}

"vim: set nowrap tabstop=8 shiftwidth=4 softtabstop=4 expandtab :
"vim: set textwidth=0 filetype=vim foldmethod=marker nospell :
