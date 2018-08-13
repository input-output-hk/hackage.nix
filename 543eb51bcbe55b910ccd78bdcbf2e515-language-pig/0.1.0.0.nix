{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "language-pig";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "elise@jabberwocky.eu";
      author = "Elise Huard";
      homepage = "";
      url = "";
      synopsis = "Pig parser in haskell.";
      description = "Parser and pretty printer for the Apache Pig scripting language (http://pig.apache.org/). The current version is implemented using Parsec parser combinators.";
      buildType = "Simple";
    };
    components = {
      "language-pig" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.pretty-tree)
        ];
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.language-pig)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
          ];
        };
      };
    };
  }