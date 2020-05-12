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
      specVersion = "1.8";
      identifier = { name = "hspec-discover"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2012 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Automatically discover and run Hspec tests";
      description = "Documentation is here: <https://github.com/hspec/hspec/blob/master/hspec-discover/README.markdown>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
        buildable = true;
        };
      exes = {
        "hspec-discover" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-shouldbe" or (errorHandler.buildDepError "hspec-shouldbe"))
            ];
          buildable = true;
          };
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec-shouldbe" or (errorHandler.buildDepError "hspec-shouldbe"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            ];
          buildable = true;
          };
        "integration-test-empty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            ];
          buildable = true;
          };
        };
      };
    }