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
      identifier = { name = "setgame"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emertens@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A console interface to the game of Set";
      description = "A console interface to the game of Set";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = {
        "set-game" = {
          depends = [
            (hsPkgs."setgame" or (errorHandler.buildDepError "setgame"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }