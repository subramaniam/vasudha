" Highlight rows longer than 80 characters
function ToggleOverLengthHi()
    if exists("b:overlengthhi") && b:overlengthhi
        highlight clear OverLength
        let b:overlengthhi = 0
        echo "overlength hilight off"
    else
        " adjust colors/styles as desired
        highlight OverLength ctermbg=darkred gui=undercurl guisp=blue
        " change '81' to be 1+(number of columns)
        match OverLength /\%81v.\+/
        let b:overlengthhi = 1
        echo "overlength hilight on"
    endif
endfunction
