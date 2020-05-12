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
      identifier = { name = "merge-bash-history"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Jiri Marsicek";
      maintainer = "jiri.marsicek@gmail.com";
      author = "Jiri Marsicek";
      homepage = "http://github.com/j1r1k/merge-bash-history#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "merge-bash-history" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."merge-bash-history" or (errorHandler.buildDepError "merge-bash-history"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "MergeBashHistory-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."merge-bash-history" or (errorHandler.buildDepError "merge-bash-history"))
            ];
          buildable = true;
          };
        };
      };
    }