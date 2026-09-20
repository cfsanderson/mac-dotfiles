# Bootstrap prompt: install catppuccin/tmux

This dotfiles repo does not vendor the `catppuccin/tmux` plugin (see
`tmux/.config/tmux/tmux.conf`'s `.gitignore`d `plugins/` dir) because it needs
a manual install rather than TPM — TPM has a name-conflict issue with this
particular plugin, per upstream's own recommendation.

On a fresh machine, after stowing this repo (so `~/.config/tmux/tmux.conf`
exists) and installing TPM's own plugins (`tmux`, then `prefix + I`), hand
Claude Code the prompt below to finish the job.

---

## Prompt

> My tmux config at `~/.config/tmux/tmux.conf` expects the `catppuccin/tmux`
> plugin at `~/.config/tmux/plugins/catppuccin/tmux`, loaded via a `run`
> command (not TPM — see the comment above that `run` line for why). It
> isn't installed on this machine yet.
>
> Please:
> 1. Find the latest release tag of https://github.com/catppuccin/tmux
> 2. Clone it at that tag into `~/.config/tmux/plugins/catppuccin/tmux`
> 3. Confirm the `run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux`
>    path in my tmux.conf matches where you cloned it
> 4. Reload tmux config (`tmux source-file ~/.config/tmux/tmux.conf` if a
>    server is running) and confirm no errors
>
> The theme colors themselves (the `@thm_*` gruvbox overrides) already live
> in tmux.conf and don't need touching — this is just the plugin install.

---

Last verified working against `catppuccin/tmux` `v2.3.0`.
