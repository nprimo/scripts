# scirpts

A repo to store some useful scripts that can be bind to some keyboard
shortcuts.

## Available scripts

### focus_on

A script to focus on a specific app. To be used, the scripts need one argument:
the name of the app in the `X Window Manager`.

Here below a general example to launch the script:

```console $ ./focus_on.sh <X Window Manager name of the app> $ ```

## prettify

A script to format the passed files as arguments. It assumes that `prettier`
npm module is already installed. The final result is a `prettier` formatted
document with only H2 or below.

## docker_clean

A script to remove all docker containers and all docker images with `<none>` as
name or TAG.

## get_gitignore

A script to retrieve the GitHub `.gitignore` template of the chosen language.
The script `_get_gitignore.sh` can be used to enable autocomplete. Either run
`source _get_gitignore.sh` or place it in the directory
`/etc/bash_completion.d/`.
