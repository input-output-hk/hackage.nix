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
      identifier = { name = "funcons-values"; version = "0.1.0.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen and Neil Sculthorpe";
      homepage = "http://plancomps.org";
      url = "";
      synopsis = "Library providing values and operations on values in a fixed universe.";
      description = "The PLanCompS project (<http://plancomps.org>) has developed a component-based approach to formal semantics.\nThe semantics of a language is defined by translating its constructs to combinations\nof `fundamental constructs' called /funcons/.\n\nThis package provides a fixed universe types, values and operations which are lifted to funcons as part of the /funcons-tools/ package (<http://hackage.haskell.org/package/funcons-tools>).\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bv" or (errorHandler.buildDepError "bv"))
          (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }