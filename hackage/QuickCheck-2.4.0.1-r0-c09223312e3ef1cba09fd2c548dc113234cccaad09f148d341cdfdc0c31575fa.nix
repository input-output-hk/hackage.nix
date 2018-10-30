{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      extensibleexceptions = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "QuickCheck";
        version = "2.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Koen Claessen <koen@chalmers.se>";
      maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "http://code.haskell.org/QuickCheck";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ((([
          (hsPkgs.mtl)
        ] ++ (if flags.extensibleexceptions
          then [
            (hsPkgs.base)
            (hsPkgs.random)
          ]
          else if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.random)
            ]
            else [
              (hsPkgs.base)
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.7" && (compiler.isGhc && compiler.version.lt "6.13")) (hsPkgs.ghc)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.extensible-exceptions)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.12") (hsPkgs.template-haskell);
      };
    };
  }