# jq-stuff
Simple scripts and modules for jq (JSON cmdline processor)

The default search path is the search path given to the -L command-line option, else ["~/.jq", "$ORIGIN/../lib/jq", "$ORIGIN/../lib"].

`$ORIGIN` is the dir where the jq  executable resides.

For details, see official documentation https://stedolan.github.io/jq/manual/#Modules
