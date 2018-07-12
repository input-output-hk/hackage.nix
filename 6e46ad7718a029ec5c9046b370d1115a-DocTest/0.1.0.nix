{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "DocTest";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "simon.hengel@wiktory.org";
        author = "Simon Hengel";
        homepage = "http://haskell.org/haskellwiki/DocTest";
        url = "";
        synopsis = "Test interactive Haskell examples";
        description = "DocTest checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).\n\nDocumentation is at <http://haskell.org/haskellwiki/DocTest>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.haddock
              hsPkgs.ghc-paths
              hsPkgs.ghc
            ];
          };
        };
      };
    }