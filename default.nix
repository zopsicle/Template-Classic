let nixpkgs = import ./nix/nixpkgs.nix {}; in
nixpkgs.callPackage ./META6.nix {}
