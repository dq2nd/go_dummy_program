GOPATH="$(pwd)"
export GOPATH=$GOPATH

if [[ ! -d "$GOPATH/bin/" ]]; then
    mkdir -p "$GOPATH/bin/"
fi

if [[ ! -d "$GOPATH/pkg/" ]]; then
    mkdir -p "$GOPATH/pkg/"
fi

go get -v github.com/dq2nd/go_second_dummy_lib
go build -o bin/go_dummy_program github.com/dq2nd/go_dummy_program

