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
      identifier = { name = "bv-sized"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Galois Inc., Ben Selfridge March 2018";
      maintainer = "benselfridge@galois.com";
      author = "Ben Selfridge";
      homepage = "https://github.com/GaloisInc/bv-sized";
      url = "";
      synopsis = "a BitVector datatype that is parameterized by the vector width";
      description = "This module defines a width-parameterized 'BitVector' type and various associated\noperations that assume a 2's complement representation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bitwise" or (errorHandler.buildDepError "bitwise"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."panic" or (errorHandler.buildDepError "panic"))
          (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
        ];
        buildable = true;
      };
      tests = {
        "bv-sized-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-sized" or (errorHandler.buildDepError "bv-sized"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }