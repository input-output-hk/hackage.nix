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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "accelerate-cublas"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/accelerate-cublas/";
      url = "";
      synopsis = "Basic Linear Algebra using native CUBLAS library";
      description = "Basic Linear Algebra using native CUBLAS library.\nCurrently only support for the most basic batched matrix operations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate-arithmetic" or (errorHandler.buildDepError "accelerate-arithmetic"))
          (hsPkgs."accelerate-utility" or (errorHandler.buildDepError "accelerate-utility"))
          (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
          (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."cublas" or (errorHandler.buildDepError "cublas"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      exes = {
        "accelerate-cublas-demo" = {
          depends = [
            (hsPkgs."accelerate-cublas" or (errorHandler.buildDepError "accelerate-cublas"))
            (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate-arithmetic" or (errorHandler.buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or (errorHandler.buildDepError "accelerate-utility"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."cublas" or (errorHandler.buildDepError "cublas"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }