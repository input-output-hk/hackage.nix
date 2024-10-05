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
      identifier = { name = "fused-effects-random"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019-2024 Rob Rix";
      maintainer = "robrix@github.com";
      author = "Rob Rix";
      homepage = "https://github.com/fused-effects/fused-effects-random";
      url = "";
      synopsis = "Random number generation for fused-effects.";
      description = "Random number generation as an effect using fused-effects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }