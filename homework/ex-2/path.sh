echo "Текущее значение PATH:"
echo "$PATH"

PATH="$PATH:$1"
echo "Новое значение PATH:"
echo "$PATH"

echo 'export PATH="$PATH"' >> ~/.zshrc

exec zsh

