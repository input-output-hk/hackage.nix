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
      specVersion = "1.2";
      identifier = { name = "type-unary"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2012 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "https://github.com/conal/type-unary";
      url = "";
      synopsis = "Type-level and typed unary natural numbers, inequality proofs, vectors";
      description = "Type-level and value-typed unary natural numbers, inequality proofs,\nand length-typed vectors. There are probably many of these packages.\nPerhaps consolidate. This one is extracted from Shady.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ty" or (errorHandler.buildDepError "ty"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ];
        buildable = true;
      };
    };
  }