mkdir "$CODEDIR" && cd "$CODEDIR"

printf %s "$1" > program.exs
elixir program.exs || true

cd .. && rm -rf "$CODEDIR"
