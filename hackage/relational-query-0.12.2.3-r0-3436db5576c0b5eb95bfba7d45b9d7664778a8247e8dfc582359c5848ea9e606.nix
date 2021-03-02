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
      identifier = { name = "relational-query"; version = "0.12.2.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2019 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "Typeful, Modular, Relational, algebraic query engine";
      description = "This package contiains typeful relation structure and\nrelational-algebraic query building DSL which can\ntranslate into SQL query.\n\nSupported query features are below:\n\n- Type safe query building\n- Restriction, Join, Aggregation\n- Modularized relations\n- Typed placeholders";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-reify-compat" or (errorHandler.buildDepError "th-reify-compat"))
          (hsPkgs."th-constraint-compat" or (errorHandler.buildDepError "th-constraint-compat"))
          (hsPkgs."product-isomorphic" or (errorHandler.buildDepError "product-isomorphic"))
          (hsPkgs."sql-words" or (errorHandler.buildDepError "sql-words"))
          (hsPkgs."names-th" or (errorHandler.buildDepError "names-th"))
          (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.5")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "sqls" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quickcheck-simple" or (errorHandler.buildDepError "quickcheck-simple"))
            (hsPkgs."product-isomorphic" or (errorHandler.buildDepError "product-isomorphic"))
            (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.5")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = true;
          };
        "sqlsArrow" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quickcheck-simple" or (errorHandler.buildDepError "quickcheck-simple"))
            (hsPkgs."product-isomorphic" or (errorHandler.buildDepError "product-isomorphic"))
            (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.5")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = true;
          };
        };
      };
    }