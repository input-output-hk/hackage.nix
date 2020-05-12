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
      specVersion = "1.22";
      identifier = { name = "tasty-discover"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2016 Luke Murphy";
      maintainer = "Luke Murphy <lukewm@riseup.net>";
      author = "Luke Murphy <lukewm@riseup.net>";
      homepage = "https://github.com/lwm/tasty-discover/";
      url = "";
      synopsis = "Test discovery for the tasty framework.";
      description = "Test discovery for the tasty framework.\nhttp://tasty-discover.readthedocs.io/en/latest/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
          ];
        buildable = true;
        };
      exes = {
        "tasty-discover" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            ];
          buildable = true;
          };
        };
      };
    }