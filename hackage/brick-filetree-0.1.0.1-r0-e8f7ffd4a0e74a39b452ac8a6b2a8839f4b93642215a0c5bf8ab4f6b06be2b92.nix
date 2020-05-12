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
      specVersion = "1.12";
      identifier = { name = "brick-filetree"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/brick-filetree#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/brick-filetree#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      tests = {
        "brick-filetree-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-filetree" or (errorHandler.buildDepError "brick-filetree"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      };
    }