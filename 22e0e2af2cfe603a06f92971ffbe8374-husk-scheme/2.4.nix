{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "husk-scheme";
          version = "2.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Justin Ethier <github.com/justinethier>";
        author = "Justin Ethier";
        homepage = "https://github.com/justinethier/husk-scheme";
        url = "";
        synopsis = "R5RS Scheme interpreter program and library.";
        description = "A dialect of R5RS Scheme written in Haskell. Provides advanced\nfeatures including continuations, hygienic macros, and the\nfull numeric tower.";
        buildType = "Simple";
      };
      components = {
        husk-scheme = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskeline
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.directory
          ];
        };
        exes = {
          huski = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.haskeline
              hsPkgs.haskell98
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.directory
            ];
          };
        };
      };
    }