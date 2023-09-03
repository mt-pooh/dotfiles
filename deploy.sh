
dotfiles=(zsh/.zshrc zsh/.zsh_abbr)
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# ホームディレクトリ直下にシンボリックリンクを作成する
for file in "${dotfiles[@]}"; do
        ln -svf $SCRIPT_DIR/$file ~/
done
