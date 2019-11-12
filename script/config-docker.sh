#/bin/bash

putConfig() {
    # $1 is file name
    #  @path/to/"$1".json is files abs path
    echo "file : path/to/$1.json will be pushed to consul"
    curl -s --request PUT --data-binary @path/to/"$1".json http://consulserver:8500/v1/kv/sass/path/to/you/"$1"
    echo "$?"
    echo "Success"
}
putConfig $1