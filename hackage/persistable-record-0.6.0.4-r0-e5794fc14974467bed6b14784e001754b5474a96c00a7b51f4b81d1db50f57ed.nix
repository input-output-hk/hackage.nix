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
      identifier = { name = "persistable-record"; version = "0.6.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2017 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "Binding between SQL database values and haskell records.";
      description = "This package contiains types to represent table constraints and\ninterfaces to bind between SQL database values and Haskell records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-data-compat" or (errorHandler.buildDepError "th-data-compat"))
          (hsPkgs."product-isomorphic" or (errorHandler.buildDepError "product-isomorphic"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."names-th" or (errorHandler.buildDepError "names-th"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "nested" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quickcheck-simple" or (errorHandler.buildDepError "quickcheck-simple"))
            (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = true;
          };
        };
      };
    }