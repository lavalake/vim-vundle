function ta ()
{
    #clean older info
    rm -rf tags
    rm -rf cscope.files
    rm -rf cscope.out
    # generate new info
    find $PWD | egrep -i "\.(c|h|cpp|S|py|sh)$" > cscope.files
    ctags -R . *.c *.h *.cpp  *.py *.sh --tag-relative=yes ./
    cscope -q -k -b -i cscope.files
}
