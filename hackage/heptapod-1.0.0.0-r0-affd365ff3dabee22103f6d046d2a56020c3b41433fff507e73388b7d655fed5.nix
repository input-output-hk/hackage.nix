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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "heptapod"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Generate UUIDv7 values.";
      description = "Heptapod generates UUIDv7 values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
        ];
        buildable = true;
      };
      tests = {
        "heptapod-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."heptapod" or (errorHandler.buildDepError "heptapod"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "heptapod-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."heptapod" or (errorHandler.buildDepError "heptapod"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
      };
    };
  }