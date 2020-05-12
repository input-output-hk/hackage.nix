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
      specVersion = "1.8";
      identifier = { name = "minions"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jhickner@gmail.com";
      author = "Jason Hickner";
      homepage = "http://github.com/jhickner/minions";
      url = "";
      synopsis = "A fast parallel ssh tool";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "minions" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      };
    }