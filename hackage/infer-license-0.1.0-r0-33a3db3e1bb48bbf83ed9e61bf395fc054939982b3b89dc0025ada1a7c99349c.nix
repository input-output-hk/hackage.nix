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
      identifier = { name = "infer-license"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2018 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Infer software license from a given license file";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-metrics" or (errorHandler.buildDepError "text-metrics"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."infer-license" or (errorHandler.buildDepError "infer-license"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-metrics" or (errorHandler.buildDepError "text-metrics"))
            ];
          buildable = true;
          };
        };
      };
    }