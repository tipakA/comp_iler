if [ "$EVAL_EXPR" = "true" ]; then
    ghc -e "$1"
else
    mkdir "$CODEDIR" && cd "$CODEDIR"

    printf %s "$1" > program.hs
    ghc -e main program.hs

    cd .. && rm -rf "$CODEDIR"
fi
