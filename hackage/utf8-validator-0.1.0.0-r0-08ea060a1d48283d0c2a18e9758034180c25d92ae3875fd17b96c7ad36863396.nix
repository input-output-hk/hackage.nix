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
      identifier = { name = "utf8-validator"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Edward George";
      maintainer = "edwardgeorge@gmail.com";
      author = "Edward George";
      homepage = "https://github.com/edwardgeorge/utf8-validator#readme";
      url = "";
      synopsis = "Constant-space UTF8 validator for ByteStrings";
      description = "Constant-space UTF8 validator for ByteStrings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "utf8-validator-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."utf8-validator" or (errorHandler.buildDepError "utf8-validator"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "utf8-validator-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."utf8-validator" or (errorHandler.buildDepError "utf8-validator"))
          ];
          buildable = true;
        };
      };
    };
  }