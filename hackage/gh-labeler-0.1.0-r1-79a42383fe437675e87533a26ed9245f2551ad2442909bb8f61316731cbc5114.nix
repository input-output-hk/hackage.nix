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
      identifier = { name = "gh-labeler"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Vincent Hanquez";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez";
      homepage = "https://github.com/vincenthz/gh-labeler#readme";
      url = "";
      synopsis = "Github Standard Labeler";
      description = "Please see the README on Github at <https://github.com/vincenthz/gh-labeler#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gh-labeler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."github" or (errorHandler.buildDepError "github"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }