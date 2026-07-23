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
      identifier = { name = "c-expr-dsl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@well-typed.com";
      author = "Well-Typed LLP";
      homepage = "";
      url = "";
      synopsis = "DSL for the language support by c-expr-runtime";
      description = "This library provides the front end for the c-expr DSL: a Parsec-based parser\nthat turns libclang macro tokens into a syntax tree, and a typechecker that\nassigns types to macro expressions according to the rules implemented in\nc-expr-runtime.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."debruijn" or (errorHandler.buildDepError "debruijn"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
        ];
        buildable = true;
      };
      tests = {
        "test-c-expr-dsl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-expr-dsl" or (errorHandler.buildDepError "c-expr-dsl"))
            (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."debruijn" or (errorHandler.buildDepError "debruijn"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
          ];
          buildable = true;
        };
      };
    };
  }