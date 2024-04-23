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
      identifier = { name = "unscramble"; version = "1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joel Taylor <me@joelt.io>,\nDevyn Cairns <devyn.cairns@gmail.com>";
      author = "Joel Taylor, Devyn Cairns";
      homepage = "";
      url = "";
      synopsis = "Solve Boggle-like word games";
      description = "Solve Boggle-like word games";
      buildType = "Simple";
    };
    components = {
      exes = {
        "unscramble" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."stream-fusion" or (errorHandler.buildDepError "stream-fusion"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }