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
      identifier = { name = "safeint"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Well-Typed LLP";
      maintainer = "Andres Loeh <andres@well-typed.com>";
      author = "Andres Loeh";
      homepage = "";
      url = "";
      synopsis = "overflow-checked Int type";
      description = "Defines a variant of Haskell's Int type that is overflow-checked. If\nan overflow or arithmetic error occurs, a run-time exception is thrown.\n\nCurrently still in an experimental stage. Everything can change.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "TestSafeInt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."safeint" or (errorHandler.buildDepError "safeint"))
            ];
          buildable = true;
          };
        };
      };
    }