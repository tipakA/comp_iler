mkdir "$CODEDIR" && cd "$CODEDIR"

export GOCACHE=/tmp/"$CODEDIR"/cache
printf %s "$1" > program.go
go run program.go

cd .. && rm -rf "$CODEDIR"
