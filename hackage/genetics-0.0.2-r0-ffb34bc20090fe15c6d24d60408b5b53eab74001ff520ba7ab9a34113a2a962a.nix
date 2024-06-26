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
      identifier = { name = "genetics"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.pennebaker@gmail.com";
      author = "Andrew Pennebaker";
      homepage = "";
      url = "";
      synopsis = "A Genetic Algorithm library";
      description = "A Gene typeclass for genetic algorithms";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hellogenetics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          ];
          buildable = true;
        };
      };
    };
  }