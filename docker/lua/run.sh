mkdir "$CODEDIR" && cd "$CODEDIR"

printf %s "$1" > program.lua
lua5.3 program.lua || true

cd .. && rm -rf "$CODEDIR"
