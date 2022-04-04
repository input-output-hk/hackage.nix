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
      identifier = { name = "dep-t-dynamic"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "A dynamic environment for dependency injection.";
      description = "This library is a companion to \"dep-t\". It provides \"environments\"\ninto which you \ncan register record values parameterized by a monad.\n\nThe environments are dynamically typed in the sense that\nthe types of the contained records\nare not reflected in\nthe type of the environment, and in that \nsearching for a\ncomponent record might fail at runtime if the record\nhasn't been previously inserted.\n\nThe main purpose of the library is to support dependency injection.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."dep-t-advice" or (errorHandler.buildDepError "dep-t-advice"))
            (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
            (hsPkgs."dep-t-dynamic" or (errorHandler.buildDepError "dep-t-dynamic"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "synthetic-callstack-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."dep-t-advice" or (errorHandler.buildDepError "dep-t-advice"))
            (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
            (hsPkgs."dep-t-dynamic" or (errorHandler.buildDepError "dep-t-dynamic"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
            (hsPkgs."dep-t-dynamic" or (errorHandler.buildDepError "dep-t-dynamic"))
            (hsPkgs."dep-t-advice" or (errorHandler.buildDepError "dep-t-advice"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }