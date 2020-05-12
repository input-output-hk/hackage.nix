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
      specVersion = "1.12";
      identifier = { name = "galois-field"; version = "1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/galois-field#readme";
      url = "";
      synopsis = "Galois field library";
      description = "An efficient implementation of Galois fields used in cryptography research";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "galois-field-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."galois-field" or (errorHandler.buildDepError "galois-field"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "galois-field-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."galois-field" or (errorHandler.buildDepError "galois-field"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      };
    }