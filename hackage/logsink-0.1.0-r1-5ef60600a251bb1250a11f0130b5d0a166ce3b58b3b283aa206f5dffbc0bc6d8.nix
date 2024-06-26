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
      identifier = { name = "logsink"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) Zalora South East Asia Pte. Ltd";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A logging framework for Haskell";
      description = "A logging framework for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."logging-facade" or (errorHandler.buildDepError "logging-facade"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logsink" or (errorHandler.buildDepError "logsink"))
            (hsPkgs."logging-facade" or (errorHandler.buildDepError "logging-facade"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }