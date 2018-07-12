{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "doctest";
          version = "0.4.2";
        };
        license = "MIT";
        copyright = "(c) 2009-2011 Simon Hengel";
        maintainer = "simon.hengel@wiktory.org";
        author = "Simon Hengel";
        homepage = "https://github.com/sol/doctest-haskell#readme";
        url = "";
        synopsis = "Test interactive Haskell examples";
        description = "The doctest program checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).\n\nDocumentation is at <https://github.com/sol/doctest-haskell#readme>.";
        buildType = "Simple";
      };
      components = {
        "doctest" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.haddock
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.HUnit
            hsPkgs.process
          ];
        };
        exes = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.haddock
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.HUnit
              hsPkgs.process
            ];
          };
        };
      };
    }