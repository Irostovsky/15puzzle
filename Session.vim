let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
map <NL> :FuzzyFinderBuffer
map  :FuzzyFinderFile
map  :FuzzyFinderTextMate
xmap S <Plug>VSurround
vmap [% [%m'gv``
map \d :execute 'NERDTreeToggle ' . getcwd() 
nnoremap \s :%s/\<\>/
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <S-Insert> <MiddleMouse>
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
map <silent> î :cn 
map <silent> ð :cp 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autowrite
set backspace=2
set cindent
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set clipboard=autoselect,exclude:cons\\|linux,unnamed
set completefunc=syntaxcomplete#Complete
set confirm
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=tcqr
set helplang=en
set incsearch
set laststatus=2
set listchars=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set mouse=r
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftwidth=2
set showmatch
set smarttab
set softtabstop=2
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=2
set termencoding=utf-8
set timeoutlen=250
set window=37
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/15puzzle
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +5 app/models/puzzle.rb
badd +7 spec/models/puzzle_spec.rb
badd +0 spec/models/puzzle_spec_new.rb
args ~/Projects/15puzzle
edit app/models/puzzle.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 77 + 77) / 155)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 77 + 77) / 155)
exe '3resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 155)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
map <buffer> <silent> <Plug>RailsTabFind :RTfind
map <buffer> <silent> <Plug>RailsVSplitFind :RVfind
map <buffer> <silent> <Plug>RailsSplitFind :RSfind
map <buffer> <silent> <Plug>RailsFind :REfind
map <buffer> <silent> <Plug>RailsRelated :R
map <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=:0,p0,t0
setlocal cinwords=if,else,while,do,for,switch,case
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%D(in\\\ %f),%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Failure:,%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Error:,%+A'%.%#'\\\ FAILED,%C%.%#(eval)%.%#,%C-e:%.%#,%C%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%C%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%C%.%#/vendor/rails/%.%#,%C\\\ %\\\\+On\\\ line\\\ #%l\\\ of\\\ %f,%CActionView::TemplateError:\\\ compile\\\ error,%Ctest_%.%#(%.%#):%#,%C%.%#\\\ [%f:%l]:,%C\\\ \\\ \\\ \\\ [%f:%l:%.%#,%C\\\ \\\ \\\ \\\ %f:%l:%.%#,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#]:,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#,%Z%f:%l:\\\ %#%m,%Z%f:%l:,%C%m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ %m,%-G%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%-G%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%-G%.%#/vendor/rails/%.%#,%-G%.%#%\\\\d%\\\\d:%\\\\d%\\\\d:%\\\\d%\\\\d%.%#,%-G%\\\\s%#from\\\ %.%#,%f:%l:\\\ %#%m,%-G%.%#
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=rake
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Projects/15puzzle,~/Projects/15puzzle/app/controllers,~/Projects/15puzzle/app,~/Projects/15puzzle/app/models,~/Projects/15puzzle/app/helpers,~/Projects/15puzzle/config,~/Projects/15puzzle/lib,~/Projects/15puzzle/vendor,~/Projects/15puzzle/vendor/plugins/*/lib,~/Projects/15puzzle/test/unit,~/Projects/15puzzle/test/functional,~/Projects/15puzzle/test/integration,~/Projects/15puzzle/app/apis,~/Projects/15puzzle/app/services,~/Projects/15puzzle/test,/vendor/plugins/*/test,~/Projects/15puzzle/vendor/rails/*/lib,~/Projects/15puzzle/vendor/rails/*/test,~/Projects/15puzzle/spec,~/Projects/15puzzle/spec/*,/usr/local/lib/site_ruby/1.8,/usr/local/lib/site_ruby/1.8/i486-linux,/usr/local/lib/site_ruby/1.8/i386-linux,/usr/local/lib/site_ruby,/usr/lib/ruby/vendor_ruby/1.8,/usr/lib/ruby/vendor_ruby/1.8/i486-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.8,/usr/lib/ruby/1.8/i486-linux,/usr/lib/ruby/1.8/i386-linux,,~/.gem/ruby/1.8/gems/actionmailer-2.0.2/lib,~/.gem/ruby/1.8/gems/actionmailer-2.2.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.0.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.2.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.0.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.2.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.0.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.2.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.0.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.2.2/lib,~/.gem/ruby/1.8/gems/bcrypt-ruby-2.0.5/lib,~/.gem/ruby/1.8/gems/capistrano-2.5.9/lib,~/.gem/ruby/1.8/gems/cgi_multipart_eof_fix-2.5.0/lib,~/.gem/ruby/1.8/gems/chronic-0.2.3/lib,~/.gem/ruby/1.8/gems/daemons-1.0.10/lib,~/.gem/ruby/1.8/gems/data_mapper-0.9.11/lib,~/.gem/ruby/1.8/gems/dm-cli-0.9.11/lib,~/.gem/ruby/1.8/gems/dm-core-0.9.11/lib,~/.gem/ruby/1.8/gems/dm-is-tree-0.9.11/lib,~/.gem/ruby/1.8/gems/do_postgres-0.9.12/lib,~/.gem/ruby/1.8/gems/fastthread-1.0.7/lib,~/.gem/ruby/1.8/gems/gem_plugin-0.2.3/lib,~/.gem/ruby/1.8/gems/hoe-2.3.2/lib,~/.gem/ruby/1.8/gems/integrity-0.1.11/lib,~/.gem/ruby/1.8/gems/javan-whenever-0.3.6/lib,~/.gem/ruby/1.8/gems/mislav-will_paginate-2.3.11/lib,~/.gem/ruby/1.8/gems/mongrel-1.1.5/lib,~/.gem/ruby/1.8/gems/net-ssh-2.0.15/lib,~/.gem/ruby/1.8/gems/rack-1.0.0/lib,~/.gem/ruby/1.8/gems/rails-2.0.2/lib,~/.gem/ruby/1.8/gems/rails-2.2.2/lib,~/.gem/ruby/1.8/gems/rubyforge-1.0.4/lib,~/.gem/ruby/1.8/gems/sinatra-0.9.4/lib,~/.gem/ruby/1.8/gems/sinatra-authorization-1.0.0/lib,~/.gem/ruby/1.8/gems/uuidtools-2.0.0/lib,/usr/lib/ruby/gems/1.8/gems/ParseTree-3.0.4/lib,/usr/lib/ruby/gems/1.8/gems/ParseTree-3.0.4/test,/usr/lib/ruby/gems/1.8/gems/RedCloth-4.2.2/ext,/usr/lib/ruby/gems/1.8/gems/RedCloth-4.2.2/lib,/usr/lib/ruby/gems/1.8/gems/RedCloth-4.2.2/lib/case_sensitive_require,/usr/lib/ruby/gems/1.8/gems/RubyInline-3.8.2/lib,/usr/lib/ruby/gems/1.8/gems/VimMate-0.6.6/lib,/usr/lib/ruby/gems/1.8/gems/ZenTest-4.1.3/lib,/usr/lib/ruby/gems/1.8/gems/abstract-1.0.0/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/actionpack-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/actionpack-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/activerecord-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/activerecord-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/activeresource-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/activeresource-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/activesupport-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/activesupport-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/addressable-2.0.2/lib,/usr/lib/ruby/gems/1.8/gems/builder-2.1.2/lib,/usr/lib/ruby/gems/1.8/gems/capistrano-2.5.8/lib,/usr/lib/ruby/gems/1.8/gems/configuration-0.0.5/lib,/usr/lib/ruby/gems/1.8/gems/crack-0.1.4/lib,/usr/lib/ruby/gems/1.8/gems/cucumber-0.3.90/lib,/usr/lib/ruby/gems/1.8/gems/data_objects-0.9.12/lib,/usr/lib/ruby/gems/1.8/gems/diff-lcs-1.1.2/lib,/usr/lib/ruby/gems/1.8/gems/dm-aggregates-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-core-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-is-remixable-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-migrations-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-observer-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-serializer-0.9.11/lib,/usr/lib/ruby/gems/1.8/gem
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{RailsStatusline()}%=%-16(\ %l,%c-%v\ %)%P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=./tags,./TAGS,tags,TAGS,~/Projects/15puzzle/tags,~/Projects/15puzzle/.tags
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 04l
lcd ~/Projects/15puzzle
wincmd w
argglobal
edit ~/Projects/15puzzle/spec/models/puzzle_spec_new.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
map <buffer> <silent> <Plug>RailsTabFind :RTfind
map <buffer> <silent> <Plug>RailsVSplitFind :RVfind
map <buffer> <silent> <Plug>RailsSplitFind :RSfind
map <buffer> <silent> <Plug>RailsFind :REfind
map <buffer> <silent> <Plug>RailsRelated :R
map <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=:0,p0,t0
setlocal cinwords=if,else,while,do,for,switch,case
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%D(in\\\ %f),%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Failure:,%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Error:,%+A'%.%#'\\\ FAILED,%C%.%#(eval)%.%#,%C-e:%.%#,%C%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%C%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%C%.%#/vendor/rails/%.%#,%C\\\ %\\\\+On\\\ line\\\ #%l\\\ of\\\ %f,%CActionView::TemplateError:\\\ compile\\\ error,%Ctest_%.%#(%.%#):%#,%C%.%#\\\ [%f:%l]:,%C\\\ \\\ \\\ \\\ [%f:%l:%.%#,%C\\\ \\\ \\\ \\\ %f:%l:%.%#,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#]:,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#,%Z%f:%l:\\\ %#%m,%Z%f:%l:,%C%m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ %m,%-G%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%-G%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%-G%.%#/vendor/rails/%.%#,%-G%.%#%\\\\d%\\\\d:%\\\\d%\\\\d:%\\\\d%\\\\d%.%#,%-G%\\\\s%#from\\\ %.%#,%f:%l:\\\ %#%m,%-G%.%#
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=rake
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Projects/15puzzle,~/Projects/15puzzle/app/controllers,~/Projects/15puzzle/app,~/Projects/15puzzle/app/models,~/Projects/15puzzle/app/helpers,~/Projects/15puzzle/config,~/Projects/15puzzle/lib,~/Projects/15puzzle/vendor,~/Projects/15puzzle/vendor/plugins/*/lib,~/Projects/15puzzle/test/unit,~/Projects/15puzzle/test/functional,~/Projects/15puzzle/test/integration,~/Projects/15puzzle/app/apis,~/Projects/15puzzle/app/services,~/Projects/15puzzle/test,/vendor/plugins/*/test,~/Projects/15puzzle/vendor/rails/*/lib,~/Projects/15puzzle/vendor/rails/*/test,~/Projects/15puzzle/spec,~/Projects/15puzzle/spec/*,/usr/local/lib/site_ruby/1.8,/usr/local/lib/site_ruby/1.8/i486-linux,/usr/local/lib/site_ruby/1.8/i386-linux,/usr/local/lib/site_ruby,/usr/lib/ruby/vendor_ruby/1.8,/usr/lib/ruby/vendor_ruby/1.8/i486-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.8,/usr/lib/ruby/1.8/i486-linux,/usr/lib/ruby/1.8/i386-linux,,~/.gem/ruby/1.8/gems/actionmailer-2.0.2/lib,~/.gem/ruby/1.8/gems/actionmailer-2.2.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.0.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.2.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.0.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.2.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.0.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.2.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.0.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.2.2/lib,~/.gem/ruby/1.8/gems/bcrypt-ruby-2.0.5/lib,~/.gem/ruby/1.8/gems/capistrano-2.5.9/lib,~/.gem/ruby/1.8/gems/cgi_multipart_eof_fix-2.5.0/lib,~/.gem/ruby/1.8/gems/chronic-0.2.3/lib,~/.gem/ruby/1.8/gems/daemons-1.0.10/lib,~/.gem/ruby/1.8/gems/data_mapper-0.9.11/lib,~/.gem/ruby/1.8/gems/dm-cli-0.9.11/lib,~/.gem/ruby/1.8/gems/dm-core-0.9.11/lib,~/.gem/ruby/1.8/gems/dm-is-tree-0.9.11/lib,~/.gem/ruby/1.8/gems/do_postgres-0.9.12/lib,~/.gem/ruby/1.8/gems/fastthread-1.0.7/lib,~/.gem/ruby/1.8/gems/gem_plugin-0.2.3/lib,~/.gem/ruby/1.8/gems/hoe-2.3.2/lib,~/.gem/ruby/1.8/gems/integrity-0.1.11/lib,~/.gem/ruby/1.8/gems/javan-whenever-0.3.6/lib,~/.gem/ruby/1.8/gems/mislav-will_paginate-2.3.11/lib,~/.gem/ruby/1.8/gems/mongrel-1.1.5/lib,~/.gem/ruby/1.8/gems/net-ssh-2.0.15/lib,~/.gem/ruby/1.8/gems/rack-1.0.0/lib,~/.gem/ruby/1.8/gems/rails-2.0.2/lib,~/.gem/ruby/1.8/gems/rails-2.2.2/lib,~/.gem/ruby/1.8/gems/rubyforge-1.0.4/lib,~/.gem/ruby/1.8/gems/sinatra-0.9.4/lib,~/.gem/ruby/1.8/gems/sinatra-authorization-1.0.0/lib,~/.gem/ruby/1.8/gems/uuidtools-2.0.0/lib,/usr/lib/ruby/gems/1.8/gems/ParseTree-3.0.4/lib,/usr/lib/ruby/gems/1.8/gems/ParseTree-3.0.4/test,/usr/lib/ruby/gems/1.8/gems/RedCloth-4.2.2/ext,/usr/lib/ruby/gems/1.8/gems/RedCloth-4.2.2/lib,/usr/lib/ruby/gems/1.8/gems/RedCloth-4.2.2/lib/case_sensitive_require,/usr/lib/ruby/gems/1.8/gems/RubyInline-3.8.2/lib,/usr/lib/ruby/gems/1.8/gems/VimMate-0.6.6/lib,/usr/lib/ruby/gems/1.8/gems/ZenTest-4.1.3/lib,/usr/lib/ruby/gems/1.8/gems/abstract-1.0.0/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/actionpack-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/actionpack-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/activerecord-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/activerecord-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/activeresource-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/activeresource-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/activesupport-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/activesupport-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/addressable-2.0.2/lib,/usr/lib/ruby/gems/1.8/gems/builder-2.1.2/lib,/usr/lib/ruby/gems/1.8/gems/capistrano-2.5.8/lib,/usr/lib/ruby/gems/1.8/gems/configuration-0.0.5/lib,/usr/lib/ruby/gems/1.8/gems/crack-0.1.4/lib,/usr/lib/ruby/gems/1.8/gems/cucumber-0.3.90/lib,/usr/lib/ruby/gems/1.8/gems/data_objects-0.9.12/lib,/usr/lib/ruby/gems/1.8/gems/diff-lcs-1.1.2/lib,/usr/lib/ruby/gems/1.8/gems/dm-aggregates-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-core-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-is-remixable-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-migrations-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-observer-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-serializer-0.9.11/lib,/usr/lib/ruby/gems/1.8/gem
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{RailsStatusline()}%=%-16(\ %l,%c-%v\ %)%P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=./tags,./TAGS,tags,TAGS,~/Projects/15puzzle/tags,~/Projects/15puzzle/.tags
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 20 - ((9 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 015l
lcd ~/Projects/15puzzle
wincmd w
argglobal
edit ~/Projects/15puzzle/spec/models/puzzle_spec.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
map <buffer> <silent> <Plug>RailsTabFind :RTfind
map <buffer> <silent> <Plug>RailsVSplitFind :RVfind
map <buffer> <silent> <Plug>RailsSplitFind :RSfind
map <buffer> <silent> <Plug>RailsFind :REfind
map <buffer> <silent> <Plug>RailsRelated :R
map <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=:0,p0,t0
setlocal cinwords=if,else,while,do,for,switch,case
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%D(in\\\ %f),%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Failure:,%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Error:,%+A'%.%#'\\\ FAILED,%C%.%#(eval)%.%#,%C-e:%.%#,%C%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%C%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%C%.%#/vendor/rails/%.%#,%C\\\ %\\\\+On\\\ line\\\ #%l\\\ of\\\ %f,%CActionView::TemplateError:\\\ compile\\\ error,%Ctest_%.%#(%.%#):%#,%C%.%#\\\ [%f:%l]:,%C\\\ \\\ \\\ \\\ [%f:%l:%.%#,%C\\\ \\\ \\\ \\\ %f:%l:%.%#,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#]:,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#,%Z%f:%l:\\\ %#%m,%Z%f:%l:,%C%m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ %m,%-G%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%-G%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%-G%.%#/vendor/rails/%.%#,%-G%.%#%\\\\d%\\\\d:%\\\\d%\\\\d:%\\\\d%\\\\d%.%#,%-G%\\\\s%#from\\\ %.%#,%f:%l:\\\ %#%m,%-G%.%#
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=rake
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Projects/15puzzle,~/Projects/15puzzle/app/controllers,~/Projects/15puzzle/app,~/Projects/15puzzle/app/models,~/Projects/15puzzle/app/helpers,~/Projects/15puzzle/config,~/Projects/15puzzle/lib,~/Projects/15puzzle/vendor,~/Projects/15puzzle/vendor/plugins/*/lib,~/Projects/15puzzle/test/unit,~/Projects/15puzzle/test/functional,~/Projects/15puzzle/test/integration,~/Projects/15puzzle/app/apis,~/Projects/15puzzle/app/services,~/Projects/15puzzle/test,/vendor/plugins/*/test,~/Projects/15puzzle/vendor/rails/*/lib,~/Projects/15puzzle/vendor/rails/*/test,~/Projects/15puzzle/spec,~/Projects/15puzzle/spec/*,/usr/local/lib/site_ruby/1.8,/usr/local/lib/site_ruby/1.8/i486-linux,/usr/local/lib/site_ruby/1.8/i386-linux,/usr/local/lib/site_ruby,/usr/lib/ruby/vendor_ruby/1.8,/usr/lib/ruby/vendor_ruby/1.8/i486-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.8,/usr/lib/ruby/1.8/i486-linux,/usr/lib/ruby/1.8/i386-linux,,~/.gem/ruby/1.8/gems/actionmailer-2.0.2/lib,~/.gem/ruby/1.8/gems/actionmailer-2.2.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.0.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.2.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.0.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.2.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.0.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.2.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.0.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.2.2/lib,~/.gem/ruby/1.8/gems/bcrypt-ruby-2.0.5/lib,~/.gem/ruby/1.8/gems/capistrano-2.5.9/lib,~/.gem/ruby/1.8/gems/cgi_multipart_eof_fix-2.5.0/lib,~/.gem/ruby/1.8/gems/chronic-0.2.3/lib,~/.gem/ruby/1.8/gems/daemons-1.0.10/lib,~/.gem/ruby/1.8/gems/data_mapper-0.9.11/lib,~/.gem/ruby/1.8/gems/dm-cli-0.9.11/lib,~/.gem/ruby/1.8/gems/dm-core-0.9.11/lib,~/.gem/ruby/1.8/gems/dm-is-tree-0.9.11/lib,~/.gem/ruby/1.8/gems/do_postgres-0.9.12/lib,~/.gem/ruby/1.8/gems/fastthread-1.0.7/lib,~/.gem/ruby/1.8/gems/gem_plugin-0.2.3/lib,~/.gem/ruby/1.8/gems/hoe-2.3.2/lib,~/.gem/ruby/1.8/gems/integrity-0.1.11/lib,~/.gem/ruby/1.8/gems/javan-whenever-0.3.6/lib,~/.gem/ruby/1.8/gems/mislav-will_paginate-2.3.11/lib,~/.gem/ruby/1.8/gems/mongrel-1.1.5/lib,~/.gem/ruby/1.8/gems/net-ssh-2.0.15/lib,~/.gem/ruby/1.8/gems/rack-1.0.0/lib,~/.gem/ruby/1.8/gems/rails-2.0.2/lib,~/.gem/ruby/1.8/gems/rails-2.2.2/lib,~/.gem/ruby/1.8/gems/rubyforge-1.0.4/lib,~/.gem/ruby/1.8/gems/sinatra-0.9.4/lib,~/.gem/ruby/1.8/gems/sinatra-authorization-1.0.0/lib,~/.gem/ruby/1.8/gems/uuidtools-2.0.0/lib,/usr/lib/ruby/gems/1.8/gems/ParseTree-3.0.4/lib,/usr/lib/ruby/gems/1.8/gems/ParseTree-3.0.4/test,/usr/lib/ruby/gems/1.8/gems/RedCloth-4.2.2/ext,/usr/lib/ruby/gems/1.8/gems/RedCloth-4.2.2/lib,/usr/lib/ruby/gems/1.8/gems/RedCloth-4.2.2/lib/case_sensitive_require,/usr/lib/ruby/gems/1.8/gems/RubyInline-3.8.2/lib,/usr/lib/ruby/gems/1.8/gems/VimMate-0.6.6/lib,/usr/lib/ruby/gems/1.8/gems/ZenTest-4.1.3/lib,/usr/lib/ruby/gems/1.8/gems/abstract-1.0.0/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/actionpack-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/actionpack-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/activerecord-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/activerecord-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/activeresource-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/activeresource-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/activesupport-2.3.2/lib,/usr/lib/ruby/gems/1.8/gems/activesupport-2.3.3/lib,/usr/lib/ruby/gems/1.8/gems/addressable-2.0.2/lib,/usr/lib/ruby/gems/1.8/gems/builder-2.1.2/lib,/usr/lib/ruby/gems/1.8/gems/capistrano-2.5.8/lib,/usr/lib/ruby/gems/1.8/gems/configuration-0.0.5/lib,/usr/lib/ruby/gems/1.8/gems/crack-0.1.4/lib,/usr/lib/ruby/gems/1.8/gems/cucumber-0.3.90/lib,/usr/lib/ruby/gems/1.8/gems/data_objects-0.9.12/lib,/usr/lib/ruby/gems/1.8/gems/diff-lcs-1.1.2/lib,/usr/lib/ruby/gems/1.8/gems/dm-aggregates-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-core-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-is-remixable-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-migrations-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-observer-0.9.11/lib,/usr/lib/ruby/gems/1.8/gems/dm-serializer-0.9.11/lib,/usr/lib/ruby/gems/1.8/gem
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{RailsStatusline()}%=%-16(\ %l,%c-%v\ %)%P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=./tags,./TAGS,tags,TAGS,~/Projects/15puzzle/tags,~/Projects/15puzzle/.tags
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Projects/15puzzle
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 77 + 77) / 155)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 77 + 77) / 155)
exe '3resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 155)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
