# Very Simple Prompt

this is just, as the title says, a very simple bash prompt customization script.

As an example, here's how mine looks

![an image of a bash prompt customized with this script](./src/ex.png)

# Install

To begin using the script just run the following command to download the file
```bash
wget https://raw.githubusercontent.com/MegaLime0/Very-Simple-Prompt/main/src/very_simple_prompt.sh
```

After you have the file put it anywhere you'd like, i recommend storing it in the `$HOME/.config/` Folder
```bash
mv very_simple_prompt.sh $HOME/.config/
```

And now all that's left is to just source the file in your .bashrc
```bash
# you can add this to the bottom of .bashrc
# also, if you put the script somewhere else
# replace the $HOME/.config/very_simple_prompt.sh with the path to the script
source $HOME/.config/very_simple_prompt.sh
```
Thas it! To see the changes either re-open your terminal or run
```bash
source $HOME/.bashrc
```

# Configuration

To configure the script you can just open it in your favourite text editor
and change these values

