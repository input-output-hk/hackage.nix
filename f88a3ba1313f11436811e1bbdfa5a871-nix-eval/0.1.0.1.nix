{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nix-eval";
          version = "0.1.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "chriswarbo@gmail.com";
        author = "Chris Warburton";
        homepage = "http://chriswarbo.net/git/nix-eval";
        url = "";
        synopsis = "Evaluate Haskell expressions using Nix to get packages";
        description = "Evaluate Haskell expressions using Nix to get packages";
        buildType = "Simple";
      };
      components = {
        nix-eval = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.nix-eval
            ];
          };
        };
      };
    }