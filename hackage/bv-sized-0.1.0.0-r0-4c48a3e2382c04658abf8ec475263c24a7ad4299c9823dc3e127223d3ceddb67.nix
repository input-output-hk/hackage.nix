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
      identifier = { name = "bv-sized"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "March 2018";
      maintainer = "benselfridge@galois.com";
      author = "Ben Selfridge";
      homepage = "https://github.com/benjaminselfridge/bv-sized";
      url = "";
      synopsis = "a BitVector datatype that is parameterized by the vector width";
      description = "This module defines a width-parameterized 'BitVector' type and various associated\noperations that assume a 2's complement representation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
        ];
        buildable = true;
      };
    };
  }