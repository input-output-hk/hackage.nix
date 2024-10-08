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
      identifier = { name = "test-framework-sandbox"; version = "0.0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Benjamin Surma <benjamin.surma@gree.net>";
      author = "Benjamin Surma <benjamin.surma@gree.net>";
      homepage = "http://gree.github.io/haskell-test-sandbox/";
      url = "";
      synopsis = "test-sandbox support for the test-framework package";
      description = "Interfaces the test-sandbox with the test-framework packages to allow writing system tests\nin Haskell in a standard fashion.\n\nThe environment is preserved between test cases. This enables the user, for instance, to start\na process in one test and stop it in another.\n\nUsage examples can be found on the github page:\n<http://gree.github.io/haskell-test-sandbox/>\n\nA full example project is available at:\n<https://git.gree-dev.net/benjamin-surma/flare-tests/>\n\nExtensive documentation is available in the source code itself.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-sandbox" or (errorHandler.buildDepError "test-sandbox"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }