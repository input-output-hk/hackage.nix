{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Hashell";
          version = "1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "none";
        author = "Luis Francisco Araujo";
        homepage = "";
        url = "";
        synopsis = "Simple shell written in Haskell";
        description = "A simple shell written in Haskell; through the GHC API, it allows\nevaluation of Haskell expressions.\n\nThis works only with old GHCs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hashell" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.haskell98
              hsPkgs.readline
              hsPkgs.parsec
              hsPkgs.regex-compat
              hsPkgs.process
              hsPkgs.ghc
              hsPkgs.directory
            ];
          };
        };
      };
    }