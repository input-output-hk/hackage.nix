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
      specVersion = "1.24";
      identifier = { name = "rhbzquery"; version = "0.4.5"; };
      license = "GPL-2.0-only";
      copyright = "2020-2025  Jens Petersen <petersen@redhat.com>";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>";
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
            (hsPkgs."simple-prompt" or (errorHandler.buildDepError "simple-prompt"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
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
          build-tools = [
            (hsPkgs.pkgsBuildBuild.rhbzquery.components.exes.rhbzquery or (pkgs.pkgsBuildBuild.rhbzquery or (errorHandler.buildToolDepError "rhbzquery:rhbzquery")))
          ];
          buildable = true;
        };
      };
    };
  }