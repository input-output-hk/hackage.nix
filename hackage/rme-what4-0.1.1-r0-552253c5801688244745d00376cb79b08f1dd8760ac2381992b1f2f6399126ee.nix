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
      identifier = { name = "rme-what4"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2025 Galois";
      maintainer = "emertens@galois.com";
      author = "Eric Mertens";
      homepage = "";
      url = "";
      synopsis = "What4 adapter for the RME solver";
      description = "This package provides an adapter for what4 to support\nsolving boolean and bit-vector goals using the RME\nrepresentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."rme" or (errorHandler.buildDepError "rme"))
          (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bv-sized" or (errorHandler.buildDepError "bv-sized"))
        ];
        buildable = true;
      };
    };
  }