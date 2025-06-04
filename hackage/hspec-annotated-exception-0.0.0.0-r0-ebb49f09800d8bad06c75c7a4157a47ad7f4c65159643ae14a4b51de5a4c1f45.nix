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
      identifier = { name = "hspec-annotated-exception"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Freckle Education";
      author = "";
      homepage = "https://github.com/freckle/hspec-annotated-exception#readme";
      url = "";
      synopsis = "Hspec hook that unwraps test failures from AnnotatedException";
      description = "An hspec hook that lets hspec catch and pretty-print HUnitFailure,\nthe exception that is thrown when a test assertion fails, in the\ncorrect way even if it is wrapped in AnnotatedException.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."annotated-exception" or (errorHandler.buildDepError "annotated-exception"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }