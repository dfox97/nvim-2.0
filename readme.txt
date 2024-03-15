Tmux config for development 

Copy the tmux.conf file to your home directory

```bash
cp tmux.conf ~/.tmux.conf
```

Install tmux plugin manager

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Install tmuxifier

```bash
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
```

Set up tmuxifier

```bash
export PATH="$HOME/.tmuxifier/bin:$PATH"

# in your ~/.bash_profile or ~/.zshrc or ~/.profile
eval "$(tmuxifier init -)"




```
