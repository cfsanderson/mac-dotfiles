# TODO

## High Priority

- [ ] **Security review → make repo public** — currently private pending a check for any PII or tokens that shouldn't be committed
- [ ] **Track `~/.oh-my-zsh/custom/aliases.zsh`** — this is the *active* aliases file (auto-loaded by oh-my-zsh) but it's not in the stow repo. The stowed `zsh/.config/zsh/aliases.zsh` exists but isn't sourced. Either consolidate into one file or add an `ohmyzsh` stow package.
- [ ] **Add `brew services start mpd` to `install.sh`** — MPD won't autostart on a fresh install without this

## Medium Priority

- [ ] **Add nvim clone step to `install.sh`** — `~/.config/nvim/` is a [separate repo](https://github.com/cfsanderson/kickstart-cfs.nvim) and currently requires manual cloning after install
- [ ] **Clean up `~/.config/cmus/`** — replaced by MPD + rmpc, just runtime data sitting around
- [ ] **Test full fresh-install flow** — clone repo on a clean machine (or VM) and run `install.sh` end-to-end to verify everything works

## Low Priority / Future

- [ ] **Learn and configure `op` (1Password CLI)** — `~/.config/op/` is untracked; worth adding once familiar with the workflow
- [ ] **Consider a `nvim` stow package or submodule** — would make `install.sh` fully self-contained
- [ ] **Add Kitty vs Ghostty decision** — both are installed; pick a primary or document the difference in use case
