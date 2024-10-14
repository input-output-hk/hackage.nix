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
      identifier = { name = "predicate-transformers"; version = "0.16.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "edmundnoble@gmail.com";
      author = "Edmund Noble";
      homepage = "";
      url = "";
      synopsis = "A library for writing predicates and transformations over predicates in Haskell";
      description = "This package provides ways to write predicates such that they compose nicely and are easy to debug.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."recover-rtti" or (errorHandler.buildDepError "recover-rtti"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
    };
  }