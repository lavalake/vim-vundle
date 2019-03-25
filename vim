1. adust window size
    resize -+ 5
    vertical resize -+5
2. set colorscheme
    color jellybeans
3. split window
    sp
4. YCM require python 2.6 support
    install vim.nox
5. eclim
    use eclipse tar.zip, do not use installer
    update jdk to 8
    upgrade vim to 8
6. replace with yanked word
    yiw	Yank inner word (copy word under cursor, say "first").
    ...	Move the cursor to another word (say "second").
    ciw<C-r>0	Change "second", replacing it with "first" (<C-r> is Ctrl-R).
    ...	Move the cursor to another word (say "third").
    .	Change "third", replacing it with "first".
    
7. text object
    http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/
    Words
        aw – a word (includes surrounding white space)
        iw – inner word (does not include surrounding white space)
    Sentences
        as – a sentence
        is – inner sentence
    Paragraphs
        ap – a paragraph
        ip – inner paragraph    
    Strings
        a” – a double quoted string
        i” – inner double quoted string
        a’ – a single quoted string
        i’ – inner single quoted string
        a` – a back quoted string
        i` – inner back quoted string
8. repeat command
    The "." command repeats the last change made in normal mode. For example, if you press dw to delete a word, you can then press . to delete another word (. is dot, aka period or full stop).
    The "@:" command repeats the last command-line change (a command invoked with ":", for example  :s/old/new/).
9. register
    Every register is accessed using a double quote before its name. For example, we can access the content that is in the register r with "r
10. highlight search
    set hlsearch
