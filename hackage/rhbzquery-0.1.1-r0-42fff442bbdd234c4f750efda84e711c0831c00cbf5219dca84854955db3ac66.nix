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
      specVersion = "1.18";
      identifier = { name = "rhbzquery"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2020  Jens Petersen <petersen@redhat.com>";
      maintainer = "petersen@redhat.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/rhbzquery";
      url = "";
      synopsis = "Bugzilla query tool";
      description = "A CLI tool for creating bugzilla queries for bugzilla.redhat.com.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rhbzquery" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."config-ini" or (errorHandler.buildDepError "config-ini"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            ];
          buildable = true;
          };
        };
      };
    }