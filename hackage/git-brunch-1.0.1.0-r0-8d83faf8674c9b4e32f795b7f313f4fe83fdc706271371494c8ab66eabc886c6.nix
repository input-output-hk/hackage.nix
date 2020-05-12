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
      identifier = { name = "git-brunch"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 andys8";
      maintainer = "andys8@users.noreply.github.com";
      author = "andys8";
      homepage = "https://github.com/andys8/git-brunch#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/andys8/git-brunch#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = {
        "git-brunch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."git-brunch" or (errorHandler.buildDepError "git-brunch"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      tests = {
        "git-brunch-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."git-brunch" or (errorHandler.buildDepError "git-brunch"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      };
    }