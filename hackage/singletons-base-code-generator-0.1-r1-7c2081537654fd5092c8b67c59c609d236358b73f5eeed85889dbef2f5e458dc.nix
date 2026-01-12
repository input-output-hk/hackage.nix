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
      specVersion = "3.8";
      identifier = {
        name = "singletons-base-code-generator";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott <ryan.gl.scott@gmail.com>";
      homepage = "http://www.github.com/goldfirere/singletons";
      url = "";
      synopsis = "Code generator for the singletons-base test suite";
      description = "A [@cabal@ code\ngenerator](https://cabal.readthedocs.io/en/stable/cabal-package-description-file.html#pkg-field-test-suite-code-generators)\nused in the test suite for the\n[@singletons-base@](https://hackage.haskell.org/package/singletons-base)\nlibrary.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "singletons-base-code-generator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }