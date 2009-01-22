use strict;

# Sometimes things break because code that worked with
# certain versions of modules does not work with others. This short
# block just dumps all the modules in use, with their version numbers
# when a script exits. By doing it in an END block you get a realistic
# picture of what got loaded and it will still print if your code dies
# for whatever reason.
# http://perlmonks.com/?node_id=681911

END {
    no strict;    # access $VERSION by symbolic reference
    print map {
        s!/!::!g;
        s!.pm$!!;
        sprintf "%-20s %s\n", $_, ${"${_}::VERSION"}
    } sort keys %INC;
}
