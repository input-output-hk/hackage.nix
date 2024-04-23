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
      identifier = { name = "fused-effects-lens"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Patrick Thomson";
      maintainer = "patrickt@github.com";
      author = "Patrick Thomson";
      homepage = "https://github.com/fused-effects/fused-effects-lens#readme";
      url = "";
      synopsis = "Monadic lens combinators for fused-effects.";
      description = "Provides combinators for the lens-based manipulation of state and context types provided by the fused-effects library, similar to those provided for mtl-based monad transformers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fused-effects-lens" or (errorHandler.buildDepError "fused-effects-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }