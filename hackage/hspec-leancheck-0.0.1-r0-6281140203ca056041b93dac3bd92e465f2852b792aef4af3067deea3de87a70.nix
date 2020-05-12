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
      specVersion = "1.18";
      identifier = { name = "hspec-leancheck"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/hspec-leancheck#readme";
      url = "";
      synopsis = "LeanCheck support for the Hspec test framework.";
      description = "LeanCheck support for the Hspec test framework.\n\nThis package can be used to incorporate LeanCheck tests into Hspec test\nsuites by means of the @Test.Hspec.LeanCheck.testProperty@ function.\n\nPlease see the Haddock documentation and README for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."hspec-leancheck" or (errorHandler.buildDepError "hspec-leancheck"))
            ];
          buildable = true;
          };
        "should" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."hspec-leancheck" or (errorHandler.buildDepError "hspec-leancheck"))
            ];
          buildable = true;
          };
        };
      };
    }