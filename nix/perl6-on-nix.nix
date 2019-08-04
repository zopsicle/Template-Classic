let
    tarball = fetchTarball {
        url = "https://github.com/chloekek/cp6t/archive/63975f226039f996941d99ecdb079ef92c8ff820.tar.gz";
        sha256 = "0a0pbdajqx1wp55jfi6khy6wflhspmhf07yqakn1rqhhjhgffhq7";
    };
in
    import (tarball + "/perl6-on-nix")
