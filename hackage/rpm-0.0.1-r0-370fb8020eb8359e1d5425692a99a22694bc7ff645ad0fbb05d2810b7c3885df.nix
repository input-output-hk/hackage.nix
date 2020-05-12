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
    flags = { tests = false; hpc = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "rpm"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stoltene2@gmail.com";
      author = "Eric Stolten";
      homepage = "";
      url = "";
      synopsis = "Cozy little project to question unruly rpm packages.";
      description = "RPM is a decent system for listing dependencies among packages.  In its simplest form it works quite well.  Dependency management can become troublesome if you have a system that provides numerous packages.  Worse yet, if you provide many packages for many different versions of a software application.  This library aims to provide a rich set of combinators to assert the validity of a collection of RPMs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          ];
        buildable = true;
        };
      exes = {
        "test-rpm" = {
          depends = (pkgs.lib).optionals (!(!flags.tests)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck" or (errorHandler.buildDepError "test-framework-quickcheck"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = if !flags.tests then false else true;
          };
        };
      };
    }