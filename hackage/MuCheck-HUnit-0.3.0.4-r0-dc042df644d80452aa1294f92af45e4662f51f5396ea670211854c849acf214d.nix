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
      identifier = { name = "MuCheck-HUnit"; version = "0.3.0.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rahul@gopinath.org";
      author = "Rahul Gopinath <rahul@gopinath.org>";
      homepage = "https://bitbucket.com/osu-testing/mucheck-hunit";
      url = "";
      synopsis = "Automated Mutation Testing for HUnit tests";
      description = "This package contains the test adapter for HUnit tests to use it with MuCheck";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."MuCheck" or (errorHandler.buildDepError "MuCheck"))
        ];
        buildable = true;
      };
      exes = {
        "mucheck-hunit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MuCheck" or (errorHandler.buildDepError "MuCheck"))
          ];
          buildable = true;
        };
      };
    };
  }