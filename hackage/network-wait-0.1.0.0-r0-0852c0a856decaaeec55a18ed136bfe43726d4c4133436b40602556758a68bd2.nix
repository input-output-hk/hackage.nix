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
      identifier = { name = "network-wait"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2022 Michael B. Gale";
      maintainer = "github@michael-gale.co.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/network-wait#readme";
      url = "";
      synopsis = "Lightweight library for waiting on networked services to become available.";
      description = "Please see the README on GitHub at <https://github.com/mbg/network-wait#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
        ];
        buildable = true;
      };
      tests = {
        "network-wait-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."network-wait" or (errorHandler.buildDepError "network-wait"))
            (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }