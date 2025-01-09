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
      identifier = { name = "fused-effects-th"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2020 Patrick Thomson";
      maintainer = "Patrick Thomson <patrickt@github.com>";
      author = "Patrick Thomson";
      homepage = "https://github.com/fused-effects/fused-effects-th";
      url = "";
      synopsis = "Template Haskell helpers for fused-effects.";
      description = "This package provides Template Haskell splices that wrap the smart constructors needed for declaring new effects when using the fused-effects effect system.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "fused-effects-th-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."fused-effects-th" or (errorHandler.buildDepError "fused-effects-th"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }