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
      identifier = { name = "fcd"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "faucon.benoit@cegetel.net";
      author = "Benoît Faucon";
      homepage = "https://github.com/Neki/fcd";
      url = "";
      synopsis = "A faster way to navigate directories using the command line.";
      description = "Bookmark directories, then select a bookmark by fuzzy matching. You need to set up a small shell function for this to work properly (see the README).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = {
        "fcd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fcd" or (errorHandler.buildDepError "fcd"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."fcd" or (errorHandler.buildDepError "fcd"))
          ];
          buildable = true;
        };
      };
    };
  }