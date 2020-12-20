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
      specVersion = "2.0";
      identifier = { name = "tasty-hunit-compat"; version = "0.2.0.1"; };
      license = "MPL-2.0";
      copyright = "2020 Tocqueville Group";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell";
      homepage = "https://github.com/serokell/tasty-hunit-compat#readme";
      url = "";
      synopsis = "Integration of `HUnit` with `tasty`.";
      description = "Implements the proper integration between existing `HUnit` package and `tasty` framework.\nThe existing solution in `tasty` defines its own primitives that are not compatible with `HUnit`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
        buildable = true;
        };
      };
    }