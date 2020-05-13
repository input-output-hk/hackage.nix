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
      identifier = { name = "scanner"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Yuras Shumovich 2016";
      maintainer = "shumovichy@gmail.com";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/scanner";
      url = "";
      synopsis = "Fast non-backtracking incremental combinator parsing for bytestrings";
      description = "Parser combinator library designed to be fast. It doesn't\nsupport backtracking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."scanner" or (errorHandler.buildDepError "scanner"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."scanner" or (errorHandler.buildDepError "scanner"))
            ];
          buildable = true;
          };
        };
      };
    }