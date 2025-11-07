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
      identifier = { name = "rme"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2025 Galois Inc.";
      maintainer = "huffman@galois.com";
      author = "Galois, Inc.";
      homepage = "";
      url = "";
      synopsis = "Reed-Muller Expansion normal form for Boolean Formulas";
      description = "A representation of the Algebraic Normal Form of boolean formulas\nusing the Reed-Muller Expansion.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }