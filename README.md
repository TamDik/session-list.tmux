# session-list.tmux

tmux plugin showing session list in tmux status line

## Installation with Tmux Plugin Manager (recommended)

Add plugin to the list of TPM plugins in .tmux.conf:

```
set -g @plugin 'TamDik/session-list.tmux'
```

Hit `prefix + I` to fetch the plugin and source it.


## Manual Installation

Clone the repo:

```sh
git clone https://github.com/TamDik/session-list.git  ~/clone/path
```

Add this line to the bottom of .tmux.conf:

```
run-shell ~/clone/path/session-list.tmux
```

Reload TMUX environment with `tmux source-file ~/.tmux.conf`.


## Usage

To display the session list in the tmux status line, add `#{Sessions}`.

```
set -g status-left "#{Sessions}"
```

For short form, use `#{sessions}`.
