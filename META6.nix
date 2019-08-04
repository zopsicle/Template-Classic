{lib, perl6-on-nix}:
perl6-on-nix.mkDerivation {
    name = "Template::Classic";
    src = lib.cleanSource ./.;
    depends = [
    ];
    provides = {
        "Template::Classic" = "lib/Template/Classic.pm6";
    };
}
