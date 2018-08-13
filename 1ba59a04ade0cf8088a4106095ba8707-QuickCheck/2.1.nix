{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "QuickCheck";
        version = "2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Koen Claessen <koen@cs.chalmers.se>";
      maintainer = "Koen Claessen <koen@cs.chalmers.se>";
      author = "Koen Claessen <koen@cs.chalmers.se>";
      homepage = "http://www.haskell.org/QuickCheck/";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
      buildType = "Simple";
    };
    components = {
      "QuickCheck" = {
        depends  = [
          (hsPkgs.mtl)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.random)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }