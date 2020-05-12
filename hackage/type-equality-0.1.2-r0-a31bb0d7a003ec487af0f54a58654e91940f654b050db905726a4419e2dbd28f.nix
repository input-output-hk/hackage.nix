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
      specVersion = "1.6";
      identifier = { name = "type-equality"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hesselink@gmail.com";
      author = "Erik Hesselink, Martijn van Steenbergen";
      homepage = "http://github.com/hesselink/type-equality/";
      url = "";
      synopsis = "Type equality, coercion/cast and other operations.";
      description = "In the presence of GADTs, sometimes a proof is\nneeded that two types are equal. This package\ncontains an equality type for this purpose, plus its\nproperties (reflexive, symmetric, transitive) and\nsome useful operations (substitution, congruence,\ncoercion/cast). It also contains a type class for\nproducing equality proofs, providing some form of\ndecidable equality on types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }