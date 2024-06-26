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
      specVersion = "1.10";
      identifier = { name = "normalize-imports"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kenny Shen <kenny@machinesung.com>";
      author = "";
      homepage = "https://github.com/qoelet/normalize-imports#readme";
      url = "";
      synopsis = "Sort and align Haskell import statements";
      description = "See README at <http://github.com/qoelet/normalize-imports#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "normalize-imports" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }