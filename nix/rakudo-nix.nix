let
    tarball = fetchTarball {
        url = "https://github.com/chloekek/rakudo-nix/archive/2019.07.tar.gz";
        sha256 = "0662d8msz3vs1g6slr9agx8lbginhf0pfq4h9ywmh9q27fvaplr0";
    };
in
    import tarball
