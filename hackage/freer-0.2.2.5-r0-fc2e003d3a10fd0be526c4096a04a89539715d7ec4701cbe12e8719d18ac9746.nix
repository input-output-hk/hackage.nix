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
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "freer"; version = "0.2.2.5"; };
      license = "BSD-3-Clause";
      copyright = "Allele Dev 2016";
      maintainer = "allele.dev@gmail.com";
      author = "Allele Dev";
      homepage = "https://gitlab.com/queertypes/freer";
      url = "";
      synopsis = "Implementation of the Freer Monad";
      description = "Freer is an implementation of \"Freer Monads, More Extensible\nEffects\"\n\nThe key features of Freer are:\n\n* An efficient effect system for Haskell - as a library!\n\n* Implementations for several common Haskell monad instances:\n\n* Core components for defining your own Effects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."freer" or (errorHandler.buildDepError "freer"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."freer" or (errorHandler.buildDepError "freer"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."freer" or (errorHandler.buildDepError "freer"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            ];
          buildable = true;
          };
        };
      };
    }