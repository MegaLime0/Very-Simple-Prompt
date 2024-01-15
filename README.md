# Very Simple Prompt

this is just, as the title says, a very simple bash prompt customization script.

As an example, here's how mine looks

![an image of a bash prompt customized with this script](./src/ex.png)

# Install

To begin using the script just run the following command to download the file
```bash
wget https://raw.githubusercontent.com/MegaLime0/Very-Simple-Prompt/main/src/very_simple_prompt.sh
```

After you have the file, put it anywhere you'd like, i recommend storing it in the `$HOME/.config/` Directiry
```bash
mv very_simple_prompt.sh $HOME/.config/
```

And now all that's left is to just source the file in your '.bashrc'
```bash
# you can add this to the bottom of .bashrc
source $HOME/.config/very_simple_prompt.sh
# also, if you put the script somewhere else
# replace the $HOME/.config/very_simple_prompt.sh with the path to the script
```
Thas it! To see the changes either re-open your terminal or run
```bash
source $HOME/.bashrc
```

# Configuration

To configure the script you can just open it in your favourite text editor
and change these values


```bash
transition=""

## FIRST PART
fp_background=92
fp_foreground=43
fp_subject="\t"
## SECOND PART
sp_background=43
sp_foreground=54
sp_subject="\u@\H"
## THIRD PART
tp_background=8
tp_foreground=15
tp_subject="\W"
## FOURTH PART
fo_background=15
fo_foreground=16
fo_subject="\$"
```
The color values should be between 0 and 256, for reference see this [wikipedia](https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit) page

The transition can be any character or string. here are the 3 most used characters for transitions
```bash
# if you're looking at this in your browser, you'll probably only see a square with weird symbols



```


The subject can be anything from a simple string, to bash escape sequences.
here are a couple for example

```text
\# – This command’s command number
\! – Lists this command’s number in the history
\d – Date (day/month/date)
\D{format} – Use this to call the system to respond with the current time
\t – Time (hour:minute:second)
\@ – Time, 12-hour AM/PM
\A – Time, 24-hour, without seconds
\h – Hostname (short)
\H – Full hostname (domain name)
\j – Number of jobs being managed by the shell
\l – The basename of the shells terminal device
\n – New line
\r – Carriage return
\s – The name of the shell
\u – Current username
\v – BASH version
\V – Extra information about the BASH version
\w – Current working directory ($HOME is represented by ~)
\W – The basename of the working directory ($HOME is represented by ~)
\e – Escape character
```

# End

Thats all there is to this script. It's kinda buggy but works well enough for me, And it might save someone
a headache
