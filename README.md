# scirpts

A repo to store some useful scirpts that can be bind to some keyboard shortcuts.

## Available scripts

### focus_on

A script to focus (or start) a specific app. To be used, the scripts need two
arguments: the binary name and the name of the app in the `X Window Manager`.

Here below a general example to launch the script:

```console
$ ./focus_on.sh <binary of the app> <X Window Manager name of the app>
$
```

## prettify

A script to format the passed files as arguments. It assumes that `prettier`
npm module is already installed.  
The final result is a `prettier` formatted document with only H2 or below.

## To Do

### focus_on

- Split `focus_on` in two different script. Rename it `focus_or_start.sh`.
  It is possible to have a specific map (look how in bash) to link the specific
  binary to the app name in the `launch` (name might change) script.
