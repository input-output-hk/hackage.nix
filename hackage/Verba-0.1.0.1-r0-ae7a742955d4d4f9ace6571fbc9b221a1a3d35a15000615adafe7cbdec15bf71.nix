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
      identifier = { name = "Verba"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tpigarelli@gmail.com";
      author = "Jefffrey";
      homepage = "";
      url = "";
      synopsis = "A solver for the WordBrain game";
      description = "A solver for the WordBrain game";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Verba" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }