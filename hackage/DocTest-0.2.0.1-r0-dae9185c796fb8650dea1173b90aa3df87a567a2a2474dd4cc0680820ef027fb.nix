{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "DocTest";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "";
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
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haddock)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.HUnit)
            (hsPkgs.process)
          ];
        };
      };
    };
  }