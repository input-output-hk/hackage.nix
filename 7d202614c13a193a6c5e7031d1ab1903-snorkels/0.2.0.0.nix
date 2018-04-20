{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snorkels";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "linus@sphalerite.org & contact@unaizalakain.info";
        author = "Linus Heckemann & Unai Zalakain";
        homepage = "";
        url = "";
        synopsis = "Strategic board game of medium complexity";
        description = "Implementation in Haskell of the strategic board game\nSnorkels. Snorkels is often used as a first step when\nteaching people to play Go.";
        buildType = "Simple";
      };
      components = {
        snorkels = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-loops
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.ansi-terminal
            hsPkgs.bimap
            hsPkgs.parsec
            hsPkgs.optparse-applicative
          ];
        };
        exes = {
          snorkels = {
            depends  = [
              hsPkgs.base
              hsPkgs.monad-loops
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.ansi-terminal
              hsPkgs.bimap
              hsPkgs.parsec
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }