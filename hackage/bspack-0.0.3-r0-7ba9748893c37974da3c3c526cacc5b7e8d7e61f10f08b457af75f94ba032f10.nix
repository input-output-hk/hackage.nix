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
      identifier = { name = "bspack"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014 Nicolas DI PRIMA";
      maintainer = "nicolas@di-prima.fr";
      author = "Nicolas DI PRIMA";
      homepage = "https://github.com/NicolasDP/hs-bspack";
      url = "";
      synopsis = "A simple and fast bytestring packer";
      description = "A simple and fast bytestring packer";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."bspack" or (errorHandler.buildDepError "bspack"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-bspack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."bspack" or (errorHandler.buildDepError "bspack"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          ];
          buildable = true;
        };
      };
    };
  }