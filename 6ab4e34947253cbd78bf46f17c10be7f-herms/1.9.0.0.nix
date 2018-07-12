{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "herms";
          version = "1.9.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "jack.c.kiefer@gmail.com";
        author = "Jack Kiefer";
        homepage = "https://github.com/JackKiefer/herms";
        url = "";
        synopsis = "A command-line manager for delicious kitchen recipes";
        description = "HeRM's: a Haskell-based Recipe Manager for delicious kitchen recipes";
        buildType = "Simple";
      };
      components = {
        exes = {
          "herms" = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.directory
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.semigroups
              hsPkgs.split
              hsPkgs.vty
            ];
          };
        };
      };
    }