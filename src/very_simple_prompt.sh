## EDIT THESE -------------------------------------------------------

transition=""

## FIRST PART
fp_background=92
fp_foreground=43
fp_subject="\t"
## SECOND PART
sp_background=43
sp_foreground=54
sp_subject="\u@\H"
## THIRS PART
tp_background=8
tp_foreground=15
tp_subject="\W"
## FOURTH PART
fo_background=15
fo_foreground=16
fo_subject="\$"

#----------------------------------------------------------------------------

swclr() {
    local bg="\[\e[48;5;${1}m\]"
    local fg="\[\e[38;5;${2}m\]"
    local prevbg="\[\e[38;5;${3}m\]"
    local trans="$4"
    local subj="$5"

    local result="${prevbg}${bg}${trans}${fg} ${subj} "
    echo "$result"
}

reset="\[\e[0m\]"
backspace="\[\e[1D\]"

bgt="\e[48;5;"
fgt="\e[38;5;"

bold="\e[1m"
endbold="\e[22m"

defaultfg="\[\e[39m\]"
defaultbg="\[\e[49m\]"

first_part="\[${bgt}${fp_background}m\]\[${fgt}${fp_foreground}m\] ${fp_subject} "
second_part=$(swclr ${sp_background} ${sp_foreground} ${fp_background} ${transition} ${sp_subject})
third_part=$(swclr ${tp_background} ${tp_foreground} ${sp_background} ${transition} ${tp_subject})
fourth_part=$(swclr ${fo_background} ${fo_foreground} ${tp_background} ${transition} ${fo_subject})
outro="${defaultbg}\[${fgt}${fo_background}m\]${transition}${reset}"

export PS1="${first_part}${second_part}${third_part}${fourth_part}${backspace}${outro} "

unset -f swclr
