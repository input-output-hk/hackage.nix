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
      specVersion = "2.2";
      identifier = { name = "step-function"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>, Petter Bergman <jon.petter.bergman@gmail.com>";
      homepage = "https://github.com/jonpetterbergman/step-function";
      url = "";
      synopsis = "Staircase functions or piecewise constant functions";
      description = "Step functions, staircase functions or piecewise constant functions.\nImplemented as a default value and a series of transitions.\nSupports merging two step functions using a supplied merging function.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "merge" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."step-function" or (errorHandler.buildDepError "step-function"))
          ];
          buildable = true;
        };
      };
    };
  }