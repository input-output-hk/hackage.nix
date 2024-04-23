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
      identifier = { name = "tubes"; version = "0.2.1.0"; };
      license = "GPL-3.0-only";
      copyright = "2015";
      maintainer = "gatlin@niltag.net";
      author = "Gatlin C Johnson";
      homepage = "https://github.com/gatlin/tubes";
      url = "";
      synopsis = "Effectful, iteratee-inspired stream processing based on a\nfree monad.";
      description = "This package provides the @Tube@ monad transformer, allowing any monad\ncomputation to become a stream processing pipeline. A computation of type\n@Tube a b m r@ consumes values of type 'a' and produces values of type\n'b'.\n\n@Tube@s are coroutines which can suspend computation to yield an\nintermediate value or continue execution by requesting an upstream value.\n\nExamples and more information may be found at\n<https://github.com/gatlin/tubes>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
        ];
        buildable = true;
      };
    };
  }