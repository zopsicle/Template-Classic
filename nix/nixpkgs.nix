let
    tarball = fetchTarball {
        url = "https://github.com/NixOS/nixpkgs/archive/8c09536ef10e72c9421c05403c68134480ba7fde.tar.gz";
        sha256 = "1kf8dl583lbabw93lpc4m5f62pqsip870d8n8hgw06s8898l7mkp";
    };
in
    {}:
    import tarball {
        config = {
            packageOverrides = pkgs:
                { perl6-on-nix = pkgs.callPackage ./perl6-on-nix.nix {}; } //
                import ./rakudo-nix.nix pkgs;
        };
    }
