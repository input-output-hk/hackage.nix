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
      identifier = { name = "Titim"; version = "0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "notjefff@gmail.com";
      author = "Jefffrey";
      homepage = "";
      url = "";
      synopsis = "Game for Lounge Marmelade";
      description = "Game for Lounge Marmelade";
      buildType = "Simple";
    };
    components = {
      exes = {
        "titim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }