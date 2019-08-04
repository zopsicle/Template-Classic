let
    tarball = fetchTarball {
        url = "https://github.com/chloekek/cp6t/archive/44822968e895abcfeb5309d30bfc30c105b8fdee.tar.gz";
        sha256 = "08a24m22ndz3ck4lcg8k2azkx5pr7n66qf9k7l63s471dc07cmmj";
    };
in
    import (tarball + "/perl6-on-nix")
