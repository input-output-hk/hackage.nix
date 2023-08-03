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
      identifier = { name = "lsh"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 floataqq";
      maintainer = "floataqq@gmail.com";
      author = "floataqq";
      homepage = "https://github.com/Floataqq/lsh#readme";
      url = "";
      synopsis = "A simple ls clone with modern, colored formatting";
      description = "Please see the README on GitHub at <https://github.com/Floataqq/lsh#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "lsh-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lsh" or (errorHandler.buildDepError "lsh"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "lsh-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lsh" or (errorHandler.buildDepError "lsh"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }