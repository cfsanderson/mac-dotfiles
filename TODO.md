# TODO

## High Priority

- [x] **Security review → make repo public**
- [x] **Consolidate aliases into `~/.config/zsh/aliases.zsh`** — single stow-managed file, explicitly sourced from `.zshrc`; trashed `~/.oh-my-zsh/custom/aliases.zsh`
- [x] **Add `brew services start mpd` to `install.sh`**

## Medium Priority

- [ ] **Add nvim clone step to `install.sh`** — `~/.config/nvim/` is a [separate repo](https://github.com/cfsanderson/kickstart-cfs.nvim) and currently requires manual cloning after install
- [ ] **Clean up `~/.config/cmus/`** — replaced by MPD + rmpc, just runtime data sitting around
- [ ] **Test full fresh-install flow** — clone repo on a clean machine (or VM) and run `install.sh` end-to-end to verify everything works

## Low Priority / Future

- [ ] **Add VSCode config stow package** — match work machine setup; check what's in `~/.config/` or `~/Library/Application Support/Code/`
- [ ] **Add Cursor config stow package** — Cursor is installed; configs likely live in `~/Library/Application Support/Cursor/`
- [ ] **Switch editor-opening aliases to Cursor** — aliases like `confnv`, `confzsh`, `conftmux`, etc. currently open files in nvim; redirect to `cursor` to build the habit
- [ ] **Learn and configure `op` (1Password CLI)** — `~/.config/op/` is untracked; worth adding once familiar with the workflow
- [ ] **Consider a `nvim` stow package or submodule** — would make `install.sh` fully self-contained
- [ ] **Add Kitty vs Ghostty decision** — both are installed; pick a primary or document the difference in use case
