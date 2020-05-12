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
      identifier = { name = "ENIG"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 YongJoon Joe";
      maintainer = "developer+ENIG@quietjoon.net";
      author = "YongJoon Joe";
      homepage = "https://github.com/QuietJoon/ENIG#readme";
      url = "";
      synopsis = "Auto Korean conjugator/adjustor/adopter/converter";
      description = "Please see the README on GitHub at <https://github.com/QuietJoon/ENIG#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "ENIG-test" = {
          depends = [
            (hsPkgs."ENIG" or (errorHandler.buildDepError "ENIG"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
            ];
          buildable = true;
          };
        };
      };
    }