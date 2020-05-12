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
      identifier = { name = "benchmark-function"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hawk.alan@gmail.com";
      author = "Alan Hawkins";
      homepage = "xy30.com";
      url = "";
      synopsis = "Test the time it takes to run a haskell function";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }