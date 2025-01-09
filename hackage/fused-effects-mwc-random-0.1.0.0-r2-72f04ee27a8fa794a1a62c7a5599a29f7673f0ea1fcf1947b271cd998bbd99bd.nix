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
      specVersion = "2.4";
      identifier = { name = "fused-effects-mwc-random"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Patrick Thomson";
      maintainer = "patrickt@github.com";
      author = "Patrick Thomson";
      homepage = "https://github.com/fused-effects/fused-effects-mwc-random";
      url = "";
      synopsis = "High-quality random number generation as an effect.";
      description = "This package wraps the mwc-random package and provides a convenient interface to invoke its functions from an effect stack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."fused-effects-mwc-random" or (errorHandler.buildDepError "fused-effects-mwc-random"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."fused-effects-random" or (errorHandler.buildDepError "fused-effects-random"))
            (hsPkgs."fused-effects-mwc-random" or (errorHandler.buildDepError "fused-effects-mwc-random"))
          ];
          buildable = true;
        };
      };
    };
  }