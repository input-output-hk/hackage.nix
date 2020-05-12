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
      identifier = { name = "euler"; version = "0.3.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "luis@decomputed.com";
      author = "Luis Rodrigues Soares";
      homepage = "https://github.com/decomputed/euler";
      url = "";
      synopsis = "Mathematics utilities for Haskell";
      description = "Mathematics utilities and functions for Haskell, currently aimed at solving problems in Project Euler.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."euler" or (errorHandler.buildDepError "euler"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = true;
          };
        };
      };
    }