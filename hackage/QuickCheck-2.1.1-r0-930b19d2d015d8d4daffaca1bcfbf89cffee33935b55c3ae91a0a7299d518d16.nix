{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      splitbase = true;
      extensibleexceptions = true;
      ghciinterruptedexception = true;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "QuickCheck"; version = "2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Koen Claessen <koen@chalmers.se>";
      maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "http://www.cse.chalmers.se/~koen";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (if flags.extensibleexceptions
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ]
          else if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ])) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.7") (if flags.ghciinterruptedexception
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"));
        buildable = true;
        };
      };
    }