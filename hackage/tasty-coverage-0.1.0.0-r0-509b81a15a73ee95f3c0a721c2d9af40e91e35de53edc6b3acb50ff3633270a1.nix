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
      specVersion = "3.0";
      identifier = { name = "tasty-coverage"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "David Binder, 2023";
      maintainer = "david.binder@uni-tuebingen.de";
      author = "David Binder";
      homepage = "https://github.com/BinderDavid/tasty-coverage";
      url = "";
      synopsis = "Ingredient for tasty which generates per-test coverage reports";
      description = "An ingredient for the tasty testing framework which allows to generate per-test coverage reports.\nFor every test \"foo\" a file \"foo.PASSED.tix\" or \"foo.FAILED.tix\" is generated, depending on whether the test passed or failed. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }