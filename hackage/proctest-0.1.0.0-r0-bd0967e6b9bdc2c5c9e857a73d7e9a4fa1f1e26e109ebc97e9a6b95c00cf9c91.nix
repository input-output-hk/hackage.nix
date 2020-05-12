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
      identifier = { name = "proctest"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2012 Niklas Hambüchen";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen";
      homepage = "https://github.com/nh2/proctest";
      url = "";
      synopsis = "An IO library for testing interactive command line programs";
      description = "An IO library for testing interactive command line programs\n\nProctest aims to simplify interacting with and testing\nterminal programs, providing convenience functions\nfor starting programs and reading their output.\n\nAll blocking operations support timeouts so that misbehaving\nprograms cannot block your test pipeline.\n\nFind more examples and contribute at\n<https://github.com/nh2/proctest>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "example-netcat-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smartcheck" or (errorHandler.buildDepError "smartcheck"))
            ];
          buildable = true;
          };
        };
      };
    }