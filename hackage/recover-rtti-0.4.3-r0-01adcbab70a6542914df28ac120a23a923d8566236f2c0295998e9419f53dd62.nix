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
      identifier = { name = "recover-rtti"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "Juspay Technologies Pvt Ltd, Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Recover run-time type information from the GHC heap";
      description = "The main function in this package is 'classify', which looks\nat the GHC heap to recover type information about arbitrary\nvalues. This makes it possible for example to show any value\n(function 'anythingToString') without having any @Show@\ninstance in scope, though there are other use cases as well.\nFor example, you could use it to define an 'anythingToJSON'\nfunction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "test-recover-rtti" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."recover-rtti" or (errorHandler.buildDepError "recover-rtti"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }