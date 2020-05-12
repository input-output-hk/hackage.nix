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
      specVersion = "1.6";
      identifier = { name = "hspec-shouldbe"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Convenience wrapper and utilities for hspec";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."test-shouldbe" or (errorHandler.buildDepError "test-shouldbe"))
          ];
        buildable = true;
        };
      };
    }