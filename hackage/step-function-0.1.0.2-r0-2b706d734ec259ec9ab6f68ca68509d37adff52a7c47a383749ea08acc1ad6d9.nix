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
      specVersion = "1.22";
      identifier = { name = "step-function"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jon.petter.bergman@gmail.com";
      author = "Petter Bergman";
      homepage = "https://github.com/jonpetterbergman/step-function";
      url = "";
      synopsis = "Step functions, staircase functions or piecewise constant functions";
      description = "Step functions, staircase functions or piecewise constant functions.\nImplemented as a default value and a series of transitions. Supports\nmerging two step functions using a supplied merging function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "merge" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."step-function" or (errorHandler.buildDepError "step-function"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."cabal-test-quickcheck" or (errorHandler.buildDepError "cabal-test-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }