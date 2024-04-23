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
      identifier = { name = "reheat"; version = "0.1.5"; };
      license = "LicenseRef-GPL";
      copyright = "GPL";
      maintainer = "Ingolf Wagner <palipalo9@gmail.com>";
      author = "Ingolf Wagner";
      homepage = "https://github.com/mrVanDalo/reheat";
      url = "";
      synopsis = "to make notes and reduce impact on idle time on writing other programms.";
      description = "a programm to make notes and reduce impact on idle time on writing other programms.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "reheat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-reheat" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = true;
        };
      };
    };
  }