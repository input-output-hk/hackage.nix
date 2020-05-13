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
      identifier = { name = "mud"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2017, Thomas Feron";
      maintainer = "thomas.feron@redspline.com";
      author = "Thomas Feron";
      homepage = "";
      url = "";
      synopsis = "Multi-version deployer for web applications";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "mud" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mud" or (errorHandler.buildDepError "mud"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mud" or (errorHandler.buildDepError "mud"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }