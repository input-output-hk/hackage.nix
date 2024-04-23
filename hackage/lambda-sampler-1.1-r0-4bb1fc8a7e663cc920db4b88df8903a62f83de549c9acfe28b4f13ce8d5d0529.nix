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
      identifier = { name = "lambda-sampler"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-17 Maciej Bendkowski";
      maintainer = "Maciej Bendkowski <maciej.bendkowski@tcs.uj.edu.pl>";
      author = "Maciej Bendkowski";
      homepage = "https://github.com/maciej-bendkowski/lambda-sampler";
      url = "";
      synopsis = "Boltzmann sampler utilities for lambda calculus.";
      description = "Uniform generation of plain and closed lambda terms\nin the de Bruijn notation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "lambda-sampler-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."lambda-sampler" or (errorHandler.buildDepError "lambda-sampler"))
          ];
          buildable = true;
        };
      };
    };
  }