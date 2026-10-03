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
      specVersion = "3.4";
      identifier = { name = "coapplicative"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jcarr250@protonmail.com";
      author = "J. Carr";
      homepage = "";
      url = "";
      synopsis = "Dualizes Applicative: covariant functors which can split and extract.";
      description = "Provides Splittable and Coapplicative classes.\nSplittable functors are oplax monoidal functors over\nEither/Void and support pattern-matching that preserves\nthe context.\nCoapplicatives support this while also having extraction/\ncocartesian costrength. Unlike the situation with cartesian\nstrength, not all functors support this natively.\n\nEvery Comonad can define an instance of Coapplicative,\nbut these need not agree with duplication, and need\nnot be unique due to the non-uniqueness of the costrength.\n\nInstances are provided when they are compatible with\nthe existing Comonad instance.\n\nCredit to Chris McKinlay's profunctor-optics for informing\nthe typeclass structure";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
        ];
        buildable = true;
      };
      tests = {
        "coapplicative-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."coapplicative" or (errorHandler.buildDepError "coapplicative"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }