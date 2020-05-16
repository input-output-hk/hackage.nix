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
      identifier = { name = "net-mqtt-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Dustin Sallings";
      maintainer = "dustin@spy.net";
      author = "Dustin Sallings";
      homepage = "https://github.com/dustin/net-mqtt-lens#readme";
      url = "";
      synopsis = "Optics for net-mqtt";
      description = "Please see the README on GitHub at <https://github.com/dustin/net-mqtt-lens#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."net-mqtt" or (errorHandler.buildDepError "net-mqtt"))
          ];
        buildable = true;
        };
      tests = {
        "net-mqtt-lens-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."net-mqtt" or (errorHandler.buildDepError "net-mqtt"))
            (hsPkgs."net-mqtt-lens" or (errorHandler.buildDepError "net-mqtt-lens"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }