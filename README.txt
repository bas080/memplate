NAME
    memplate - command line tool for (code) templating.

SYNOPSIS
    memplate [alias]

DESCRIPTION
    Memplate is a command line tool for templating.

    It introduces a minimal syntax and has sane defaults that make weaving
    code easier by respecting code indentation.

EXAMPLES
    Defining the alias will store the stdin to that alias.

        echo hello | memplate hello
        echo world | memplate world

    The template is rendered when the alias is not defined.

        echo '<hello
        <world' | memplate

    The rendered result:

        hello
        world

ISSUES
    Some known issues are:

    *   Does not support escaping the `<` yet.

    *   Does not allow changing the `<` prefix. This might be convenient
        when working with certain languages like HTML.

    Unknown issues and bugs can be reported over at
    https://github.com/bas080/memplate/issues.

AUTHOR
    Written by Bassim Huis.

