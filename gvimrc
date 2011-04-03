
        macmenu &File.New\ Tab key=<nop>
        map <D-t> :CommandT<CR>
if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256

    colorscheme vividchalk
    set guitablabel=%M%t
    set lines=40
    set columns=115

    if has("gui_gnome")
        set term=gnome-256color
        colorscheme vividchalk
        set guifont=Monospace\ Bold\ 12
    endif

    if has("gui_mac") || has("gui_macvim")
        set guifont=Menlo:h14
        " key binding for Command-T to behave properly
        " uncomment to replace the Mac Command-T key to Command-T plugin
        macmenu &File.New\ Tab key=<nop>
        map <D-t> :CommandT<CR>
        " make Mac's Option key behave as the Meta key
        set invmmta
        try
          set transparency=5
        catch
        endtry
    endif

    if has("gui_win32") || has("gui_win32s")
        set guifont=Consolas:h12
        set enc=utf-8
    endif
else
    "dont load csapprox if there is no gui support - silences an annoying warning
    let g:CSApprox_loaded = 1

    "set railscasts colorscheme when running vim in gnome terminal
    if $COLORTERM == 'gnome-terminal'
        set term=gnome-256color
        colorscheme railscasts
    else
        colorscheme default
    endif
endif
